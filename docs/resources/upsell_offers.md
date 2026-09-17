# upsell_offers

[All resources](../methods.md)

## list

List upsell offers

[API reference](https://sell.app/docs/api/products) · Effect: **read**

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

result = client.upsell_offers.list
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

Create an upsell offer

[API reference](https://sell.app/docs/api/products) · Effect: **consequential**

```ruby
def create(
      name:,
      is_active:,
      source_listing_id:,
      items:,
      description: SellApp::OMIT,
      source_variant_id: SellApp::OMIT,
      minimum_order_total_usd_cents: SellApp::OMIT,
      maximum_order_total_usd_cents: SellApp::OMIT,
      starts_at: SellApp::OMIT,
      ends_at: SellApp::OMIT,
      available_for_days: SellApp::OMIT,
      max_accepts_per_customer: SellApp::OMIT,
      expected_version: nil,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| name | `Object` | Yes |
| is_active | `Object` | Yes |
| source_listing_id | `Object` | Yes |
| items | `Object` | Yes |
| description | `Object` | No |
| source_variant_id | `Object` | No |
| minimum_order_total_usd_cents | `Object` | No |
| maximum_order_total_usd_cents | `Object` | No |
| starts_at | `Object` | No |
| ends_at | `Object` | No |
| available_for_days | `Object` | No |
| max_accepts_per_customer | `Object` | No |
| expected_version | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.upsell_offers.create(
  name: "One More Feature",
  description: "Offer the advanced package with additional resources.",
  is_active: true,
  source_listing_id: 120,
  source_variant_id: 880,
  minimum_order_total_usd_cents: 1000,
  maximum_order_total_usd_cents: 25000,
  available_for_days: 14,
  max_accepts_per_customer: 1,
  items: [
    {
      target_listing_id: 121,
      target_variant_id: 881,
      headline: "Upgrade today",
      description: "Unlock dark mode, webhooks, and the premium launch checklist.",
      discount_type: "percentage",
      discount_value: "15.00",
      maximum_discount_amount: "25.00"
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

Documented HTTP responses: 201, 400, 401, 403, 422, 429, 500. See the API reference for field-level validation and consequences.

[Response access, transport controls, pagination, and typed errors](../usage.md)

## search

Search upsell offers

[API reference](https://sell.app/docs/api/products) · Effect: **read**

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

result = client.upsell_offers.search(
  filters: [{ field: "id", operator: "=", value: 71 }],
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

## get

Retrieve an upsell offer

[API reference](https://sell.app/docs/api/products) · Effect: **read**

```ruby
def get(
      upsell_offer:,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| upsell_offer | `Object` | Yes |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.upsell_offers.get(upsell_offer: 71)
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

Update an upsell offer

[API reference](https://sell.app/docs/api/products) · Effect: **consequential**

```ruby
def replace(
      upsell_offer:,
      expected_version:,
      name: nil,
      description: SellApp::OMIT,
      is_active: nil,
      source_listing_id: nil,
      source_variant_id: SellApp::OMIT,
      minimum_order_total_usd_cents: SellApp::OMIT,
      maximum_order_total_usd_cents: SellApp::OMIT,
      starts_at: SellApp::OMIT,
      ends_at: SellApp::OMIT,
      available_for_days: SellApp::OMIT,
      max_accepts_per_customer: SellApp::OMIT,
      items: nil,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| upsell_offer | `Object` | Yes |
| expected_version | `Object` | Yes |
| name | `Object` | No |
| description | `Object` | No |
| is_active | `Object` | No |
| source_listing_id | `Object` | No |
| source_variant_id | `Object` | No |
| minimum_order_total_usd_cents | `Object` | No |
| maximum_order_total_usd_cents | `Object` | No |
| starts_at | `Object` | No |
| ends_at | `Object` | No |
| available_for_days | `Object` | No |
| max_accepts_per_customer | `Object` | No |
| items | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.upsell_offers.replace(
  upsell_offer: 71,
  name: "One More Feature 2.0",
  is_active: false,
  expected_version: 1
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

Update an upsell offer

[API reference](https://sell.app/docs/api/products) · Effect: **consequential**

```ruby
def update(
      upsell_offer:,
      expected_version:,
      name: nil,
      description: SellApp::OMIT,
      is_active: nil,
      source_listing_id: nil,
      source_variant_id: SellApp::OMIT,
      minimum_order_total_usd_cents: SellApp::OMIT,
      maximum_order_total_usd_cents: SellApp::OMIT,
      starts_at: SellApp::OMIT,
      ends_at: SellApp::OMIT,
      available_for_days: SellApp::OMIT,
      max_accepts_per_customer: SellApp::OMIT,
      items: nil,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| upsell_offer | `Object` | Yes |
| expected_version | `Object` | Yes |
| name | `Object` | No |
| description | `Object` | No |
| is_active | `Object` | No |
| source_listing_id | `Object` | No |
| source_variant_id | `Object` | No |
| minimum_order_total_usd_cents | `Object` | No |
| maximum_order_total_usd_cents | `Object` | No |
| starts_at | `Object` | No |
| ends_at | `Object` | No |
| available_for_days | `Object` | No |
| max_accepts_per_customer | `Object` | No |
| items | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.upsell_offers.update(
  upsell_offer: 71,
  name: "One More Feature 2.0",
  is_active: false,
  expected_version: 1
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

Delete an upsell offer

[API reference](https://sell.app/docs/api/products) · Effect: **consequential**

```ruby
def delete(
      upsell_offer:,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| upsell_offer | `Object` | Yes |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.upsell_offers.delete(upsell_offer: 71)
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

