# Ruby usage details

[Back to onboarding](../README.md)

Once the first request works, the next questions tend to be: how do I get the
rest, what went wrong, and is it safe to try again? Here's the Ruby side of each.

## Pagination and response metadata

`limit` sets the page size; `page` chooses which page to fetch.
Product listings accept `limit` (1–100, default 15) and `page` (default 1).
[pagination.rb](../examples/pagination.rb) stops at `page.meta.last_page`, or a 100-page budget. `ListStruct#next_page` validates that response
links retain the configured API origin and operation path before extracting a
positive numeric page. `ListStruct#each` follows pages with item/page budgets,
detects cycles, and propagates every later request failure.

Successful typed responses expose `last_response`, containing `http_status`,
`http_headers`, and `request_id` from the `X-Request-ID` header.

## Errors

Rescue the failures your app knows how to recover from, and keep enough detail
to investigate the rest. A request ID helps identify a particular API request
without logging your key.

`SellApp::ApiError` exposes `type`, `code`, `message`, `status`,
`param`, `request_id`, and `docs_url`. The request ID comes from the body
or, if absent, the `X-Request-ID` header. It may be nil.
`TimeoutError` inherits from `TransportError`; rescue it first when you want
a distinct timeout message. Missing credentials raise `ConfigurationError`.
Invalid JSON raises `SerializationError`; invalid model shapes raise its
`ValidationError` subclass. Keep credentials out of logs.

## Retries, timeouts, and writes

The SDK can send a failed request again automatically. That can smooth over a
brief outage, but a repeat must still be safe for the operation you're calling.

The default is 3 retries after the original request.
GET, HEAD, OPTIONS, PUT, and DELETE are eligible; other verbs require a nonempty
spec-declared idempotency support and a nonempty `Idempotency-Key`.
Eligible requests retry connection failures, timeouts, and HTTP
429, 500, 502, 503, 504.

Backoff starts at 1 second(s), multiplies by
2, and adds up to
50% jitter. Delays, including numeric or
HTTP-date `Retry-After` values, are capped at 30
seconds. The timeout is applied separately to opening and reading each request,
not as an overall deadline; retries and waits increase total elapsed time.

Operations accept a `request_options:` hash. It can set `timeout` (seconds),
`max_retries`, `headers`, `query`, `body`, `idempotency_key`,
`with_response`, and `lifecycle_hook`. To prevent retries for a
particular request, pass `request_options: {max_retries: 0}`.
Multipart uploads are staged incrementally into a replayable temporary stream;
pass a file path to the generated upload method. The request validator expects a string; IO objects are not accepted by that interface.
An idempotency key identifies one intended change to an endpoint that supports
recognizing repeat attempts. The runtime does not generate these keys. Use one
stable key for attempts at
the same intended change only when the endpoint supports idempotency; adding a
header cannot make an arbitrary operation safe to repeat.

See [API idempotency](https://sell.app/docs/api/idempotency) and
[API errors](https://sell.app/docs/api/errors). Omitted optional values and explicit
`nil` can differ for nullable write fields; follow the operation's signature.

## Client configuration

The environment is enough for the first request. To change a setting in your app,
pass keyword arguments to `SellApp::Client.new`. Explicit credentials override
environment values, and both are required before an authenticated request.
The SDK selects credentials per operation. OAuth business calls require a store; OAuth profile, store discovery, and installation requests omit `X-STORE`. Anonymous requests carry no seller credentials.

| Keyword | Default | Meaning |
| --- | --- | --- |
| `api_key` | `SELLAPP_API_KEY` | Secret key without the Bearer prefix |
| `access_token` | None | OAuth token; suppresses the API-key environment fallback |
| `customer_session` | None | Separate customer-portal token; `request_options[:customer_session]` takes precedence |
| `browser_session` | None | Explicit browser cookie for OAuth consent operations |
| `client_id`, `client_secret` | None | Registered confidential-client HTTP Basic credentials; do not also send them in the body |
| `store` | `SELLAPP_STORE` | Store slug |
| `base_url` | `https://sell.app/api` | API base including `/api` |
| `timeout` | `60` | Seconds for each Net::HTTP open/read timeout |
| `max_retries` | `3` | Additional attempts; `0` disables retries |
| `transport` | Net::HTTP adapter | Optional custom transport |

OAuth protocol operations and customer-session creation never retry automatically. After losing a refresh response, authorize again instead of reusing its refresh token. The default transport leaves redirects unfollowed; use response metadata to inspect Location, and use a separate client without credentials for object-storage downloads. Form arrays use bracketed names such as `store_ids[]`.

There is no timeout environment override. Calls are synchronous. The client has
no explicit disposal method; its default transport manages each HTTP request.

## Pages and failures

Have more products to read? The API returns them a page at a time. The
[pagination example](https://github.com/sellapp/sellapp-ruby/blob/main/examples/pagination.rb) requests numbered pages and stops
at a defined limit. Generated list values also support bounded automatic
iteration with `each(max_items:, max_pages:)`; later-page failures are raised.

When a request fails, the [error example](https://github.com/sellapp/sellapp-ruby/blob/main/examples/errors.rb) gives you somewhere
useful to start. It rescues API, timeout, and connection failures and reports
`request_id` when available. Check your key for a 401, permissions for a 403,
and the store slug or resource ID for a 404. Configuration and serialization
failures remain visible to the caller.
