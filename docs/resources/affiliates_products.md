# affiliates_products

[All resources](../methods.md)

## get

Retrieve affiliate products

[API reference](https://sell.app/docs/api/affiliates/affiliate-products) · Effect: **read**

```ruby
def get(
      affiliate:,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| affiliate | `Object` | Yes |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.affiliates_products.get(affiliate: 88)
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

## update

Update affiliate products

[API reference](https://sell.app/docs/api/affiliates/affiliate-products) · Effect: **consequential**

```ruby
def update(
      affiliate:,
      enable_specific_products: nil,
      products: nil,
      replace_products: nil,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| affiliate | `Object` | Yes |
| enable_specific_products | `Object` | No |
| products | `Object` | No |
| replace_products | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.affiliates_products.update(
  affiliate: 88,
  enable_specific_products: true,
  products: [
    { id: 42, enabled: true, commission: { type: "percentage", percentage: "25" } },
    { id: 43, enabled: true, commission: { type: "fixed", amount_usd_cents: 550 } }
  ],
  replace_products: true
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

