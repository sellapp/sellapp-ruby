# orders

[All resources](../methods.md)

## list

List orders

[API reference](https://sell.app/docs/api/orders/list-orders) · Effect: **read**

```ruby
def list(
      limit: 15,
      page: 1,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| limit | `Object` | No |
| page | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.orders.list
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

Create an order

[API reference](https://sell.app/docs/api/orders/create-and-operate) · Effect: **consequential**

```ruby
def create(
      customer_email:,
      payment_method:,
      product_variants:,
      customer_ip: SellApp::OMIT,
      coupon: nil,
      vat_id: nil,
      country: nil,
      affiliate: SellApp::OMIT,
      extra: nil,
      custom_payment_method_id: SellApp::OMIT,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| customer_email | `Object` | Yes |
| payment_method | `Object` | Yes |
| product_variants | `Object` | Yes |
| customer_ip | `Object` | No |
| coupon | `Object` | No |
| vat_id | `Object` | No |
| country | `Object` | No |
| affiliate | `Object` | No |
| extra | `Object` | No |
| custom_payment_method_id | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.orders.create(
  customer_email: "maya@example.com",
  payment_method: "STRIPE",
  product_variants: { "4321" => { quantity: 1 } },
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

Documented HTTP responses: 201, 400, 401, 403, 404, 409, 410, 422, 429, 500. See the API reference for field-level validation and consequences.

[Response access, transport controls, pagination, and typed errors](../usage.md)

## search

Search orders

[API reference](https://sell.app/docs/api/orders/search-orders) · Effect: **read**

```ruby
def search(
      filters: nil,
      sort: nil,
      pagination: nil,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| filters | `Object` | No |
| sort | `Object` | No |
| pagination | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.orders.search(
  filters: [
    { field: "transaction_id", operator: "contains", value: "pi_3Example" },
    { field: "status", operator: "in", value: ["COMPLETED"] }
  ],
  sort: [{ field: "created_at", direction: "desc" }],
  pagination: { page: 1, limit: 25 }
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

## get

Retrieve an order

[API reference](https://sell.app/docs/api/orders/retrieve-an-order) · Effect: **read**

```ruby
def get(
      order:,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| order | `Object` | Yes |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.orders.get(order: 1042)
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

## update_status

Update order status

[API reference](https://sell.app/docs/api/orders/create-and-operate) · Effect: **consequential**

```ruby
def update_status(
      order:,
      status:,
      expected_status: SellApp::OMIT,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| order | `Object` | Yes |
| status | `Object` | Yes |
| expected_status | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.orders.update_status(
  order: 9001,
  status: "COMPLETED",
  expected_status: "PAID",
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

Documented HTTP responses: 200, 400, 401, 403, 404, 409, 410, 422, 429, 500. See the API reference for field-level validation and consequences.

[Response access, transport controls, pagination, and typed errors](../usage.md)

## create_checkout

Create order checkout

[API reference](https://sell.app/docs/api/orders/create-and-operate) · Effect: **consequential**

```ruby
def create_checkout(
      order:,
      expected_status: SellApp::OMIT,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| order | `Object` | Yes |
| expected_status | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.orders.create_checkout(
  order: 9001,
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

Documented HTTP responses: 200, 201, 400, 401, 403, 404, 409, 410, 422, 429, 500. See the API reference for field-level validation and consequences.

[Response access, transport controls, pagination, and typed errors](../usage.md)

## create_replacement

Issue replacements

[API reference](https://sell.app/docs/api/orders/create-and-operate) · Effect: **consequential**

```ruby
def create_replacement(
      order:,
      product_variants:,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| order | `Object` | Yes |
| product_variants | `Object` | Yes |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.orders.create_replacement(
  order: 9001,
  product_variants: [4321],
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

Documented HTTP responses: 200, 400, 401, 403, 404, 409, 410, 422, 429, 500. See the API reference for field-level validation and consequences.

[Response access, transport controls, pagination, and typed errors](../usage.md)

## create_refund

Refund an order

[API reference](https://sell.app/docs/api/orders/create-and-operate) · Effect: **consequential**

```ruby
def create_refund(
      order:,
      amount: SellApp::OMIT,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| order | `Object` | Yes |
| amount | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.orders.create_refund(
  order: 9001,
  amount: "5.00",
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

Documented HTTP responses: 200, 400, 401, 403, 404, 409, 410, 422, 429, 500. See the API reference for field-level validation and consequences.

[Response access, transport controls, pagination, and typed errors](../usage.md)

## retry_fulfillment

Retry fulfillment

[API reference](https://sell.app/docs/api/orders/create-and-operate) · Effect: **consequential**

```ruby
def retry_fulfillment(
      order:,
      email: SellApp::OMIT,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| order | `Object` | Yes |
| email | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.orders.retry_fulfillment(
  order: 9001,
  email: "maya@example.com",
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

Documented HTTP responses: 200, 400, 401, 403, 404, 409, 410, 422, 429, 500. See the API reference for field-level validation and consequences.

[Response access, transport controls, pagination, and typed errors](../usage.md)

## retry_dynamic_delivery

Retry dynamic delivery

[API reference](https://sell.app/docs/api/orders/create-and-operate) · Effect: **consequential**

```ruby
def retry_dynamic_delivery(
      order:,
      delivered_product_id:,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| order | `Object` | Yes |
| delivered_product_id | `Object` | Yes |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.orders.retry_dynamic_delivery(
  order: 9001,
  delivered_product_id: 81,
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

Documented HTTP responses: 202, 400, 401, 403, 404, 409, 410, 422, 429, 500. See the API reference for field-level validation and consequences.

[Response access, transport controls, pagination, and typed errors](../usage.md)

## send_fulfillment_notifications

Send fulfillment notifications

[API reference](https://sell.app/docs/api/orders/create-and-operate) · Effect: **consequential**

```ruby
def send_fulfillment_notifications(
      order:,
      email: SellApp::OMIT,
      product_variant_ids: SellApp::OMIT,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| order | `Object` | Yes |
| email | `Object` | No |
| product_variant_ids | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.orders.send_fulfillment_notifications(
  order: 9001,
  email: "maya@example.com",
  product_variant_ids: [4321],
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

Documented HTTP responses: 200, 400, 401, 403, 404, 409, 410, 422, 429, 500. See the API reference for field-level validation and consequences.

[Response access, transport controls, pagination, and typed errors](../usage.md)

## list_deliverables

List order deliverables

[API reference](https://sell.app/docs/api/orders/create-and-operate) · Effect: **read**

```ruby
def list_deliverables(
      order:,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| order | `Object` | Yes |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.orders.list_deliverables(order: 9001)
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

## create_from_wallet

Create and pay an order from a wallet

[API reference](https://sell.app/docs/api/orders/create-and-operate) · Effect: **consequential**

```ruby
def create_from_wallet(
      customer_email:,
      product_variants:,
      customer_ip: SellApp::OMIT,
      coupon: nil,
      vat_id: nil,
      country: nil,
      affiliate: SellApp::OMIT,
      extra: nil,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| customer_email | `Object` | Yes |
| product_variants | `Object` | Yes |
| customer_ip | `Object` | No |
| coupon | `Object` | No |
| vat_id | `Object` | No |
| country | `Object` | No |
| affiliate | `Object` | No |
| extra | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.orders.create_from_wallet(
  customer_email: "maya.chen@example.com",
  country: "US",
  product_variants: { "4321" => { quantity: 1 } },
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

Documented HTTP responses: 201, 400, 401, 403, 404, 422, 429, 500. See the API reference for field-level validation and consequences.

[Response access, transport controls, pagination, and typed errors](../usage.md)

## pay_from_wallet

Pay an existing order from its customer wallet

[API reference](https://sell.app/docs/api/orders/create-and-operate) · Effect: **consequential**

```ruby
def pay_from_wallet(
      order:,
      expected_status: SellApp::OMIT,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| order | `Object` | Yes |
| expected_status | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.orders.pay_from_wallet(
  order: 42,
  expected_status: "PENDING",
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

Documented HTTP responses: 200, 400, 401, 403, 404, 422, 429, 500. See the API reference for field-level validation and consequences.

[Response access, transport controls, pagination, and typed errors](../usage.md)

