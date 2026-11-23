# support_automation_settings

[All resources](../methods.md)

## get

Retrieve support automation settings

[API reference](https://sell.app/docs/api/support-automation-settings/retrieve-support-automation-settings) · Effect: **read**

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

result = client.support_automation_settings.get
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

Update support automation settings

[API reference](https://sell.app/docs/api/support-automation-settings/update-support-automation-settings) · Effect: **consequential**

```ruby
def replace(
      automation_enabled: nil,
      daily_refund_cap_cents: SellApp::OMIT,
      expected_automation_enabled: nil,
      expected_daily_refund_cap_cents: SellApp::OMIT,
      currency: nil,
      active_rules_count: nil,
      active_refund_rules_count: nil,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| automation_enabled | `Object` | No |
| daily_refund_cap_cents | `Object` | No |
| expected_automation_enabled | `Object` | No |
| expected_daily_refund_cap_cents | `Object` | No |
| currency | `Object` | No |
| active_rules_count | `Object` | No |
| active_refund_rules_count | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.support_automation_settings.replace(
  automation_enabled: true,
  daily_refund_cap_cents: 5000,
  expected_automation_enabled: false,
  expected_daily_refund_cap_cents: nil
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

## update

Update support automation settings

[API reference](https://sell.app/docs/api/support-automation-settings/update-support-automation-settings) · Effect: **consequential**

```ruby
def update(
      automation_enabled: nil,
      daily_refund_cap_cents: SellApp::OMIT,
      expected_automation_enabled: nil,
      expected_daily_refund_cap_cents: SellApp::OMIT,
      currency: nil,
      active_rules_count: nil,
      active_refund_rules_count: nil,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| automation_enabled | `Object` | No |
| daily_refund_cap_cents | `Object` | No |
| expected_automation_enabled | `Object` | No |
| expected_daily_refund_cap_cents | `Object` | No |
| currency | `Object` | No |
| active_rules_count | `Object` | No |
| active_refund_rules_count | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.support_automation_settings.update(
  automation_enabled: true,
  daily_refund_cap_cents: 5000,
  expected_automation_enabled: false,
  expected_daily_refund_cap_cents: nil
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

