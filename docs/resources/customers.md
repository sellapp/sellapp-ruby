# customers

[All resources](../methods.md)

## list

List customers

[API reference](https://sell.app/docs/api/customers/list-customers) · Effect: **read**

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

result = client.customers.list
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

## create_customer

Create a customer

[API reference](https://sell.app/docs/api/customers/identity-and-entitlements) · Effect: **consequential**

```ruby
def create_customer(
      email:,
      external_id: nil,
      name: SellApp::OMIT,
      locale: SellApp::OMIT,
      metadata: nil,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| email | `Object` | Yes |
| external_id | `Object` | No |
| name | `Object` | No |
| locale | `Object` | No |
| metadata | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.customers.create_customer(
  external_id: "crm_maya_314",
  email: "maya.chen@example.com",
  name: "Maya Chen",
  locale: "en-GB",
  metadata: { plan: "standard", seats: 3 }
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

Search customers

[API reference](https://sell.app/docs/api/customers/search-customers) · Effect: **read**

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

result = client.customers.search(
  filters: [{ field: "id", operator: "=", value: 125 }],
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

Retrieve a customer

[API reference](https://sell.app/docs/api/customers/retrieve-customer) · Effect: **read**

```ruby
def get(
      customer:,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| customer | `Object` | Yes |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.customers.get(customer: 125)
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

## update_customer

Update a customer

[API reference](https://sell.app/docs/api/customers/identity-and-entitlements) · Effect: **consequential**

```ruby
def update_customer(
      customer:,
      email: nil,
      name: SellApp::OMIT,
      locale: SellApp::OMIT,
      metadata: nil,
      external_id: nil,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| customer | `Object` | Yes |
| email | `Object` | No |
| name | `Object` | No |
| locale | `Object` | No |
| metadata | `Object` | No |
| external_id | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.customers.update_customer(
  customer: 314,
  locale: "en-US"
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

## get_customer_by_external_id

Retrieve a customer by external ID

[API reference](https://sell.app/docs/api/customers/identity-and-entitlements) · Effect: **read**

```ruby
def get_customer_by_external_id(
      external_id:,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| external_id | `Object` | Yes |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.customers.get_customer_by_external_id(external_id: "314")
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

## upsert_by_external_id

Create or update a customer by external ID

[API reference](https://sell.app/docs/api/customers/identity-and-entitlements) · Effect: **consequential**

```ruby
def upsert_by_external_id(
      external_id:,
      email:,
      name: SellApp::OMIT,
      locale: SellApp::OMIT,
      metadata: nil,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| external_id | `Object` | Yes |
| email | `Object` | Yes |
| name | `Object` | No |
| locale | `Object` | No |
| metadata | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.customers.upsert_by_external_id(
  external_id: "crm_maya_314",
  email: "maya.chen@example.com",
  name: "Maya Chen"
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

## update_customer_by_external_id

Update a customer by external ID

[API reference](https://sell.app/docs/api/customers/identity-and-entitlements) · Effect: **consequential**

```ruby
def update_customer_by_external_id(
      external_id:,
      email: nil,
      name: SellApp::OMIT,
      locale: SellApp::OMIT,
      metadata: nil,
      body_external_id: nil,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| external_id | `Object` | Yes |
| email | `Object` | No |
| name | `Object` | No |
| locale | `Object` | No |
| metadata | `Object` | No |
| body_external_id | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.customers.update_customer_by_external_id(
  external_id: "314",
  locale: "en-US"
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

