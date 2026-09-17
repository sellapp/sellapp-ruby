# promotions

[All resources](../methods.md)

## list

List promotions

[API reference](https://sell.app/docs/api/promotions/list-promotions) · Effect: **read**

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

result = client.promotions.list
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

Create a promotion

[API reference](https://sell.app/docs/api/promotions/create-promotion) · Effect: **consequential**

```ruby
def create(
      name:,
      status:,
      priority:,
      is_stackable:,
      phases:,
      starts_at: SellApp::OMIT,
      ends_at: SellApp::OMIT,
      max_redemptions: SellApp::OMIT,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| name | `Object` | Yes |
| status | `Object` | Yes |
| priority | `Object` | Yes |
| is_stackable | `Object` | Yes |
| phases | `Object` | Yes |
| starts_at | `Object` | No |
| ends_at | `Object` | No |
| max_redemptions | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.promotions.create(
  name: "Ship Week",
  status: "active",
  starts_at: "2026-08-01T00:00:00Z",
  ends_at: "2026-08-08T00:00:00Z",
  priority: 1,
  is_stackable: false,
  max_redemptions: 500,
  phases: [
    {
      discount_type: "percentage",
      discount_value: "20",
      ends_at: "2026-08-04T00:00:00Z",
      max_redemptions: 200,
      minimum_amount: "10"
    },
    {
      discount_type: "fixed",
      discount_value: "5",
      ends_at: nil,
      max_redemptions: nil,
      minimum_amount: "25"
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

Search promotions

[API reference](https://sell.app/docs/api/promotions/search-promotions) · Effect: **read**

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

result = client.promotions.search(
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

## get

Retrieve a promotion

[API reference](https://sell.app/docs/api/promotions/retrieve-promotion) · Effect: **read**

```ruby
def get(
      promotion:,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| promotion | `Object` | Yes |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.promotions.get(promotion: 1)
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

Update a promotion

[API reference](https://sell.app/docs/api/promotions/update-promotion) · Effect: **consequential**

```ruby
def replace(
      promotion:,
      name: nil,
      status: nil,
      starts_at: SellApp::OMIT,
      ends_at: SellApp::OMIT,
      priority: nil,
      is_stackable: nil,
      max_redemptions: SellApp::OMIT,
      phases: nil,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| promotion | `Object` | Yes |
| name | `Object` | No |
| status | `Object` | No |
| starts_at | `Object` | No |
| ends_at | `Object` | No |
| priority | `Object` | No |
| is_stackable | `Object` | No |
| max_redemptions | `Object` | No |
| phases | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.promotions.replace(
  promotion: 1,
  name: "One More Sprint",
  is_stackable: true
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

Update a promotion

[API reference](https://sell.app/docs/api/promotions/update-promotion) · Effect: **consequential**

```ruby
def update(
      promotion:,
      name: nil,
      status: nil,
      starts_at: SellApp::OMIT,
      ends_at: SellApp::OMIT,
      priority: nil,
      is_stackable: nil,
      max_redemptions: SellApp::OMIT,
      phases: nil,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| promotion | `Object` | Yes |
| name | `Object` | No |
| status | `Object` | No |
| starts_at | `Object` | No |
| ends_at | `Object` | No |
| priority | `Object` | No |
| is_stackable | `Object` | No |
| max_redemptions | `Object` | No |
| phases | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.promotions.update(
  promotion: 1,
  name: "One More Sprint",
  is_stackable: true
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

Delete a promotion

[API reference](https://sell.app/docs/api/promotions/delete-promotion) · Effect: **consequential**

```ruby
def delete(
      promotion:,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| promotion | `Object` | Yes |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.promotions.delete(promotion: 1)
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

## restore

Restore a promotion

[API reference](https://sell.app/docs/api/promotions/restore-promotion) · Effect: **consequential**

```ruby
def restore(
      promotion:,
      name:,
      status:,
      priority:,
      is_stackable:,
      phases:,
      starts_at: SellApp::OMIT,
      ends_at: SellApp::OMIT,
      max_redemptions: SellApp::OMIT,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| promotion | `Object` | Yes |
| name | `Object` | Yes |
| status | `Object` | Yes |
| priority | `Object` | Yes |
| is_stackable | `Object` | Yes |
| phases | `Object` | Yes |
| starts_at | `Object` | No |
| ends_at | `Object` | No |
| max_redemptions | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.promotions.restore(
  promotion: 1,
  name: "Ship Week",
  status: "active",
  starts_at: "2026-08-01T00:00:00Z",
  ends_at: "2026-08-08T00:00:00Z",
  priority: 1,
  is_stackable: false,
  max_redemptions: 500,
  phases: [
    {
      discount_type: "percentage",
      discount_value: "20",
      ends_at: "2026-08-04T00:00:00Z",
      max_redemptions: 200,
      minimum_amount: "10"
    },
    {
      discount_type: "fixed",
      discount_value: "5",
      ends_at: nil,
      max_redemptions: nil,
      minimum_amount: "25"
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

Documented HTTP responses: 200, 400, 401, 403, 404, 422, 429, 500. See the API reference for field-level validation and consequences.

[Response access, transport controls, pagination, and typed errors](../usage.md)

