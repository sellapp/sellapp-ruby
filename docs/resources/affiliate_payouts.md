# affiliate_payouts

[All resources](../methods.md)

## list

List affiliate payouts

[API reference](https://sell.app/docs/api/affiliates/list-payouts) · Effect: **read**

```ruby
def list(
      affiliate_id: nil,
      status: nil,
      limit: 15,
      page: 1,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| affiliate_id | `Object` | No |
| status | `Object` | No |
| limit | `Object` | No |
| page | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.affiliate_payouts.list
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

Retrieve an affiliate payout

[API reference](https://sell.app/docs/api/affiliates/list-payouts) · Effect: **read**

```ruby
def get(
      payout:,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| payout | `Object` | Yes |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.affiliate_payouts.get(payout: 1)
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

## create

Create an affiliate payout

[API reference](https://sell.app/docs/api/affiliates/create-payout) · Effect: **consequential**

```ruby
def create(
      affiliate:,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| affiliate | `Object` | Yes |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.affiliate_payouts.create(
  affiliate: 1,
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

Documented HTTP responses: 200, 201, 400, 401, 403, 404, 422, 429, 500. See the API reference for field-level validation and consequences.

[Response access, transport controls, pagination, and typed errors](../usage.md)

## update

Update affiliate payout status

[API reference](https://sell.app/docs/api/affiliates/update-payout-status) · Effect: **consequential**

```ruby
def update(
      payout:,
      status:,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| payout | `Object` | Yes |
| status | `Object` | Yes |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.affiliate_payouts.update(
  payout: 1,
  status: "paid"
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

