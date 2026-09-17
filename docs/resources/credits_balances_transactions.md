# credits_balances_transactions

[All resources](../methods.md)

## list

List credit balance transactions

[API reference](https://sell.app/docs/api/credits/retrieve-a-credit-balance) · Effect: **read**

```ruby
def list(
      customer:,
      credit_product:,
      page: 1,
      limit: 15,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| customer | `Object` | Yes |
| credit_product | `Object` | Yes |
| page | `Object` | No |
| limit | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.credits_balances_transactions.list(
  customer: 42,
  credit_product: 42
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

Documented HTTP responses: 200, 400, 401, 403, 404, 422, 429, 500. See the API reference for field-level validation and consequences.

[Response access, transport controls, pagination, and typed errors](../usage.md)

