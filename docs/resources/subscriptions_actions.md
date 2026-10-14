# subscriptions_actions

[All resources](../methods.md)

## list

List subscription actions

[API reference](https://sell.app/docs/api/subscriptions/list-subscription-actions) · Effect: **read**

```ruby
def list(
      product_subscription:,
      limit: 15,
      page: 1,
      pagination: true,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| product_subscription | `Object` | Yes |
| limit | `Object` | No |
| page | `Object` | No |
| pagination | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.subscriptions_actions.list(product_subscription: 124)
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

## get

Retrieve a subscription action

[API reference](https://sell.app/docs/api/subscriptions/retrieve-a-subscription-action) · Effect: **read**

```ruby
def get(
      product_subscription:,
      action:,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| product_subscription | `Object` | Yes |
| action | `Object` | Yes |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.subscriptions_actions.get(
  product_subscription: 124,
  action: 4192
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

## dismiss

Dismiss a subscription action

[API reference](https://sell.app/docs/api/subscriptions/dismiss-a-subscription-action) · Effect: **consequential**

```ruby
def dismiss(
      product_subscription:,
      action:,
      note:,
      idempotency_key: SellApp::OMIT,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| product_subscription | `Object` | Yes |
| action | `Object` | Yes |
| note | `Object` | Yes |
| idempotency_key | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.subscriptions_actions.dismiss(
  product_subscription: 124,
  action: 4207,
  note: "Confirmed with the customer that they no longer want the upgrade."
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

