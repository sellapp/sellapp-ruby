# refunds

[All resources](../methods.md)

## list_refunds

List refunds

[API reference](https://sell.app/docs/api/refunds) · Effect: **read**

```ruby
def list_refunds(
      page: 1,
      limit: 15,
      status: nil,
      provider: nil,
      source: nil,
      refundable_type: nil,
      refundable_id: nil,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| page | `Object` | No |
| limit | `Object` | No |
| status | `Object` | No |
| provider | `Object` | No |
| source | `Object` | No |
| refundable_type | `Object` | No |
| refundable_id | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.refunds.list_refunds
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

Documented HTTP responses: 200, 400, 401, 403, 404, 409, 410, 422, 429, 500. See the API reference for field-level validation and consequences.

[Response access, transport controls, pagination, and typed errors](../usage.md)

## get_refund

Retrieve a refund

[API reference](https://sell.app/docs/api/refunds) · Effect: **read**

```ruby
def get_refund(
      refund:,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| refund | `Object` | Yes |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.refunds.get_refund(refund: 781)
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

Documented HTTP responses: 200, 400, 401, 403, 404, 409, 410, 422, 429, 500. See the API reference for field-level validation and consequences.

[Response access, transport controls, pagination, and typed errors](../usage.md)

