# wallet_bonus_tiers

[All resources](../methods.md)

## list

List wallet bonus tiers

[API reference](https://sell.app/docs/api/wallet/bonus-tiers) · Effect: **read**

```ruby
def list(request_options: {})
```

| Argument | Native type | Required |
| --- | --- | --- |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.wallet_bonus_tiers.list
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

Create a wallet bonus tier

[API reference](https://sell.app/docs/api/wallet/bonus-tiers) · Effect: **consequential**

```ruby
def create(
      minimum_top_up_cents:,
      bonus_kind:,
      fixed_bonus_cents:,
      percent_basis:,
      maximum_bonus_cents:,
      priority:,
      is_active:,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| minimum_top_up_cents | `Object` | Yes |
| bonus_kind | `Object` | Yes |
| fixed_bonus_cents | `Object` | Yes |
| percent_basis | `Object` | Yes |
| maximum_bonus_cents | `Object` | Yes |
| priority | `Object` | Yes |
| is_active | `Object` | Yes |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.wallet_bonus_tiers.create(
  minimum_top_up_cents: 10000,
  bonus_kind: "fixed",
  fixed_bonus_cents: 500,
  percent_basis: nil,
  maximum_bonus_cents: nil,
  priority: 0,
  is_active: false
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

## replace

Update a wallet bonus tier

[API reference](https://sell.app/docs/api/wallet/bonus-tiers) · Effect: **consequential**

```ruby
def replace(
      bonus_tier:,
      minimum_top_up_cents:,
      bonus_kind:,
      fixed_bonus_cents:,
      percent_basis:,
      maximum_bonus_cents:,
      priority:,
      is_active:,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| bonus_tier | `Object` | Yes |
| minimum_top_up_cents | `Object` | Yes |
| bonus_kind | `Object` | Yes |
| fixed_bonus_cents | `Object` | Yes |
| percent_basis | `Object` | Yes |
| maximum_bonus_cents | `Object` | Yes |
| priority | `Object` | Yes |
| is_active | `Object` | Yes |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.wallet_bonus_tiers.replace(
  bonus_tier: 1,
  minimum_top_up_cents: 10000,
  bonus_kind: "fixed",
  fixed_bonus_cents: 500,
  percent_basis: nil,
  maximum_bonus_cents: nil,
  priority: 0,
  is_active: false
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

Update a wallet bonus tier

[API reference](https://sell.app/docs/api/wallet/bonus-tiers) · Effect: **consequential**

```ruby
def update(
      bonus_tier:,
      minimum_top_up_cents: nil,
      bonus_kind: nil,
      fixed_bonus_cents: SellApp::OMIT,
      percent_basis: SellApp::OMIT,
      maximum_bonus_cents: SellApp::OMIT,
      priority: nil,
      is_active: nil,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| bonus_tier | `Object` | Yes |
| minimum_top_up_cents | `Object` | No |
| bonus_kind | `Object` | No |
| fixed_bonus_cents | `Object` | No |
| percent_basis | `Object` | No |
| maximum_bonus_cents | `Object` | No |
| priority | `Object` | No |
| is_active | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.wallet_bonus_tiers.update(
  bonus_tier: 1,
  is_active: false
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

## archive

Archive a wallet bonus tier

[API reference](https://sell.app/docs/api/wallet/bonus-tiers) · Effect: **consequential**

```ruby
def archive(
      bonus_tier:,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| bonus_tier | `Object` | Yes |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.wallet_bonus_tiers.archive(bonus_tier: 1)
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

Restore a wallet bonus tier

[API reference](https://sell.app/docs/api/wallet/bonus-tiers) · Effect: **consequential**

```ruby
def restore(
      bonus_tier:,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| bonus_tier | `Object` | Yes |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.wallet_bonus_tiers.restore(bonus_tier: 1)
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

