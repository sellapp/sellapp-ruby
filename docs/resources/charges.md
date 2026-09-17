# charges

[All resources](../methods.md)

## list

List all charges

[API reference](https://sell.app/docs/api/charges/list-all-charges) · Effect: **read**

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

result = client.charges.list
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

Create a charge

[API reference](https://sell.app/docs/api/charges/create-a-charge) · Effect: **consequential**

```ruby
def create(
      email:,
      return_url:,
      cancel_url: SellApp::OMIT,
      webhook: SellApp::OMIT,
      reference: SellApp::OMIT,
      description: SellApp::OMIT,
      currency: nil,
      total: nil,
      payment_method: nil,
      payment_methods: nil,
      custom_payment_method_id: SellApp::OMIT,
      custom_payment_method_ids: nil,
      use_all_payment_methods: nil,
      deliverable: nil,
      metadata: nil,
      coupon_code: SellApp::OMIT,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| email | `Object` | Yes |
| return_url | `Object` | Yes |
| cancel_url | `Object` | No |
| webhook | `Object` | No |
| reference | `Object` | No |
| description | `Object` | No |
| currency | `Object` | No |
| total | `Object` | No |
| payment_method | `Object` | No |
| payment_methods | `Object` | No |
| custom_payment_method_id | `Object` | No |
| custom_payment_method_ids | `Object` | No |
| use_all_payment_methods | `Object` | No |
| deliverable | `Object` | No |
| metadata | `Object` | No |
| coupon_code | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.charges.create(
  email: "sofia.rivera@example.com",
  return_url: "https://example.com/launch-complete",
  reference: "One more thing launch",
  currency: "USD",
  total: 10000,
  payment_method: "PAYPAL"
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

## get

Retrieve a charge

[API reference](https://sell.app/docs/api/charges/retrieve-a-charge) · Effect: **read**

```ruby
def get(
      charge:,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| charge | `Object` | Yes |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.charges.get(charge: 1)
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

## mark_completed

Mark pending charge completed

[API reference](https://sell.app/docs/api/charges/mark-pending-charge-completed) · Effect: **consequential**

```ruby
def mark_completed(
      charge_id:,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| charge_id | `Object` | Yes |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.charges.mark_completed(charge_id: 1)
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

## mark_voided

Mark pending charge voided

[API reference](https://sell.app/docs/api/charges/mark-pending-charge-voided) · Effect: **consequential**

```ruby
def mark_voided(
      charge_id:,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| charge_id | `Object` | Yes |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.charges.mark_voided(charge_id: 1)
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

