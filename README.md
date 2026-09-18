# SellApp for Ruby

Bring your SellApp products into a Ruby app, build a checkout, or connect orders
to your existing tools. This SDK is the Ruby library that talks to SellApp's API
and turns its responses into typed Ruby objects.

Let's get one product's name into your terminal first. The entire catalog can
have its moment once the connection works.
Already know the basics? Jump to [configuration](https://github.com/sellapp/sellapp-ruby/blob/main/docs/usage.md#client-configuration) or the
[method index](https://github.com/sellapp/sellapp-ruby/blob/main/docs/methods.md).

## Availability and installation

**Use a local checkout for now.** This is pre-release source for the planned
**0.1.1** release; registry publication and namespace ownership are unconfirmed.
You'll need access to the private
[sellapp-ruby](https://github.com/sellapp/sellapp-ruby) repository.

The gem declares **Ruby 3.1 or newer**; local validation used Ruby 3.2 and CI uses Ruby 3.4.10.
The declared minimum has not yet been separately tested. Use Bundler to resolve dependencies.

Open a terminal in your SDK checkout. Install the dependencies and build the gem:

```sh
bundle install
gem build sellapp.gemspec
```

To use the SDK in your own application, point Bundler to that checkout. Add this
line to your application's Gemfile, replacing the placeholder path:

```ruby
gem "sellapp", path: "/path/to/sellapp-ruby"
```

Then run `bundle install`.

## Your first request

We'll read one product without changing anything in your store. You'll need:

- A secret API key with the `listing` ability, which allows catalog reads.
- Your store slug: for `launch-lab.sell.app`, that's `launch-lab`.

Follow [authentication](https://sell.app/docs/api/authentication) for key setup and
access rules. Keep the key on your server and out of Git.

In a Bash-compatible terminal, run these commands from the SDK checkout after
replacing the key and store. The `export` lines set environment variables so
your Ruby code can read the values without storing secrets in the file.

```sh
export SELLAPP_API_KEY='replace-with-your-key'
export SELLAPP_STORE='launch-lab'
export SELLAPP_API_BASE_URL='https://sell.app/api'
bundle exec ruby examples/first-request.rb
```

This endpoint reads your real store. `SELLAPP_API_BASE_URL` is an example variable
passed explicitly to the client, not a built-in SDK setting. Use `SELLAPP_STORE`
consistently across the API guides.

Here's the complete [first-request.rb](https://github.com/sellapp/sellapp-ruby/blob/main/examples/first-request.rb) you just ran.
It loads the gem, creates a client, and asks the products resource for one item:

```ruby
# frozen_string_literal: true

require "sellapp"

base_url = ENV.fetch("SELLAPP_API_BASE_URL")
raise "Set SELLAPP_API_BASE_URL before running this example" if base_url.empty?

client = SellApp::Client.new(base_url: base_url) # Reads SELLAPP_API_KEY and SELLAPP_STORE.

page = client.products.list(limit: 1)
page.data.each { |product| puts "#{product.id} #{product.title}" }
puts "No products yet. The request worked!" if page.data.empty?
```

You should see an ID and title from your own store. An empty store prints the
success message instead: the connection worked, even if the shelves are bare.

The response's `data` array holds this page's products. Typed `meta` and
`links` objects describe the pages around it.
Response properties use snake_case; date-time properties remain ISO 8601 strings.

## Account access and first-store setup

Create a user-owned key in [API keys](https://sell.app/user/api-tokens), even
before you have a store. Enable `account:read` for identity, store discovery and
permission inspection, and `stores:create` separately for store creation.
Identity, discovery, store detail by ID and creation omit `X-STORE`; permission
inspection and business requests select a store explicitly.

An unrestricted key covers current and future accessible stores. A selected-store
key covers only its fixed list; an empty list covers none. Membership and role
changes still apply. Selected-store keys cannot create stores. Existing keys do
not gain abilities automatically; `*` satisfies the new abilities while retaining
membership, role and restriction checks.

The [account guide](https://sell.app/docs/api/authentication#discover-your-account-before-selecting-a-store)
shows first-store creation, required idempotency keys, and bounded reads across
several stores with partial failures. Creation returns an ID and slug; use the
slug for subsequent product requests. Find your language's methods in the
[resource reference](https://github.com/sellapp/sellapp-ruby/blob/main/docs/methods.md). CLI and MCP connections retain browser OAuth.

## If the request fails

| Result | Next step |
| --- | --- |
| Empty product list | The read succeeded. Create a product when you are ready. |
| 401 | Check the selected credential and whether it has expired or been revoked. |
| 403 | Check the key's listing ability, selected-store restrictions and the account's current store permissions. Official CLI OAuth also requires its active grant. |
| 400 with a missing-store message | Set SELLAPP_STORE to an authorized store slug. |
| 429 | Follow Retry-After and the SDK's documented retry behavior. |

Keep the request ID when reporting an API failure. Never include credentials.

## Three useful next actions

1. [Create and edit a product](https://github.com/sellapp/sellapp-ruby/blob/main/docs/resources/products.md): exact signatures and complete examples.
2. [Read orders or create a checkout](https://github.com/sellapp/sellapp-ruby/blob/main/docs/resources/orders.md): inspect permissions and effects before changing a purchase.
3. [Read more than one page](https://github.com/sellapp/sellapp-ruby/blob/main/docs/usage.md): pagination, request controls, errors, and retry behavior.

## Reference and examples

- [Resource reference](https://github.com/sellapp/sellapp-ruby/blob/main/docs/methods.md)
- [Runnable examples](https://github.com/sellapp/sellapp-ruby/blob/main/examples/README.md)
- [API documentation](https://sell.app/docs/api)

## Support and releases

Find available packages and installation instructions in the [SDK guide](https://sell.app/docs/api/sdks).
[Report an SDK issue](https://github.com/sellapp/sellapp-ruby/issues).
Include the SDK version, runtime version, and a redacted reproduction.
Licensed under [MIT](https://github.com/sellapp/sellapp-ruby/blob/main/LICENSE.txt); see [third-party notices](https://github.com/sellapp/sellapp-ruby/blob/main/NOTICE.txt).
