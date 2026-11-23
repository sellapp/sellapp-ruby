# affiliates_coupon

[All resources](../methods.md)

## get

Retrieve an affiliate coupon

[API reference](https://sell.app/docs/api/affiliates/affiliate-coupon) · Effect: **read**

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

result = client.affiliates_coupon.get(affiliate: 88)
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

## save

Save an affiliate coupon

[API reference](https://sell.app/docs/api/affiliates/affiliate-coupon) · Effect: **consequential**

```ruby
def save(
      affiliate:,
      code: nil,
      type: nil,
      discount: nil,
      store_wide: nil,
      products: nil,
      product_variants: nil,
      limit: SellApp::OMIT,
      expires_at: SellApp::OMIT,
      minimum_amount: SellApp::OMIT,
      applies_to: nil,
      subscription_payments: SellApp::OMIT,
      maximum_discount_amount: SellApp::OMIT,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| affiliate | `Object` | Yes |
| code | `Object` | No |
| type | `Object` | No |
| discount | `Object` | No |
| store_wide | `Object` | No |
| products | `Object` | No |
| product_variants | `Object` | No |
| limit | `Object` | No |
| expires_at | `Object` | No |
| minimum_amount | `Object` | No |
| applies_to | `Object` | No |
| subscription_payments | `Object` | No |
| maximum_discount_amount | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.affiliates_coupon.save(
  affiliate: 88,
  code: "ALEX15",
  type: "PERCENTAGE",
  discount: "15",
  store_wide: true,
  maximum_discount_amount: "20"
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

## disable

Disable an affiliate coupon

[API reference](https://sell.app/docs/api/affiliates/affiliate-coupon) · Effect: **consequential**

```ruby
def disable(
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

result = client.affiliates_coupon.disable(affiliate: 88)
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

