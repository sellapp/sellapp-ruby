# affiliate_program

[All resources](../methods.md)

## get

Retrieve affiliate program configuration

[API reference](https://sell.app/docs/api/affiliate-program/retrieve-affiliate-program) · Effect: **read**

```ruby
def get(request_options: {})
```

| Argument | Native type | Required |
| --- | --- | --- |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.affiliate_program.get
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

## replace

Replace affiliate program configuration

[API reference](https://sell.app/docs/api/affiliate-program/replace-affiliate-program) · Effect: **consequential**

```ruby
def replace(
      enabled:,
      settings:,
      products:,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| enabled | `Object` | Yes |
| settings | `Object` | Yes |
| products | `Object` | Yes |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.affiliate_program.replace(
  enabled: true,
  settings: {
    auto_approve_affiliates: false,
    minimum_payout: "25",
    commission: { type: "percentage", amount: "20" },
    referrer_type: "first_referrer",
    tracking_length: 30,
    subscription_commission: true,
    enabled_specific_products: true,
    payout_methods: ["PAYPAL"],
    enable_hub: false
  },
  products: [
    { id: 42, enabled: true, commission: { type: "percentage", percentage: "25" } }
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

Documented HTTP responses: 200, 400, 401, 403, 422, 429, 500. See the API reference for field-level validation and consequences.

[Response access, transport controls, pagination, and typed errors](../usage.md)

## list

List pending affiliate invitations

[API reference](https://sell.app/docs/api/affiliate-program/list-affiliate-invitations) · Effect: **read**

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

result = client.affiliate_program.list
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

## invite

Invite an affiliate

[API reference](https://sell.app/docs/api/affiliate-program/invite-an-affiliate) · Effect: **consequential**

```ruby
def invite(
      email:,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| email | `Object` | Yes |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.affiliate_program.invite(email: "alex.morgan@example.com")
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

