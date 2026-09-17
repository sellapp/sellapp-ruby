# credits_products

[All resources](../methods.md)

## list

List credits products

[API reference](https://sell.app/docs/api/credits/list-credit-products) · Effect: **read**

```ruby
def list(
      limit: 15,
      page: 1,
      pagination: true,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| limit | `Object` | No |
| page | `Object` | No |
| pagination | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.credits_products.list
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

## create

Create a credits product

[API reference](https://sell.app/docs/api/credits/create-a-credit-product) · Effect: **consequential**

```ruby
def create(
      title:,
      visibility:,
      slug: nil,
      description: SellApp::OMIT,
      section_id: SellApp::OMIT,
      is_draft: nil,
      price_cents: nil,
      currency: nil,
      minimum_purchase_quantity: nil,
      maximum_purchase_quantity: SellApp::OMIT,
      quantity_increment: nil,
      stock: SellApp::OMIT,
      payment_methods: nil,
      rate_tiers: nil,
      expected_updated_at: nil,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| title | `Object` | Yes |
| visibility | `Object` | Yes |
| slug | `Object` | No |
| description | `Object` | No |
| section_id | `Object` | No |
| is_draft | `Object` | No |
| price_cents | `Object` | No |
| currency | `Object` | No |
| minimum_purchase_quantity | `Object` | No |
| maximum_purchase_quantity | `Object` | No |
| quantity_increment | `Object` | No |
| stock | `Object` | No |
| payment_methods | `Object` | No |
| rate_tiers | `Object` | No |
| expected_updated_at | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.credits_products.create(
  title: "Design credits",
  visibility: "HIDDEN",
  price_cents: 1999,
  currency: "USD"
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

Documented HTTP responses: 201, 400, 401, 403, 422, 429, 500. See the API reference for field-level validation and consequences.

[Response access, transport controls, pagination, and typed errors](../usage.md)

## search

Search credits products

[API reference](https://sell.app/docs/api/credits/search-credit-products) · Effect: **read**

```ruby
def search(
      filters: nil,
      sort: nil,
      search: nil,
      includes: nil,
      limit: 15,
      page: 1,
      pagination: true,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| filters | `Object` | No |
| sort | `Object` | No |
| search | `Object` | No |
| includes | `Object` | No |
| limit | `Object` | No |
| page | `Object` | No |
| pagination | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.credits_products.search
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

## get

Retrieve a credits product

[API reference](https://sell.app/docs/api/credits/retrieve-a-credit-product) · Effect: **read**

```ruby
def get(
      credit_product:,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| credit_product | `Object` | Yes |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.credits_products.get(credit_product: 1)
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

## replace

Replace a credits product

[API reference](https://sell.app/docs/api/credits/replace-a-credit-product) · Effect: **consequential**

```ruby
def replace(
      credit_product:,
      title: nil,
      slug: nil,
      description: nil,
      visibility: nil,
      section_id: SellApp::OMIT,
      is_draft: nil,
      price_cents: nil,
      currency: nil,
      minimum_purchase_quantity: nil,
      maximum_purchase_quantity: SellApp::OMIT,
      quantity_increment: nil,
      stock: SellApp::OMIT,
      payment_methods: nil,
      rate_tiers: nil,
      expected_updated_at: nil,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| credit_product | `Object` | Yes |
| title | `Object` | No |
| slug | `Object` | No |
| description | `Object` | No |
| visibility | `Object` | No |
| section_id | `Object` | No |
| is_draft | `Object` | No |
| price_cents | `Object` | No |
| currency | `Object` | No |
| minimum_purchase_quantity | `Object` | No |
| maximum_purchase_quantity | `Object` | No |
| quantity_increment | `Object` | No |
| stock | `Object` | No |
| payment_methods | `Object` | No |
| rate_tiers | `Object` | No |
| expected_updated_at | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.credits_products.replace(
  credit_product: 1,
  title: "Design credits"
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

Update a credits product

[API reference](https://sell.app/docs/api/credits/update-a-credit-product) · Effect: **consequential**

```ruby
def update(
      credit_product:,
      title: nil,
      slug: nil,
      description: nil,
      visibility: nil,
      section_id: SellApp::OMIT,
      is_draft: nil,
      price_cents: nil,
      currency: nil,
      minimum_purchase_quantity: nil,
      maximum_purchase_quantity: SellApp::OMIT,
      quantity_increment: nil,
      stock: SellApp::OMIT,
      payment_methods: nil,
      rate_tiers: nil,
      expected_updated_at: nil,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| credit_product | `Object` | Yes |
| title | `Object` | No |
| slug | `Object` | No |
| description | `Object` | No |
| visibility | `Object` | No |
| section_id | `Object` | No |
| is_draft | `Object` | No |
| price_cents | `Object` | No |
| currency | `Object` | No |
| minimum_purchase_quantity | `Object` | No |
| maximum_purchase_quantity | `Object` | No |
| quantity_increment | `Object` | No |
| stock | `Object` | No |
| payment_methods | `Object` | No |
| rate_tiers | `Object` | No |
| expected_updated_at | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.credits_products.update(
  credit_product: 1,
  title: "Design credits"
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

## delete

Delete a credits product

[API reference](https://sell.app/docs/api/credits/delete-a-credit-product) · Effect: **consequential**

```ruby
def delete(
      credit_product:,
      expected_updated_at: nil,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| credit_product | `Object` | Yes |
| expected_updated_at | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.credits_products.delete(
  credit_product: 1,
  expected_updated_at: "2026-08-24T10:00:00.000000Z"
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

