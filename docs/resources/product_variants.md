# product_variants

[All resources](../methods.md)

## list

List all product variants

[API reference](https://sell.app/docs/api/product-variants/list-all-product-variants) · Effect: **read**

```ruby
def list(
      product:,
      limit: 15,
      page: 1,
      with_drafts: nil,
      only_drafts: nil,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| product | `Object` | Yes |
| limit | `Object` | No |
| page | `Object` | No |
| with_drafts | `Object` | No |
| only_drafts | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.product_variants.list(product: 1)
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

## create

Create a product variant

[API reference](https://sell.app/docs/api/product-variants/create-a-product-variant) · Effect: **write**

```ruby
def create(
      product:,
      title:,
      description:,
      deliverable:,
      pricing:,
      payment_methods:,
      minimum_purchase_quantity: nil,
      maximum_purchase_quantity: SellApp::OMIT,
      bulk_discount: nil,
      other_settings: nil,
      expected_updated_at: nil,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| product | `Object` | Yes |
| title | `Object` | Yes |
| description | `Object` | Yes |
| deliverable | `Object` | Yes |
| pricing | `Object` | Yes |
| payment_methods | `Object` | Yes |
| minimum_purchase_quantity | `Object` | No |
| maximum_purchase_quantity | `Object` | No |
| bulk_discount | `Object` | No |
| other_settings | `Object` | No |
| expected_updated_at | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.product_variants.create(
  product: 120,
  title: "Monthly membership",
  description: "One operating memo each month; access is provisioned by our team.",
  deliverable: {
    types: ["MANUAL"],
    data: { stock: nil, comment: "We will send your reading-room invitation." }
  },
  pricing: { humble: false, price: { price: 1999, currency: "USD" } },
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

Documented HTTP responses: 201, 400, 401, 403, 404, 422, 429, 500. See the API reference for field-level validation and consequences.

[Response access, transport controls, pagination, and typed errors](../usage.md)

## get

Retrieve a product variant

[API reference](https://sell.app/docs/api/product-variants/retrieve-a-product-variant) · Effect: **read**

```ruby
def get(
      product:,
      variant:,
      with_drafts: nil,
      only_drafts: nil,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| product | `Object` | Yes |
| variant | `Object` | Yes |
| with_drafts | `Object` | No |
| only_drafts | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.product_variants.get(
  product: 1,
  variant: 2
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

## replace

Update a product variant with PUT

[API reference](https://sell.app/docs/api/product-variants) · Effect: **write**

```ruby
def replace(
      product:,
      variant:,
      title: nil,
      description: nil,
      deliverable: nil,
      pricing: nil,
      minimum_purchase_quantity: nil,
      maximum_purchase_quantity: SellApp::OMIT,
      bulk_discount: nil,
      payment_methods: nil,
      other_settings: nil,
      expected_updated_at: nil,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| product | `Object` | Yes |
| variant | `Object` | Yes |
| title | `Object` | No |
| description | `Object` | No |
| deliverable | `Object` | No |
| pricing | `Object` | No |
| minimum_purchase_quantity | `Object` | No |
| maximum_purchase_quantity | `Object` | No |
| bulk_discount | `Object` | No |
| payment_methods | `Object` | No |
| other_settings | `Object` | No |
| expected_updated_at | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.product_variants.replace(
  product: 120,
  variant: 4321,
  title: "Monthly membership plus",
  description: "One annotated operating memo and a monthly founder discussion."
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

Update a product variant

[API reference](https://sell.app/docs/api/product-variants/update-a-product-variant) · Effect: **write**

```ruby
def update(
      product:,
      variant:,
      title: nil,
      description: nil,
      deliverable: nil,
      pricing: nil,
      minimum_purchase_quantity: nil,
      maximum_purchase_quantity: SellApp::OMIT,
      bulk_discount: nil,
      payment_methods: nil,
      other_settings: nil,
      expected_updated_at: nil,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| product | `Object` | Yes |
| variant | `Object` | Yes |
| title | `Object` | No |
| description | `Object` | No |
| deliverable | `Object` | No |
| pricing | `Object` | No |
| minimum_purchase_quantity | `Object` | No |
| maximum_purchase_quantity | `Object` | No |
| bulk_discount | `Object` | No |
| payment_methods | `Object` | No |
| other_settings | `Object` | No |
| expected_updated_at | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.product_variants.update(
  product: 120,
  variant: 4321,
  title: "Monthly membership plus",
  description: "One annotated operating memo and a monthly founder discussion."
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

Delete a product variant

[API reference](https://sell.app/docs/api/product-variants/delete-a-product-variant) · Effect: **consequential**

```ruby
def delete(
      product:,
      variant:,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| product | `Object` | Yes |
| variant | `Object` | Yes |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.product_variants.delete(
  product: 1,
  variant: 2
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

## search

Search product variants

[API reference](https://sell.app/docs/api/product-variants/search-product-variants) · Effect: **read**

```ruby
def search(
      product:,
      filters: nil,
      sort: nil,
      search: nil,
      includes: nil,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| product | `Object` | Yes |
| filters | `Object` | No |
| sort | `Object` | No |
| search | `Object` | No |
| includes | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.product_variants.search(
  product: 1,
  filters: [{ field: "id", operator: "=", value: 1 }],
  sort: [{ field: "created_at", direction: "desc" }]
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

## batch_create

Batch create product variants

[API reference](https://sell.app/docs/api/product-variants/batch-create-product-variants) · Effect: **consequential**

```ruby
def batch_create(
      product:,
      resources:,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| product | `Object` | Yes |
| resources | `Object` | Yes |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.product_variants.batch_create(
  product: 1,
  resources: [
    {
      title: "Default",
      description: "Default product variant.",
      deliverable: {
        types: ["TEXT"],
        data: { serials: ["SERIAL-001"], parsingMode: "NEW_LINE", removeDuplicate: true }
      },
      pricing: { humble: false, price: { price: 1000, currency: "USD" } },
      payment_methods: ["PAYPAL"]
    }
  ]
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

Documented HTTP responses: 200, 201, 400, 401, 403, 404, 422, 429, 500. See the API reference for field-level validation and consequences.

[Response access, transport controls, pagination, and typed errors](../usage.md)

## batch_update

Batch update product variants

[API reference](https://sell.app/docs/api/product-variants/batch-update-product-variants) · Effect: **consequential**

```ruby
def batch_update(
      product:,
      resources:,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| product | `Object` | Yes |
| resources | `Object` | Yes |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.product_variants.batch_update(
  product: 1,
  resources: { "1" => { title: "Updated variant" } }
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

## batch_delete

Batch delete product variants

[API reference](https://sell.app/docs/api/product-variants/batch-delete-product-variants) · Effect: **consequential**

```ruby
def batch_delete(
      product:,
      resources:,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| product | `Object` | Yes |
| resources | `Object` | Yes |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.product_variants.batch_delete(
  product: 1,
  resources: [1, 2]
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

