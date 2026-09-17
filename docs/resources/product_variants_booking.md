# product_variants_booking

[All resources](../methods.md)

## list_availability

List booking availability

[API reference](https://sell.app/docs/api/product-variants/list-booking-availability) · Effect: **read**

```ruby
def list_availability(
      product:,
      variant:,
      from: nil,
      to: nil,
      quantity: nil,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| product | `Object` | Yes |
| variant | `Object` | Yes |
| from | `Object` | No |
| to | `Object` | No |
| quantity | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.product_variants_booking.list_availability(
  product: 1,
  variant: 1
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

## create_hold

Create a booking hold

[API reference](https://sell.app/docs/api/product-variants/create-booking-hold) · Effect: **consequential**

```ruby
def create_hold(
      product:,
      variant:,
      slot_start_at:,
      quantity: nil,
      customer_key: SellApp::OMIT,
      meta: nil,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| product | `Object` | Yes |
| variant | `Object` | Yes |
| slot_start_at | `Object` | Yes |
| quantity | `Object` | No |
| customer_key | `Object` | No |
| meta | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.product_variants_booking.create_hold(
  product: 1,
  variant: 1,
  slot_start_at: "2026-06-22T14:00:00+00:00",
  quantity: 1,
  customer_key: "visitor-session-123",
  meta: { customer_timezone: "America/New_York" }
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

Documented HTTP responses: 201, 400, 401, 403, 404, 422, 429, 500. See the API reference for field-level validation and consequences.

[Response access, transport controls, pagination, and typed errors](../usage.md)

## release_hold

Release a booking hold

[API reference](https://sell.app/docs/api/product-variants/release-booking-hold) · Effect: **consequential**

```ruby
def release_hold(
      product:,
      hold:,
      customer_key: SellApp::OMIT,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| product | `Object` | Yes |
| hold | `Object` | Yes |
| customer_key | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.product_variants_booking.release_hold(
  product: 1,
  hold: "string_example",
  customer_key: "visitor-session-123"
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

## get

Retrieve booking configuration

[API reference](https://sell.app/docs/api/bookings/retrieve-booking-configuration) · Effect: **read**

```ruby
def get(
      product:,
      variant:,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| product | `Object` | Yes |
| variant | `Object` | Yes |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.product_variants_booking.get(
  product: "41",
  variant: 73
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

## replace

Update booking configuration

[API reference](https://sell.app/docs/api/bookings/update-booking-configuration) · Effect: **consequential**

```ruby
def replace(
      product:,
      variant:,
      mode: nil,
      conflict_scope: nil,
      timezone: nil,
      duration_minutes: nil,
      capacity_per_slot: nil,
      min_notice_minutes: nil,
      max_advance_days: nil,
      buffer_before_minutes: nil,
      buffer_after_minutes: nil,
      availability: nil,
      provider_connection_ids: nil,
      video_provider: nil,
      video_provider_connection_id: SellApp::OMIT,
      reminders_enabled: nil,
      reminder_offset_value: nil,
      reminder_offset_unit: nil,
      meta: nil,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| product | `Object` | Yes |
| variant | `Object` | Yes |
| mode | `Object` | No |
| conflict_scope | `Object` | No |
| timezone | `Object` | No |
| duration_minutes | `Object` | No |
| capacity_per_slot | `Object` | No |
| min_notice_minutes | `Object` | No |
| max_advance_days | `Object` | No |
| buffer_before_minutes | `Object` | No |
| buffer_after_minutes | `Object` | No |
| availability | `Object` | No |
| provider_connection_ids | `Object` | No |
| video_provider | `Object` | No |
| video_provider_connection_id | `Object` | No |
| reminders_enabled | `Object` | No |
| reminder_offset_value | `Object` | No |
| reminder_offset_unit | `Object` | No |
| meta | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.product_variants_booking.replace(
  product: "41",
  variant: 73,
  timezone: "Europe/London",
  duration_minutes: 60,
  capacity_per_slot: 1,
  min_notice_minutes: 1440,
  max_advance_days: 60
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

Update booking configuration

[API reference](https://sell.app/docs/api/bookings/update-booking-configuration) · Effect: **consequential**

```ruby
def update(
      product:,
      variant:,
      mode: nil,
      conflict_scope: nil,
      timezone: nil,
      duration_minutes: nil,
      capacity_per_slot: nil,
      min_notice_minutes: nil,
      max_advance_days: nil,
      buffer_before_minutes: nil,
      buffer_after_minutes: nil,
      availability: nil,
      provider_connection_ids: nil,
      video_provider: nil,
      video_provider_connection_id: SellApp::OMIT,
      reminders_enabled: nil,
      reminder_offset_value: nil,
      reminder_offset_unit: nil,
      meta: nil,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| product | `Object` | Yes |
| variant | `Object` | Yes |
| mode | `Object` | No |
| conflict_scope | `Object` | No |
| timezone | `Object` | No |
| duration_minutes | `Object` | No |
| capacity_per_slot | `Object` | No |
| min_notice_minutes | `Object` | No |
| max_advance_days | `Object` | No |
| buffer_before_minutes | `Object` | No |
| buffer_after_minutes | `Object` | No |
| availability | `Object` | No |
| provider_connection_ids | `Object` | No |
| video_provider | `Object` | No |
| video_provider_connection_id | `Object` | No |
| reminders_enabled | `Object` | No |
| reminder_offset_value | `Object` | No |
| reminder_offset_unit | `Object` | No |
| meta | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.product_variants_booking.update(
  product: "41",
  variant: 73,
  timezone: "Europe/London",
  duration_minutes: 60,
  capacity_per_slot: 1,
  min_notice_minutes: 1440,
  max_advance_days: 60
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

