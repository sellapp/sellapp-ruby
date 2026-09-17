# frozen_string_literal: true

require "sellapp"

base_url = ENV.fetch("SELLAPP_API_BASE_URL")
raise "Set SELLAPP_API_BASE_URL before running this example" if base_url.empty?

client = SellApp::Client.new(base_url: base_url) # Reads SELLAPP_API_KEY and SELLAPP_STORE.

# Keep a finite budget, even when the catalog has ambitions.
(1..100).each do |page_number|
  page = client.products.list(limit: 20, page: page_number)
  page.data.each { |product| puts "#{product.id} #{product.title}" }
  last_page = page.meta&.last_page
  break if (last_page && page_number >= last_page)
  raise "Page budget reached; resume from page 101" if page_number == 100
end
