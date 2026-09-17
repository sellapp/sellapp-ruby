# product_variants_pricing

[All resources](../methods.md)

## replace

Replace product variant pricing

[API reference](https://sell.app/docs/api/product-variants) · Effect: **write**

```ruby
def replace(
      product:,
      variant:,
      pricing:,
      payment_methods:,
      custom_payment_method_ids: nil,
      bulk_discount: nil,
      expected_updated_at: nil,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| product | `Object` | Yes |
| variant | `Object` | Yes |
| pricing | `Object` | Yes |
| payment_methods | `Object` | Yes |
| custom_payment_method_ids | `Object` | No |
| bulk_discount | `Object` | No |
| expected_updated_at | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.product_variants_pricing.replace(
  product: 120,
  variant: 4321,
  pricing: {
    type: "SUBSCRIPTION",
    humble: false,
    price: { price: 1999, currency: "USD" },
    frequency: { value: 1, interval: "MONTH" }
  },
  payment_methods: ["STRIPE"]
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

## update

Partially update product variant pricing

[API reference](https://sell.app/docs/api/product-variants/update-product-variant-pricing) · Effect: **write**

```ruby
def update(
      product:,
      variant:,
      pricing: nil,
      payment_methods: nil,
      custom_payment_method_ids: nil,
      bulk_discount: nil,
      expected_updated_at: nil,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| product | `Object` | Yes |
| variant | `Object` | Yes |
| pricing | `Object` | No |
| payment_methods | `Object` | No |
| custom_payment_method_ids | `Object` | No |
| bulk_discount | `Object` | No |
| expected_updated_at | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.product_variants_pricing.update(
  product: 120,
  variant: 4321,
  pricing: { price: { price: 2499, currency: "USD" } }
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

