# Ruby examples

The [connected workflow](../test/sellapp/test_connected_workflow.rb) creates a product and variant, reads and updates the returned product ID, uploads a file, and uses returned variant and order IDs for checkout. It also checks pagination through an empty page, typed failures, and OAuth credential isolation. Run `bundle exec ruby -Itest test/sellapp/test_connected_workflow.rb`. HTTP requests are stubbed with dummy credentials; no requests reach a real store. Real catalog and checkout calls require the documented write permissions and can create customer-visible data or payment workflows; follow each operation’s retry rules.

Three scripts, three useful steps: read one product, fetch more pages, and handle
a failed request. Start with the first; each file is complete on its own.

Run `bundle install` from the SDK checkout, then set the variables in
[onboarding](../README.md#your-first-request):

```sh
bundle exec ruby examples/first-request.rb
bundle exec ruby examples/pagination.rb
bundle exec ruby examples/errors.rb
```

These complete files import the public `sellapp` gem. You may copy them
into any application with the SDK in its bundle. Every request is read-only.
An explicit `SELLAPP_API_BASE_URL` is required; missing configuration never
silently selects production. The error example reports a failure if one occurs;
adapt its reporting to your application's exception or exit-status policy.

To check the examples without contacting your store, run `bundle exec rake test`.
It executes the exact files with localhost HTTP stubs (local API responses) and
dummy credentials, checking product access, an empty store, two pages, and a 401 request ID.
