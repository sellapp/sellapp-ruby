# reward_coupon_templates

[All resources](../methods.md)

## list

List reward coupon templates

[API reference](https://sell.app/docs/api/reward-coupon-templates/list-reward-coupon-templates) · Effect: **read**

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

result = client.reward_coupon_templates.list
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

Create a reward coupon template

[API reference](https://sell.app/docs/api/reward-coupon-templates/create-a-reward-coupon-template) · Effect: **consequential**

```ruby
def create(
      name:,
      type:,
      discount:,
      store_wide:,
      redemption_mode:,
      is_active:,
      listing_ids:,
      minimum_amount: SellApp::OMIT,
      maximum_discount_amount: SellApp::OMIT,
      expires_at: SellApp::OMIT,
      expires_after_days: SellApp::OMIT,
      expected_updated_at: nil,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| name | `Object` | Yes |
| type | `Object` | Yes |
| discount | `Object` | Yes |
| store_wide | `Object` | Yes |
| redemption_mode | `Object` | Yes |
| is_active | `Object` | Yes |
| listing_ids | `Object` | Yes |
| minimum_amount | `Object` | No |
| maximum_discount_amount | `Object` | No |
| expires_at | `Object` | No |
| expires_after_days | `Object` | No |
| expected_updated_at | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.reward_coupon_templates.create(
  name: "Launch Lab thank you",
  type: "PERCENTAGE",
  discount: "10.00",
  store_wide: true,
  redemption_mode: "customer_locked",
  is_active: false,
  listing_ids: []
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

Search reward coupon templates

[API reference](https://sell.app/docs/api/reward-coupon-templates/search-reward-coupon-templates) · Effect: **read**

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

result = client.reward_coupon_templates.search(
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

Retrieve a reward coupon template

[API reference](https://sell.app/docs/api/reward-coupon-templates/retrieve-a-reward-coupon-template) · Effect: **read**

```ruby
def get(
      reward_coupon_template:,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| reward_coupon_template | `Object` | Yes |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.reward_coupon_templates.get(reward_coupon_template: 1)
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

Update a reward coupon template

[API reference](https://sell.app/docs/api/reward-coupon-templates/update-a-reward-coupon-template) · Effect: **consequential**

```ruby
def replace(
      reward_coupon_template:,
      name: nil,
      type: nil,
      discount: nil,
      store_wide: nil,
      minimum_amount: SellApp::OMIT,
      maximum_discount_amount: SellApp::OMIT,
      expires_at: SellApp::OMIT,
      expires_after_days: SellApp::OMIT,
      redemption_mode: nil,
      is_active: nil,
      listing_ids: nil,
      expected_updated_at: nil,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| reward_coupon_template | `Object` | Yes |
| name | `Object` | No |
| type | `Object` | No |
| discount | `Object` | No |
| store_wide | `Object` | No |
| minimum_amount | `Object` | No |
| maximum_discount_amount | `Object` | No |
| expires_at | `Object` | No |
| expires_after_days | `Object` | No |
| redemption_mode | `Object` | No |
| is_active | `Object` | No |
| listing_ids | `Object` | No |
| expected_updated_at | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.reward_coupon_templates.replace(
  reward_coupon_template: 1,
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

Documented HTTP responses: 200, 400, 401, 403, 404, 422, 429, 500. See the API reference for field-level validation and consequences.

[Response access, transport controls, pagination, and typed errors](../usage.md)

## update

Update a reward coupon template

[API reference](https://sell.app/docs/api/reward-coupon-templates/update-a-reward-coupon-template) · Effect: **consequential**

```ruby
def update(
      reward_coupon_template:,
      name: nil,
      type: nil,
      discount: nil,
      store_wide: nil,
      minimum_amount: SellApp::OMIT,
      maximum_discount_amount: SellApp::OMIT,
      expires_at: SellApp::OMIT,
      expires_after_days: SellApp::OMIT,
      redemption_mode: nil,
      is_active: nil,
      listing_ids: nil,
      expected_updated_at: nil,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| reward_coupon_template | `Object` | Yes |
| name | `Object` | No |
| type | `Object` | No |
| discount | `Object` | No |
| store_wide | `Object` | No |
| minimum_amount | `Object` | No |
| maximum_discount_amount | `Object` | No |
| expires_at | `Object` | No |
| expires_after_days | `Object` | No |
| redemption_mode | `Object` | No |
| is_active | `Object` | No |
| listing_ids | `Object` | No |
| expected_updated_at | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.reward_coupon_templates.update(
  reward_coupon_template: 1,
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

Documented HTTP responses: 200, 400, 401, 403, 404, 422, 429, 500. See the API reference for field-level validation and consequences.

[Response access, transport controls, pagination, and typed errors](../usage.md)

