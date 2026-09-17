# events

[All resources](../methods.md)

## list_integration_events

List integration events

[API reference](https://sell.app/docs/api/events) · Effect: **read**

```ruby
def list_integration_events(
      cursor: nil,
      limit: 50,
      type: nil,
      subject_type: nil,
      subject_id: nil,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| cursor | `Object` | No |
| limit | `Object` | No |
| type | `Object` | No |
| subject_type | `Object` | No |
| subject_id | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.events.list_integration_events
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

## list_order_events

List order events

[API reference](https://sell.app/docs/api/events) · Effect: **read**

```ruby
def list_order_events(
      order:,
      cursor: nil,
      limit: 50,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| order | `Object` | Yes |
| cursor | `Object` | No |
| limit | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.events.list_order_events(order: 42)
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

