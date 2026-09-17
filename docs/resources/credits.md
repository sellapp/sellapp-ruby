# credits

[All resources](../methods.md)

## record

Record a credit transaction

[API reference](https://sell.app/docs/api/credits/record-a-credit-transaction) · Effect: **consequential**

```ruby
def record(
      customer_id:,
      product_id:,
      kind:,
      amount_units:,
      idempotency_key:,
      reason: SellApp::OMIT,
      source_type: SellApp::OMIT,
      source_id: SellApp::OMIT,
      metadata: nil,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| customer_id | `Object` | Yes |
| product_id | `Object` | Yes |
| kind | `Object` | Yes |
| amount_units | `Object` | Yes |
| idempotency_key | `Object` | Yes |
| reason | `Object` | No |
| source_type | `Object` | No |
| source_id | `Object` | No |
| metadata | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.credits.record(
  customer_id: 125,
  product_id: 120,
  kind: "grant",
  amount_units: 1000,
  idempotency_key: "credits-grant-01992a65",
  reason: "Launch cohort allocation"
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

Documented HTTP responses: 200, 201, 400, 401, 403, 422, 429, 500. See the API reference for field-level validation and consequences.

[Response access, transport controls, pagination, and typed errors](../usage.md)

