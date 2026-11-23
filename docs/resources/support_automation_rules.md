# support_automation_rules

[All resources](../methods.md)

## list

List support automation rules

[API reference](https://sell.app/docs/api/support-automation-rules/list-support-automation-rules) · Effect: **read**

```ruby
def list(
      limit: 15,
      page: 1,
      active_state: 'all',
      archive_state: 'current',
      search: nil,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| limit | `Object` | No |
| page | `Object` | No |
| active_state | `Object` | No |
| archive_state | `Object` | No |
| search | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.support_automation_rules.list
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

Create a support automation rule

[API reference](https://sell.app/docs/api/support-automation-rules/create-a-support-automation-rule) · Effect: **consequential**

```ruby
def create(
      name:,
      response_template_id:,
      match_reason_source: SellApp::OMIT,
      match_reason_code: SellApp::OMIT,
      match_product_ids: nil,
      match_customer_filter: SellApp::OMIT,
      history_window: SellApp::OMIT,
      match_min_order_total_cents: SellApp::OMIT,
      match_max_order_total_cents: SellApp::OMIT,
      min_completed_orders: SellApp::OMIT,
      max_completed_orders: SellApp::OMIT,
      min_lifetime_spend_cents: SellApp::OMIT,
      max_lifetime_spend_cents: SellApp::OMIT,
      min_prior_ticket_count: SellApp::OMIT,
      max_prior_ticket_count: SellApp::OMIT,
      min_prior_support_refund_count: SellApp::OMIT,
      max_prior_support_refund_count: SellApp::OMIT,
      min_prior_support_refund_cents: SellApp::OMIT,
      max_prior_support_refund_cents: SellApp::OMIT,
      customer_age_days_min: SellApp::OMIT,
      customer_age_days_max: SellApp::OMIT,
      action_refund_kind: SellApp::OMIT,
      action_refund_percent_basis: SellApp::OMIT,
      action_refund_fixed_cents: SellApp::OMIT,
      action_refund_cap_cents: SellApp::OMIT,
      action_close_outcome: SellApp::OMIT,
      is_active: nil,
      id: nil,
      archived: nil,
      currency: nil,
      created_at: SellApp::OMIT,
      updated_at: SellApp::OMIT,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| name | `Object` | Yes |
| response_template_id | `Object` | Yes |
| match_reason_source | `Object` | No |
| match_reason_code | `Object` | No |
| match_product_ids | `Object` | No |
| match_customer_filter | `Object` | No |
| history_window | `Object` | No |
| match_min_order_total_cents | `Object` | No |
| match_max_order_total_cents | `Object` | No |
| min_completed_orders | `Object` | No |
| max_completed_orders | `Object` | No |
| min_lifetime_spend_cents | `Object` | No |
| max_lifetime_spend_cents | `Object` | No |
| min_prior_ticket_count | `Object` | No |
| max_prior_ticket_count | `Object` | No |
| min_prior_support_refund_count | `Object` | No |
| max_prior_support_refund_count | `Object` | No |
| min_prior_support_refund_cents | `Object` | No |
| max_prior_support_refund_cents | `Object` | No |
| customer_age_days_min | `Object` | No |
| customer_age_days_max | `Object` | No |
| action_refund_kind | `Object` | No |
| action_refund_percent_basis | `Object` | No |
| action_refund_fixed_cents | `Object` | No |
| action_refund_cap_cents | `Object` | No |
| action_close_outcome | `Object` | No |
| is_active | `Object` | No |
| id | `Object` | No |
| archived | `Object` | No |
| currency | `Object` | No |
| created_at | `Object` | No |
| updated_at | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.support_automation_rules.create(
  name: "Expired download links",
  match_reason_source: "store",
  match_reason_code: "download-link-expired",
  match_product_ids: [120],
  match_max_order_total_cents: 5000,
  max_prior_support_refund_count: 0,
  response_template_id: 32,
  action_refund_kind: "partial",
  action_refund_percent_basis: 5000,
  action_refund_cap_cents: 1000,
  action_close_outcome: "refunded_partial"
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

Retrieve a support automation rule

[API reference](https://sell.app/docs/api/support-automation-rules/retrieve-a-support-automation-rule) · Effect: **read**

```ruby
def get(
      support_automation_rule:,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| support_automation_rule | `Object` | Yes |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.support_automation_rules.get(support_automation_rule: 7)
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

Update a support automation rule

[API reference](https://sell.app/docs/api/support-automation-rules/update-a-support-automation-rule) · Effect: **consequential**

```ruby
def replace(
      support_automation_rule:,
      name: nil,
      match_reason_source: SellApp::OMIT,
      match_reason_code: SellApp::OMIT,
      match_product_ids: nil,
      match_customer_filter: SellApp::OMIT,
      history_window: SellApp::OMIT,
      match_min_order_total_cents: SellApp::OMIT,
      match_max_order_total_cents: SellApp::OMIT,
      min_completed_orders: SellApp::OMIT,
      max_completed_orders: SellApp::OMIT,
      min_lifetime_spend_cents: SellApp::OMIT,
      max_lifetime_spend_cents: SellApp::OMIT,
      min_prior_ticket_count: SellApp::OMIT,
      max_prior_ticket_count: SellApp::OMIT,
      min_prior_support_refund_count: SellApp::OMIT,
      max_prior_support_refund_count: SellApp::OMIT,
      min_prior_support_refund_cents: SellApp::OMIT,
      max_prior_support_refund_cents: SellApp::OMIT,
      customer_age_days_min: SellApp::OMIT,
      customer_age_days_max: SellApp::OMIT,
      response_template_id: SellApp::OMIT,
      action_refund_kind: SellApp::OMIT,
      action_refund_percent_basis: SellApp::OMIT,
      action_refund_fixed_cents: SellApp::OMIT,
      action_refund_cap_cents: SellApp::OMIT,
      action_close_outcome: SellApp::OMIT,
      is_active: nil,
      clear: nil,
      expected_updated_at: nil,
      id: nil,
      archived: nil,
      priority: nil,
      currency: nil,
      created_at: SellApp::OMIT,
      updated_at: SellApp::OMIT,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| support_automation_rule | `Object` | Yes |
| name | `Object` | No |
| match_reason_source | `Object` | No |
| match_reason_code | `Object` | No |
| match_product_ids | `Object` | No |
| match_customer_filter | `Object` | No |
| history_window | `Object` | No |
| match_min_order_total_cents | `Object` | No |
| match_max_order_total_cents | `Object` | No |
| min_completed_orders | `Object` | No |
| max_completed_orders | `Object` | No |
| min_lifetime_spend_cents | `Object` | No |
| max_lifetime_spend_cents | `Object` | No |
| min_prior_ticket_count | `Object` | No |
| max_prior_ticket_count | `Object` | No |
| min_prior_support_refund_count | `Object` | No |
| max_prior_support_refund_count | `Object` | No |
| min_prior_support_refund_cents | `Object` | No |
| max_prior_support_refund_cents | `Object` | No |
| customer_age_days_min | `Object` | No |
| customer_age_days_max | `Object` | No |
| response_template_id | `Object` | No |
| action_refund_kind | `Object` | No |
| action_refund_percent_basis | `Object` | No |
| action_refund_fixed_cents | `Object` | No |
| action_refund_cap_cents | `Object` | No |
| action_close_outcome | `Object` | No |
| is_active | `Object` | No |
| clear | `Object` | No |
| expected_updated_at | `Object` | No |
| id | `Object` | No |
| archived | `Object` | No |
| priority | `Object` | No |
| currency | `Object` | No |
| created_at | `Object` | No |
| updated_at | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.support_automation_rules.replace(
  support_automation_rule: 7,
  name: "Expired download links, first refund only",
  clear: ["match_max_order_total_cents"],
  expected_updated_at: "2026-07-03T09:20:00.000000Z"
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

Update a support automation rule

[API reference](https://sell.app/docs/api/support-automation-rules/update-a-support-automation-rule) · Effect: **consequential**

```ruby
def update(
      support_automation_rule:,
      name: nil,
      match_reason_source: SellApp::OMIT,
      match_reason_code: SellApp::OMIT,
      match_product_ids: nil,
      match_customer_filter: SellApp::OMIT,
      history_window: SellApp::OMIT,
      match_min_order_total_cents: SellApp::OMIT,
      match_max_order_total_cents: SellApp::OMIT,
      min_completed_orders: SellApp::OMIT,
      max_completed_orders: SellApp::OMIT,
      min_lifetime_spend_cents: SellApp::OMIT,
      max_lifetime_spend_cents: SellApp::OMIT,
      min_prior_ticket_count: SellApp::OMIT,
      max_prior_ticket_count: SellApp::OMIT,
      min_prior_support_refund_count: SellApp::OMIT,
      max_prior_support_refund_count: SellApp::OMIT,
      min_prior_support_refund_cents: SellApp::OMIT,
      max_prior_support_refund_cents: SellApp::OMIT,
      customer_age_days_min: SellApp::OMIT,
      customer_age_days_max: SellApp::OMIT,
      response_template_id: SellApp::OMIT,
      action_refund_kind: SellApp::OMIT,
      action_refund_percent_basis: SellApp::OMIT,
      action_refund_fixed_cents: SellApp::OMIT,
      action_refund_cap_cents: SellApp::OMIT,
      action_close_outcome: SellApp::OMIT,
      is_active: nil,
      clear: nil,
      expected_updated_at: nil,
      id: nil,
      archived: nil,
      priority: nil,
      currency: nil,
      created_at: SellApp::OMIT,
      updated_at: SellApp::OMIT,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| support_automation_rule | `Object` | Yes |
| name | `Object` | No |
| match_reason_source | `Object` | No |
| match_reason_code | `Object` | No |
| match_product_ids | `Object` | No |
| match_customer_filter | `Object` | No |
| history_window | `Object` | No |
| match_min_order_total_cents | `Object` | No |
| match_max_order_total_cents | `Object` | No |
| min_completed_orders | `Object` | No |
| max_completed_orders | `Object` | No |
| min_lifetime_spend_cents | `Object` | No |
| max_lifetime_spend_cents | `Object` | No |
| min_prior_ticket_count | `Object` | No |
| max_prior_ticket_count | `Object` | No |
| min_prior_support_refund_count | `Object` | No |
| max_prior_support_refund_count | `Object` | No |
| min_prior_support_refund_cents | `Object` | No |
| max_prior_support_refund_cents | `Object` | No |
| customer_age_days_min | `Object` | No |
| customer_age_days_max | `Object` | No |
| response_template_id | `Object` | No |
| action_refund_kind | `Object` | No |
| action_refund_percent_basis | `Object` | No |
| action_refund_fixed_cents | `Object` | No |
| action_refund_cap_cents | `Object` | No |
| action_close_outcome | `Object` | No |
| is_active | `Object` | No |
| clear | `Object` | No |
| expected_updated_at | `Object` | No |
| id | `Object` | No |
| archived | `Object` | No |
| priority | `Object` | No |
| currency | `Object` | No |
| created_at | `Object` | No |
| updated_at | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.support_automation_rules.update(
  support_automation_rule: 7,
  name: "Expired download links, first refund only",
  clear: ["match_max_order_total_cents"],
  expected_updated_at: "2026-07-03T09:20:00.000000Z"
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

## update_state

Update a support automation rule state

[API reference](https://sell.app/docs/api/support-automation-rules/change-a-support-automation-rule-state) · Effect: **consequential**

```ruby
def update_state(
      support_automation_rule:,
      state:,
      expected_updated_at: nil,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| support_automation_rule | `Object` | Yes |
| state | `Object` | Yes |
| expected_updated_at | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.support_automation_rules.update_state(
  support_automation_rule: 1,
  state: "active",
  expected_updated_at: "2026-07-03T09:20:00.000000Z"
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

## reorder

Reorder support automation rules

[API reference](https://sell.app/docs/api/support-automation-rules/reorder-support-automation-rules) · Effect: **consequential**

```ruby
def reorder(
      ordered_rule_ids:,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| ordered_rule_ids | `Object` | Yes |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.support_automation_rules.reorder(ordered_rule_ids: [7])
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

## dry_run

Dry run support automation rules

[API reference](https://sell.app/docs/api/support-automation-rules/dry-run-support-automation-rules) · Effect: **read**

```ruby
def dry_run(
      ticket_id:,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| ticket_id | `Object` | Yes |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.support_automation_rules.dry_run(ticket_id: 4821)
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

