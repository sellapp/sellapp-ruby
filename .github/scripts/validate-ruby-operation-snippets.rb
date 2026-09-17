require 'json'
require 'sellapp'

ENV['SELLAPP_API_KEY'] = 'documentation-fixture'
%w[ACCESS_TOKEN CUSTOMER_SESSION BROWSER_SESSION].each { |credential| ENV["SELLAPP_#{credential}"] = 'documentation-fixture-credential' }
ENV['SELLAPP_STORE'] = 'launch-lab'
ENV['SELLAPP_API_BASE_URL'] = 'http://127.0.0.1:1/api'
def capture_arguments(**arguments) = arguments
snippets = %w[operation-examples.json operation-variants.json].flat_map { |name| JSON.parse(File.read(File.join(ARGV.fetch(0), 'docs', name))) }
errors = []
snippets.each do |snippet|
  begin
    source = snippet.fetch('content').sub(/\nputs result.inspect\s*\z/, '')
    RubyVM::InstructionSequence.compile(source)
    call = source.match(/result = client\.(\w+)\.(\w+)(?:\(([\s\S]*)\))?\s*\z/)
    raise 'No SDK operation call found' unless call
    scope = binding
    eval(source[0...call.begin(0)], scope)
    method = scope.local_variable_get(:client).public_send(call[1]).method(call[2])
    arguments = eval("capture_arguments(#{call[3]})")
    parameters = method.parameters
    required = parameters.select { |kind, _| kind == :keyreq }.map(&:last)
    missing = required - arguments.keys
    raise "Missing required arguments #{missing.join(', ')}" unless missing.empty?
    unless parameters.any? { |kind, _| kind == :keyrest }
      unknown = arguments.keys - parameters.map(&:last)
      raise "Unknown named arguments #{unknown.join(', ')}" unless unknown.empty?
    end
  rescue StandardError, SyntaxError => error
    errors << "#{snippet['operationId']}: #{error.message}"
  end
end
abort(errors.join("\n")) unless errors.empty?
puts "Compiled and signature-bound #{snippets.length} Ruby examples; no HTTP requests executed."
