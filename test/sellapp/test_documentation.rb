# frozen_string_literal: true

require "test_helper"

class DocumentationTest < Minitest::Test
  ROOT = File.expand_path("../..", __dir__)

  def setup
    @old_env = ENV.to_h.slice("SELLAPP_API_KEY", "SELLAPP_STORE", "SELLAPP_API_BASE_URL")
    ENV["SELLAPP_API_KEY"] = "docs-dummy"
    ENV["SELLAPP_STORE"] = "docs-store"
    ENV["SELLAPP_API_BASE_URL"] = "http://127.0.0.1:54321"
  end

  def teardown
    %w[SELLAPP_API_KEY SELLAPP_STORE SELLAPP_API_BASE_URL].each { |key| ENV[key] = @old_env[key] }
  end

  def response(page: 1, last_page: 1, empty: false)
    product = JSON.parse(File.read(File.join(ROOT, "test/documentation-product.json")))
    product["id"] = page
    {data: empty ? [] : [product], links: {first: "?page=1", last: "?page=#{last_page}", prev: nil, next: page < last_page ? "?page=#{page + 1}" : nil}, meta: {current_page: page, from: 1, last_page: last_page, links: [], path: "http://127.0.0.1:54321/v2/products", per_page: 20, to: 1, total: last_page}}
  end

  def request(query)
    stub_request(:get, "http://127.0.0.1:54321/v2/products")
      .with(query: query, headers: {"Authorization" => "Bearer docs-dummy", "X-STORE" => "docs-store"})
  end

  def run_example(name)
    capture_io { load File.join(ROOT, "examples/#{name}.rb") }
  end

  def test_exact_first_request_and_empty_store
    assert_includes File.read(File.join(ROOT, "README.md")), File.read(File.join(ROOT, "examples/first-request.rb")).strip
    request({"limit" => "1", "page" => "1"}).to_return(body: JSON.generate(response), status: 200)
    assert_includes run_example("first-request").first, "1 Design kit"
    request({"limit" => "1", "page" => "1"}).to_return(body: JSON.generate(response(empty: true)), status: 200)
    assert_includes run_example("first-request").first, "No products yet"
  end

  def test_exact_pagination_and_errors
    first = request({"limit" => "20", "page" => "1"}).to_return(body: JSON.generate(response(page: 1, last_page: 3)), status: 200)
    second = request({"limit" => "20", "page" => "2"}).to_return(body: JSON.generate(response(page: 2, last_page: 3, empty: true)), status: 200)
    third = request({"limit" => "20", "page" => "3"}).to_return(body: JSON.generate(response(page: 3, last_page: 3)), status: 200)
    output = run_example("pagination").first
    assert_includes output, "1 Design kit"
    assert_includes output, "3 Design kit"
    assert_requested first, times: 1
    assert_requested second, times: 1
    assert_requested third, times: 1
    request({"limit" => "1", "page" => "1"}).to_return(status: 401, headers: {"X-Request-ID" => "req-docs"}, body: JSON.generate({code: "unauthenticated", message: "Dummy key rejected"}))
    assert_includes run_example("errors").last, "401 unauthenticated Dummy key rejected req-docs"
  end

  def test_missing_endpoint_fails_before_transport
    ENV.delete("SELLAPP_API_BASE_URL")
    assert_raises(KeyError) { run_example("first-request") }
  end
end
