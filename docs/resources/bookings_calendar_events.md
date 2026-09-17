# bookings_calendar_events

[All resources](../methods.md)

## list

List booking date overrides

[API reference](https://sell.app/docs/api/bookings/list-booking-date-overrides) · Effect: **read**

```ruby
def list(
      product_variant_id: nil,
      from: nil,
      to: nil,
      status: nil,
      pagination: true,
      limit: 15,
      page: 1,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| product_variant_id | `Object` | No |
| from | `Object` | No |
| to | `Object` | No |
| status | `Object` | No |
| pagination | `Object` | No |
| limit | `Object` | No |
| page | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.bookings_calendar_events.list
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

## set

Set booking date availability

[API reference](https://sell.app/docs/api/bookings/set-booking-date-availability) · Effect: **consequential**

```ruby
def set(
      dates:,
      available:,
      product_variant_id: SellApp::OMIT,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| dates | `Object` | Yes |
| available | `Object` | Yes |
| product_variant_id | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.bookings_calendar_events.set(
  product_variant_id: 73,
  dates: ["2028-03-26", "2028-03-27"],
  available: false
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

