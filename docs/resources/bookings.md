# bookings

[All resources](../methods.md)

## list

List appointments

[API reference](https://sell.app/docs/api/bookings/list-appointments) · Effect: **read**

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

result = client.bookings.list
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

## search

Search appointments

[API reference](https://sell.app/docs/api/bookings/search-appointments) · Effect: **read**

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

result = client.bookings.search(
  filters: [{ field: "id", operator: "=", value: "018f61d6-1c46-7b42-8a94-522bc6b5c53f" }],
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

Retrieve an appointment

[API reference](https://sell.app/docs/api/bookings/retrieve-an-appointment) · Effect: **read**

```ruby
def get(
      booking:,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| booking | `Object` | Yes |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.bookings.get(booking: "018f61d6-1c46-7b42-8a94-522bc6b5c53f")
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

Update an appointment

[API reference](https://sell.app/docs/api/bookings/update-an-appointment) · Effect: **consequential**

```ruby
def update(
      booking:,
      slot_start_at:,
      timezone: SellApp::OMIT,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| booking | `Object` | Yes |
| slot_start_at | `Object` | Yes |
| timezone | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.bookings.update(
  booking: "018f61d6-1c46-7b42-8a94-522bc6b5c53f",
  slot_start_at: "2028-03-27T10:00:00+01:00",
  timezone: "Europe/London"
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

## cancel

Cancel an appointment

[API reference](https://sell.app/docs/api/bookings/update-an-appointment) · Effect: **consequential**

```ruby
def cancel(
      booking:,
      status:,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| booking | `Object` | Yes |
| status | `Object` | Yes |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.bookings.cancel(
  booking: "018f61d6-1c46-7b42-8a94-522bc6b5c53f",
  status: "cancelled"
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

## create

Create a booking product

[API reference](https://sell.app/docs/api/bookings/create-a-booking-product) · Effect: **consequential**

```ruby
def create(
      title:,
      price_cents:,
      description: SellApp::OMIT,
      visibility: nil,
      variant_title: nil,
      variant_description: nil,
      compare_at_price_cents: SellApp::OMIT,
      currency: nil,
      payment_methods: nil,
      timezone: nil,
      duration_minutes: nil,
      min_notice_minutes: nil,
      max_advance_days: nil,
      buffer_before_minutes: nil,
      buffer_after_minutes: nil,
      provider_connection_ids: nil,
      video_provider: nil,
      video_provider_connection_id: SellApp::OMIT,
      reminders_enabled: nil,
      reminder_offset_value: nil,
      reminder_offset_unit: nil,
      availability: nil,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| title | `Object` | Yes |
| price_cents | `Object` | Yes |
| description | `Object` | No |
| visibility | `Object` | No |
| variant_title | `Object` | No |
| variant_description | `Object` | No |
| compare_at_price_cents | `Object` | No |
| currency | `Object` | No |
| payment_methods | `Object` | No |
| timezone | `Object` | No |
| duration_minutes | `Object` | No |
| min_notice_minutes | `Object` | No |
| max_advance_days | `Object` | No |
| buffer_before_minutes | `Object` | No |
| buffer_after_minutes | `Object` | No |
| provider_connection_ids | `Object` | No |
| video_provider | `Object` | No |
| video_provider_connection_id | `Object` | No |
| reminders_enabled | `Object` | No |
| reminder_offset_value | `Object` | No |
| reminder_offset_unit | `Object` | No |
| availability | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.bookings.create(
  title: "Strategy consultation",
  description: "<p>A private strategy session for your next launch.</p>",
  variant_title: "60 minute session",
  price_cents: 2500,
  currency: "USD",
  payment_methods: ["STRIPE"],
  timezone: "Europe/London",
  duration_minutes: 60,
  availability: [
    { day: 1, enabled: true, start: "09:00", end: "12:00" },
    { day: 3, enabled: true, start: "13:00", end: "17:00" }
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

Documented HTTP responses: 201, 400, 401, 403, 422, 429, 500. See the API reference for field-level validation and consequences.

[Response access, transport controls, pagination, and typed errors](../usage.md)

