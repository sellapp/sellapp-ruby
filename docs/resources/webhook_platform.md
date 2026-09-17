# webhook_platform

[All resources](../methods.md)

## list_webhook_event_types

List webhook event types

[API reference](https://sell.app/docs/api/events) · Effect: **read**

```ruby
def list_webhook_event_types(request_options: {})
```

| Argument | Native type | Required |
| --- | --- | --- |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.webhook_platform.list_webhook_event_types
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

## list_webhook_deliveries

List webhook deliveries

[API reference](https://sell.app/docs/api/events) · Effect: **read**

```ruby
def list_webhook_deliveries(request_options: {})
```

| Argument | Native type | Required |
| --- | --- | --- |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.webhook_platform.list_webhook_deliveries
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

## get_webhook_delivery

Retrieve a webhook delivery

[API reference](https://sell.app/docs/api/events) · Effect: **read**

```ruby
def get_webhook_delivery(
      delivery:,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| delivery | `Object` | Yes |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.webhook_platform.get_webhook_delivery(delivery: "01992b31-c8bd-75b5-b02d-6ae0aa418940")
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

## replay_webhook_delivery

Replay a webhook delivery

[API reference](https://sell.app/docs/api/events) · Effect: **consequential**

```ruby
def replay_webhook_delivery(
      delivery:,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| delivery | `Object` | Yes |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.webhook_platform.replay_webhook_delivery(
  delivery: "delivery_01K4CUSTOMER",
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

