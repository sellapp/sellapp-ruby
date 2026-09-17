# frozen_string_literal: true

require "sellapp"

base_url = ENV.fetch("SELLAPP_API_BASE_URL")
raise "Set SELLAPP_API_BASE_URL before running this example" if base_url.empty?

client = SellApp::Client.new(base_url: base_url) # Reads SELLAPP_API_KEY and SELLAPP_STORE.

begin
  page = client.products.list(limit: 1)
  puts "Products on this page: #{page.data.length}"
rescue SellApp::ApiError => error
  warn "#{error.status} #{error.code} #{error.message} #{error.request_id}"
rescue SellApp::TimeoutError => error
  warn "Request timed out: #{error.message}"
rescue SellApp::TransportError => error
  warn "Connection failed: #{error.message}"
end
