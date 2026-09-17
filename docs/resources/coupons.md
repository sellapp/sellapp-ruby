# coupons

[All resources](../methods.md)

## list

List all coupons

[API reference](https://sell.app/docs/api/legacy-v1) · Effect: **read**

```ruby
def list(
      limit: 15,
      page: 1,
      with_trashed: false,
      only_trashed: false,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| limit | `Object` | No |
| page | `Object` | No |
| with_trashed | `Object` | No |
| only_trashed | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.coupons.list
puts result.inspect
```

### Authentication and errors

Supported credential alternatives (each object is one alternative):

```json
[
  {
    "bearerAuth": [],
    "storeAuth": []
  }
]
```

Documented HTTP responses: 200, 401, 403, 422, 429, 500. See the API reference for field-level validation and consequences.

[Response access, transport controls, pagination, and typed errors](../usage.md)

## create

Create a coupon

[API reference](https://sell.app/docs/api/legacy-v1) · Effect: **consequential**

```ruby
def create(
      code:,
      type:,
      discount:,
      store_wide:,
      products: nil,
      product_variants: nil,
      limit: SellApp::OMIT,
      expires_at: SellApp::OMIT,
      minimum_amount: SellApp::OMIT,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| code | `Object` | Yes |
| type | `Object` | Yes |
| discount | `Object` | Yes |
| store_wide | `Object` | Yes |
| products | `Object` | No |
| product_variants | `Object` | No |
| limit | `Object` | No |
| expires_at | `Object` | No |
| minimum_amount | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.coupons.create(
  code: "PLAN10",
  type: "PERCENTAGE",
  discount: 10,
  store_wide: false,
  products: [123, 456],
  product_variants: [1001, 1002]
)
puts result.inspect
```

### Authentication and errors

Supported credential alternatives (each object is one alternative):

```json
[
  {
    "bearerAuth": [],
    "storeAuth": []
  }
]
```

Documented HTTP responses: 201, 401, 403, 422, 429, 500. See the API reference for field-level validation and consequences.

[Response access, transport controls, pagination, and typed errors](../usage.md)

## get

Retrieve a coupon

[API reference](https://sell.app/docs/api/legacy-v1) · Effect: **read**

```ruby
def get(
      coupon:,
      with_trashed: false,
      only_trashed: false,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| coupon | `Object` | Yes |
| with_trashed | `Object` | No |
| only_trashed | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.coupons.get(coupon: 1)
puts result.inspect
```

### Authentication and errors

Supported credential alternatives (each object is one alternative):

```json
[
  {
    "bearerAuth": [],
    "storeAuth": []
  }
]
```

Documented HTTP responses: 200, 401, 403, 404, 422, 429, 500. See the API reference for field-level validation and consequences.

[Response access, transport controls, pagination, and typed errors](../usage.md)

## replace

Update a coupon

[API reference](https://sell.app/docs/api/legacy-v1) · Effect: **consequential**

```ruby
def replace(
      coupon:,
      code: nil,
      type: nil,
      discount: nil,
      store_wide: nil,
      products: nil,
      product_variants: nil,
      limit: SellApp::OMIT,
      expires_at: SellApp::OMIT,
      minimum_amount: SellApp::OMIT,
      with_trashed: false,
      only_trashed: false,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| coupon | `Object` | Yes |
| code | `Object` | No |
| type | `Object` | No |
| discount | `Object` | No |
| store_wide | `Object` | No |
| products | `Object` | No |
| product_variants | `Object` | No |
| limit | `Object` | No |
| expires_at | `Object` | No |
| minimum_amount | `Object` | No |
| with_trashed | `Object` | No |
| only_trashed | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.coupons.replace(
  coupon: 1,
  store_wide: false,
  products: [123],
  product_variants: [1001, 1002]
)
puts result.inspect
```

### Authentication and errors

Supported credential alternatives (each object is one alternative):

```json
[
  {
    "bearerAuth": [],
    "storeAuth": []
  }
]
```

Documented HTTP responses: 200, 401, 403, 404, 422, 429, 500. See the API reference for field-level validation and consequences.

[Response access, transport controls, pagination, and typed errors](../usage.md)

## update

Update a coupon

[API reference](https://sell.app/docs/api/legacy-v1) · Effect: **consequential**

```ruby
def update(
      coupon:,
      code: nil,
      type: nil,
      discount: nil,
      store_wide: nil,
      products: nil,
      product_variants: nil,
      limit: SellApp::OMIT,
      expires_at: SellApp::OMIT,
      minimum_amount: SellApp::OMIT,
      with_trashed: false,
      only_trashed: false,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| coupon | `Object` | Yes |
| code | `Object` | No |
| type | `Object` | No |
| discount | `Object` | No |
| store_wide | `Object` | No |
| products | `Object` | No |
| product_variants | `Object` | No |
| limit | `Object` | No |
| expires_at | `Object` | No |
| minimum_amount | `Object` | No |
| with_trashed | `Object` | No |
| only_trashed | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.coupons.update(
  coupon: 1,
  store_wide: false,
  products: [123],
  product_variants: [1001, 1002]
)
puts result.inspect
```

### Authentication and errors

Supported credential alternatives (each object is one alternative):

```json
[
  {
    "bearerAuth": [],
    "storeAuth": []
  }
]
```

Documented HTTP responses: 200, 401, 403, 404, 422, 429, 500. See the API reference for field-level validation and consequences.

[Response access, transport controls, pagination, and typed errors](../usage.md)

## delete

Delete a coupon

[API reference](https://sell.app/docs/api/legacy-v1) · Effect: **consequential**

```ruby
def delete(
      coupon:,
      with_trashed: false,
      only_trashed: false,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| coupon | `Object` | Yes |
| with_trashed | `Object` | No |
| only_trashed | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.coupons.delete(coupon: 1)
puts result.inspect
```

### Authentication and errors

Supported credential alternatives (each object is one alternative):

```json
[
  {
    "bearerAuth": [],
    "storeAuth": []
  }
]
```

Documented HTTP responses: 200, 401, 403, 404, 422, 429, 500. See the API reference for field-level validation and consequences.

[Response access, transport controls, pagination, and typed errors](../usage.md)

## search

Search coupons

[API reference](https://sell.app/docs/api/legacy-v1) · Effect: **read**

```ruby
def search(
      filters: nil,
      sort: nil,
      search: nil,
      includes: nil,
      with_trashed: false,
      only_trashed: false,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| filters | `Object` | No |
| sort | `Object` | No |
| search | `Object` | No |
| includes | `Object` | No |
| with_trashed | `Object` | No |
| only_trashed | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.coupons.search(
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
    "bearerAuth": [],
    "storeAuth": []
  }
]
```

Documented HTTP responses: 200, 401, 403, 422, 429, 500. See the API reference for field-level validation and consequences.

[Response access, transport controls, pagination, and typed errors](../usage.md)

## batch_create

Batch create coupons

[API reference](https://sell.app/docs/api/legacy-v1) · Effect: **consequential**

```ruby
def batch_create(
      resources:,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| resources | `Object` | Yes |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.coupons.batch_create(
  resources: [
    {
      code: "STARTER10",
      type: "PERCENTAGE",
      discount: 10,
      store_wide: false,
      products: [123],
      product_variants: [1001]
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
    "bearerAuth": [],
    "storeAuth": []
  }
]
```

Documented HTTP responses: 200, 201, 401, 403, 422, 429, 500. See the API reference for field-level validation and consequences.

[Response access, transport controls, pagination, and typed errors](../usage.md)

## batch_update

Batch update coupons

[API reference](https://sell.app/docs/api/legacy-v1) · Effect: **consequential**

```ruby
def batch_update(
      resources:,
      with_trashed: false,
      only_trashed: false,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| resources | `Object` | Yes |
| with_trashed | `Object` | No |
| only_trashed | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.coupons.batch_update(
  resources: {
    "1" => { store_wide: false, products: [123], product_variants: [1001, 1002] }
  }
)
puts result.inspect
```

### Authentication and errors

Supported credential alternatives (each object is one alternative):

```json
[
  {
    "bearerAuth": [],
    "storeAuth": []
  }
]
```

Documented HTTP responses: 200, 401, 403, 422, 429, 500. See the API reference for field-level validation and consequences.

[Response access, transport controls, pagination, and typed errors](../usage.md)

## batch_delete

Batch delete coupons

[API reference](https://sell.app/docs/api/legacy-v1) · Effect: **consequential**

```ruby
def batch_delete(
      resources:,
      with_trashed: false,
      only_trashed: false,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| resources | `Object` | Yes |
| with_trashed | `Object` | No |
| only_trashed | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.coupons.batch_delete(resources: [1, 2])
puts result.inspect
```

### Authentication and errors

Supported credential alternatives (each object is one alternative):

```json
[
  {
    "bearerAuth": [],
    "storeAuth": []
  }
]
```

Documented HTTP responses: 200, 401, 403, 422, 429, 500. See the API reference for field-level validation and consequences.

[Response access, transport controls, pagination, and typed errors](../usage.md)

## v2_list_coupons

List all coupons

[API reference](https://sell.app/docs/api/coupons/list-all-coupons) · Effect: **read**

```ruby
def v2_list_coupons(
      limit: 15,
      page: 1,
      with_trashed: false,
      only_trashed: false,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| limit | `Object` | No |
| page | `Object` | No |
| with_trashed | `Object` | No |
| only_trashed | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.coupons.v2_list_coupons
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

## v2_create_coupon

Create a coupon

[API reference](https://sell.app/docs/api/coupons/create-a-coupon) · Effect: **consequential**

```ruby
def v2_create_coupon(
      code:,
      type:,
      discount:,
      store_wide:,
      products: nil,
      product_variants: nil,
      limit: SellApp::OMIT,
      expires_at: SellApp::OMIT,
      minimum_amount: SellApp::OMIT,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| code | `Object` | Yes |
| type | `Object` | Yes |
| discount | `Object` | Yes |
| store_wide | `Object` | Yes |
| products | `Object` | No |
| product_variants | `Object` | No |
| limit | `Object` | No |
| expires_at | `Object` | No |
| minimum_amount | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.coupons.v2_create_coupon(
  code: "PLAN10",
  type: "PERCENTAGE",
  discount: 10,
  store_wide: false,
  products: [123, 456],
  product_variants: [1001, 1002]
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

## v2_search_coupons

Search coupons

[API reference](https://sell.app/docs/api/coupons/search-coupons) · Effect: **read**

```ruby
def v2_search_coupons(
      filters: nil,
      sort: nil,
      search: nil,
      includes: nil,
      with_trashed: false,
      only_trashed: false,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| filters | `Object` | No |
| sort | `Object` | No |
| search | `Object` | No |
| includes | `Object` | No |
| with_trashed | `Object` | No |
| only_trashed | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.coupons.v2_search_coupons(
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

Documented HTTP responses: 200, 400, 401, 403, 422, 429, 500. See the API reference for field-level validation and consequences.

[Response access, transport controls, pagination, and typed errors](../usage.md)

## v2_get_coupon

Retrieve a coupon

[API reference](https://sell.app/docs/api/coupons/retrieve-a-coupon) · Effect: **read**

```ruby
def v2_get_coupon(
      coupon:,
      with_trashed: false,
      only_trashed: false,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| coupon | `Object` | Yes |
| with_trashed | `Object` | No |
| only_trashed | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.coupons.v2_get_coupon(coupon: 1)
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

## v2_replace_coupon

Update a coupon

[API reference](https://sell.app/docs/api/coupons/update-a-coupon) · Effect: **consequential**

```ruby
def v2_replace_coupon(
      coupon:,
      code: nil,
      type: nil,
      discount: nil,
      store_wide: nil,
      products: nil,
      product_variants: nil,
      limit: SellApp::OMIT,
      expires_at: SellApp::OMIT,
      minimum_amount: SellApp::OMIT,
      with_trashed: false,
      only_trashed: false,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| coupon | `Object` | Yes |
| code | `Object` | No |
| type | `Object` | No |
| discount | `Object` | No |
| store_wide | `Object` | No |
| products | `Object` | No |
| product_variants | `Object` | No |
| limit | `Object` | No |
| expires_at | `Object` | No |
| minimum_amount | `Object` | No |
| with_trashed | `Object` | No |
| only_trashed | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.coupons.v2_replace_coupon(
  coupon: 1,
  store_wide: false,
  products: [123],
  product_variants: [1001, 1002]
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

## v2_update_coupon

Update a coupon

[API reference](https://sell.app/docs/api/coupons/update-a-coupon) · Effect: **consequential**

```ruby
def v2_update_coupon(
      coupon:,
      code: nil,
      type: nil,
      discount: nil,
      store_wide: nil,
      products: nil,
      product_variants: nil,
      limit: SellApp::OMIT,
      expires_at: SellApp::OMIT,
      minimum_amount: SellApp::OMIT,
      with_trashed: false,
      only_trashed: false,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| coupon | `Object` | Yes |
| code | `Object` | No |
| type | `Object` | No |
| discount | `Object` | No |
| store_wide | `Object` | No |
| products | `Object` | No |
| product_variants | `Object` | No |
| limit | `Object` | No |
| expires_at | `Object` | No |
| minimum_amount | `Object` | No |
| with_trashed | `Object` | No |
| only_trashed | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.coupons.v2_update_coupon(
  coupon: 1,
  store_wide: false,
  products: [123],
  product_variants: [1001, 1002]
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

## v2_delete_coupon

Delete a coupon

[API reference](https://sell.app/docs/api/coupons/delete-a-coupon) · Effect: **consequential**

```ruby
def v2_delete_coupon(
      coupon:,
      with_trashed: false,
      only_trashed: false,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| coupon | `Object` | Yes |
| with_trashed | `Object` | No |
| only_trashed | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.coupons.v2_delete_coupon(coupon: 1)
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

## v2_batch_create_coupons

Batch create coupons

[API reference](https://sell.app/docs/api/coupons/batch-create-coupons) · Effect: **consequential**

```ruby
def v2_batch_create_coupons(
      resources:,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| resources | `Object` | Yes |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.coupons.v2_batch_create_coupons(
  resources: [
    {
      code: "STARTER10",
      type: "PERCENTAGE",
      discount: 10,
      store_wide: false,
      products: [123],
      product_variants: [1001]
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

Documented HTTP responses: 200, 201, 400, 401, 403, 422, 429, 500. See the API reference for field-level validation and consequences.

[Response access, transport controls, pagination, and typed errors](../usage.md)

## v2_batch_update_coupons

Batch update coupons

[API reference](https://sell.app/docs/api/coupons/batch-update-coupons) · Effect: **consequential**

```ruby
def v2_batch_update_coupons(
      resources:,
      with_trashed: false,
      only_trashed: false,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| resources | `Object` | Yes |
| with_trashed | `Object` | No |
| only_trashed | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.coupons.v2_batch_update_coupons(
  resources: {
    "1" => { store_wide: false, products: [123], product_variants: [1001, 1002] }
  }
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

## v2_batch_delete_coupons

Batch delete coupons

[API reference](https://sell.app/docs/api/coupons/batch-delete-coupons) · Effect: **consequential**

```ruby
def v2_batch_delete_coupons(
      resources:,
      with_trashed: false,
      only_trashed: false,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| resources | `Object` | Yes |
| with_trashed | `Object` | No |
| only_trashed | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.coupons.v2_batch_delete_coupons(resources: [1, 2])
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

