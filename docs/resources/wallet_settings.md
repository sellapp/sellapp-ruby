# wallet_settings

[All resources](../methods.md)

## get

Retrieve wallet settings

[API reference](https://sell.app/docs/api/wallet/wallet-settings) · Effect: **read**

```ruby
def get(request_options: {})
```

| Argument | Native type | Required |
| --- | --- | --- |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.wallet_settings.get
puts result.inspect
```

### Authentication and errors

Supported credential alternatives (each object is one alternative):

```json
[
  {
    "bearerAuth": []
  },
  {
    "oauthAccessToken": [
      "admin"
    ],
    "storeAuth": []
  }
]
```

Documented HTTP responses: 200, 400, 401, 403, 422, 429, 500. See the API reference for field-level validation and consequences.

[Response access, transport controls, pagination, and typed errors](../usage.md)

## replace

Update wallet settings

[API reference](https://sell.app/docs/api/wallet/wallet-settings) · Effect: **consequential**

```ruby
def replace(
      enabled:,
      minimum_top_up_cents:,
      maximum_top_up_cents:,
      expiration_days:,
      payment_methods:,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| enabled | `Object` | Yes |
| minimum_top_up_cents | `Object` | Yes |
| maximum_top_up_cents | `Object` | Yes |
| expiration_days | `Object` | Yes |
| payment_methods | `Object` | Yes |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.wallet_settings.replace(
  enabled: false,
  minimum_top_up_cents: nil,
  maximum_top_up_cents: nil,
  expiration_days: nil,
  payment_methods: []
)
puts result.inspect
```

### Authentication and errors

Supported credential alternatives (each object is one alternative):

```json
[
  {
    "bearerAuth": []
  },
  {
    "oauthAccessToken": [
      "admin"
    ],
    "storeAuth": []
  }
]
```

Documented HTTP responses: 200, 400, 401, 403, 422, 429, 500. See the API reference for field-level validation and consequences.

[Response access, transport controls, pagination, and typed errors](../usage.md)

