# wallet_topups

[All resources](../methods.md)

## create

Create a wallet top-up payment link

[API reference](https://sell.app/docs/api/wallet/create-wallet-top-up) · Effect: **consequential**

```ruby
def create(
      customer:,
      amount_cents:,
      payment_method:,
      custom_payment_method_id: SellApp::OMIT,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| customer | `Object` | Yes |
| amount_cents | `Object` | Yes |
| payment_method | `Object` | Yes |
| custom_payment_method_id | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.wallet_topups.create(
  customer: 42,
  amount_cents: 2500,
  payment_method: "STRIPE",
  request_options: { idempotency_key: "example-mutation-001" }
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

Documented HTTP responses: 201, 400, 401, 403, 404, 409, 422, 429, 500. See the API reference for field-level validation and consequences.

[Response access, transport controls, pagination, and typed errors](../usage.md)

