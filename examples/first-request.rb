# frozen_string_literal: true

require "sellapp"

base_url = ENV.fetch("SELLAPP_API_BASE_URL")
raise "Set SELLAPP_API_BASE_URL before running this example" if base_url.empty?

client = SellApp::Client.new(base_url: base_url) # Reads SELLAPP_API_KEY and SELLAPP_STORE.

page = client.products.list(limit: 1)
page.data.each { |product| puts "#{product.id} #{product.title}" }
puts "No products yet. The request worked!" if page.data.empty?
