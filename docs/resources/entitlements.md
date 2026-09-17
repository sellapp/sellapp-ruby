# entitlements

[All resources](../methods.md)

## list_customer_entitlements

List customer entitlements

[API reference](https://sell.app/docs/api/customers/identity-and-entitlements) · Effect: **read**

```ruby
def list_customer_entitlements(
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

result = client.entitlements.list_customer_entitlements(customer: 42)
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

## list_customer_entitlements_by_external_id

List customer entitlements

[API reference](https://sell.app/docs/api/customers/identity-and-entitlements) · Effect: **read**

```ruby
def list_customer_entitlements_by_external_id(
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

result = client.entitlements.list_customer_entitlements_by_external_id(external_id: "externalId_01K4CUSTOMER")
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

