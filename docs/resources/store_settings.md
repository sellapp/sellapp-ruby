# store_settings

[All resources](../methods.md)

## get

Retrieve store settings

[API reference](https://sell.app/docs/api/store-settings/retrieve-store-settings) · Effect: **read**

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

result = client.store_settings.get
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

## replace_general

Update general store settings

[API reference](https://sell.app/docs/api/store-settings/update-general-settings) · Effect: **consequential**

```ruby
def replace_general(
      name:,
      visibility:,
      timezone:,
      currency:,
      dark_mode: SellApp::OMIT,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| name | `Object` | Yes |
| visibility | `Object` | Yes |
| timezone | `Object` | Yes |
| currency | `Object` | Yes |
| dark_mode | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.store_settings.replace_general(
  name: "Launch Lab",
  visibility: "HIDDEN",
  timezone: "Europe/London",
  currency: "USD"
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

## update_general

Update general store settings

[API reference](https://sell.app/docs/api/store-settings/update-general-settings) · Effect: **consequential**

```ruby
def update_general(
      name: nil,
      visibility: nil,
      timezone: nil,
      currency: nil,
      dark_mode: SellApp::OMIT,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| name | `Object` | No |
| visibility | `Object` | No |
| timezone | `Object` | No |
| currency | `Object` | No |
| dark_mode | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.store_settings.update_general(name: "Launch Lab")
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

## replace_analytics

Update analytics settings

[API reference](https://sell.app/docs/api/store-settings/update-analytics-settings) · Effect: **consequential**

```ruby
def replace_analytics(
      ga_4_measurement_id: SellApp::OMIT,
      meta_pixel_id: SellApp::OMIT,
      tiktok_pixel_id: SellApp::OMIT,
      ga_4_api_secret: SellApp::OMIT,
      meta_access_token: SellApp::OMIT,
      tiktok_access_token: SellApp::OMIT,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| ga_4_measurement_id | `Object` | No |
| meta_pixel_id | `Object` | No |
| tiktok_pixel_id | `Object` | No |
| ga_4_api_secret | `Object` | No |
| meta_access_token | `Object` | No |
| tiktok_access_token | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.store_settings.replace_analytics(ga_4_measurement_id: nil)
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

## update_analytics

Update analytics settings

[API reference](https://sell.app/docs/api/store-settings/update-analytics-settings) · Effect: **consequential**

```ruby
def update_analytics(
      ga_4_measurement_id: SellApp::OMIT,
      meta_pixel_id: SellApp::OMIT,
      tiktok_pixel_id: SellApp::OMIT,
      ga_4_api_secret: SellApp::OMIT,
      meta_access_token: SellApp::OMIT,
      tiktok_access_token: SellApp::OMIT,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| ga_4_measurement_id | `Object` | No |
| meta_pixel_id | `Object` | No |
| tiktok_pixel_id | `Object` | No |
| ga_4_api_secret | `Object` | No |
| meta_access_token | `Object` | No |
| tiktok_access_token | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.store_settings.update_analytics(ga_4_measurement_id: nil)
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

## replace_marketing

Update marketing settings

[API reference](https://sell.app/docs/api/store-settings/update-marketing-settings) · Effect: **consequential**

```ruby
def replace_marketing(
      abandoned_cart:,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| abandoned_cart | `Object` | Yes |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.store_settings.replace_marketing(abandoned_cart: { enabled: false })
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

## update_marketing

Update marketing settings

[API reference](https://sell.app/docs/api/store-settings/update-marketing-settings) · Effect: **consequential**

```ruby
def update_marketing(
      abandoned_cart:,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| abandoned_cart | `Object` | Yes |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.store_settings.update_marketing(abandoned_cart: { enabled: false })
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

## get_checkout

Retrieve checkout settings

[API reference](https://sell.app/docs/api/store-settings/checkout-settings) · Effect: **read**

```ruby
def get_checkout(request_options: {})
```

| Argument | Native type | Required |
| --- | --- | --- |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.store_settings.get_checkout
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

## replace_checkout

Update checkout settings

[API reference](https://sell.app/docs/api/store-settings/checkout-settings) · Effect: **consequential**

```ruby
def replace_checkout(
      shopping_cart_enabled:,
      customer_email_required:,
      allow_vpn_purchases:,
      blacklist_on_dispute:,
      minimum_spend:,
      billing_descriptor:,
      attempts_per_customer:,
      attempts_per_ip:,
      attempts_per_email:,
      attempts_per_fingerprint:,
      rate_limit_window_seconds:,
      crypto: SellApp::OMIT,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| shopping_cart_enabled | `Object` | Yes |
| customer_email_required | `Object` | Yes |
| allow_vpn_purchases | `Object` | Yes |
| blacklist_on_dispute | `Object` | Yes |
| minimum_spend | `Object` | Yes |
| billing_descriptor | `Object` | Yes |
| attempts_per_customer | `Object` | Yes |
| attempts_per_ip | `Object` | Yes |
| attempts_per_email | `Object` | Yes |
| attempts_per_fingerprint | `Object` | Yes |
| rate_limit_window_seconds | `Object` | Yes |
| crypto | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.store_settings.replace_checkout(
  shopping_cart_enabled: true,
  customer_email_required: true,
  allow_vpn_purchases: true,
  blacklist_on_dispute: true,
  minimum_spend: "5.00",
  billing_descriptor: "LAUNCH LAB",
  attempts_per_customer: 5,
  attempts_per_ip: 20,
  attempts_per_email: nil,
  attempts_per_fingerprint: nil,
  rate_limit_window_seconds: 3600,
  crypto: { underpaid_percentage: 2, minimum_confirmations: 2 }
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

## update_checkout

Update checkout settings

[API reference](https://sell.app/docs/api/store-settings/checkout-settings) · Effect: **consequential**

```ruby
def update_checkout(
      shopping_cart_enabled: nil,
      customer_email_required: nil,
      allow_vpn_purchases: nil,
      blacklist_on_dispute: nil,
      minimum_spend: SellApp::OMIT,
      billing_descriptor: SellApp::OMIT,
      attempts_per_customer: nil,
      attempts_per_ip: SellApp::OMIT,
      attempts_per_email: SellApp::OMIT,
      attempts_per_fingerprint: SellApp::OMIT,
      rate_limit_window_seconds: nil,
      crypto: SellApp::OMIT,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| shopping_cart_enabled | `Object` | No |
| customer_email_required | `Object` | No |
| allow_vpn_purchases | `Object` | No |
| blacklist_on_dispute | `Object` | No |
| minimum_spend | `Object` | No |
| billing_descriptor | `Object` | No |
| attempts_per_customer | `Object` | No |
| attempts_per_ip | `Object` | No |
| attempts_per_email | `Object` | No |
| attempts_per_fingerprint | `Object` | No |
| rate_limit_window_seconds | `Object` | No |
| crypto | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.store_settings.update_checkout(
  minimum_spend: "10.00",
  attempts_per_email: 10
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

## get_taxes

Retrieve tax settings

[API reference](https://sell.app/docs/api/store-settings/tax-settings) · Effect: **read**

```ruby
def get_taxes(request_options: {})
```

| Argument | Native type | Required |
| --- | --- | --- |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.store_settings.get_taxes
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

## replace_taxes

Update tax settings

[API reference](https://sell.app/docs/api/store-settings/tax-settings) · Effect: **consequential**

```ruby
def replace_taxes(
      vat_enabled:,
      vat_inclusive_pricing:,
      collect_billing_details:,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| vat_enabled | `Object` | Yes |
| vat_inclusive_pricing | `Object` | Yes |
| collect_billing_details | `Object` | Yes |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.store_settings.replace_taxes(
  vat_enabled: true,
  vat_inclusive_pricing: true,
  collect_billing_details: false
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

## update_taxes

Update tax settings

[API reference](https://sell.app/docs/api/store-settings/tax-settings) · Effect: **consequential**

```ruby
def update_taxes(
      vat_enabled: nil,
      vat_inclusive_pricing: nil,
      collect_billing_details: nil,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| vat_enabled | `Object` | No |
| vat_inclusive_pricing | `Object` | No |
| collect_billing_details | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.store_settings.update_taxes(vat_inclusive_pricing: true)
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

## get_customer_emails

Retrieve customer email settings

[API reference](https://sell.app/docs/api/store-settings/customer-email-settings) · Effect: **read**

```ruby
def get_customer_emails(request_options: {})
```

| Argument | Native type | Required |
| --- | --- | --- |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.store_settings.get_customer_emails
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

## replace_customer_emails

Update customer email settings

[API reference](https://sell.app/docs/api/store-settings/customer-email-settings) · Effect: **consequential**

```ruby
def replace_customer_emails(
      send_delivery_email:,
      send_payment_failure_email:,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| send_delivery_email | `Object` | Yes |
| send_payment_failure_email | `Object` | Yes |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.store_settings.replace_customer_emails(
  send_delivery_email: true,
  send_payment_failure_email: false
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

## update_customer_emails

Update customer email settings

[API reference](https://sell.app/docs/api/store-settings/customer-email-settings) · Effect: **consequential**

```ruby
def update_customer_emails(
      send_delivery_email: nil,
      send_payment_failure_email: nil,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| send_delivery_email | `Object` | No |
| send_payment_failure_email | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.store_settings.update_customer_emails(send_payment_failure_email: false)
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

## get_store_alerts

Retrieve store alert settings

[API reference](https://sell.app/docs/api/store-settings/store-alert-settings) · Effect: **read**

```ruby
def get_store_alerts(request_options: {})
```

| Argument | Native type | Required |
| --- | --- | --- |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.store_settings.get_store_alerts
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

## replace_store_alerts

Update store alert settings

[API reference](https://sell.app/docs/api/store-settings/store-alert-settings) · Effect: **consequential**

```ruby
def replace_store_alerts(
      sale_emails_enabled:,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| sale_emails_enabled | `Object` | Yes |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.store_settings.replace_store_alerts(sale_emails_enabled: false)
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

## update_store_alerts

Update store alert settings

[API reference](https://sell.app/docs/api/store-settings/store-alert-settings) · Effect: **consequential**

```ruby
def update_store_alerts(
      sale_emails_enabled: nil,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| sale_emails_enabled | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.store_settings.update_store_alerts(sale_emails_enabled: false)
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

## get_personalization

Retrieve personalization settings

[API reference](https://sell.app/docs/api/store-settings/personalization-settings) · Effect: **read**

```ruby
def get_personalization(request_options: {})
```

| Argument | Native type | Required |
| --- | --- | --- |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.store_settings.get_personalization
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

## replace_personalization

Update personalization settings

[API reference](https://sell.app/docs/api/store-settings/personalization-settings) · Effect: **consequential**

```ruby
def replace_personalization(
      support_email:,
      trustpilot_email:,
      sender_name:,
      store_address:,
      store_city:,
      store_state:,
      store_zip:,
      store_country:,
      store_tax:,
      back_link_label:,
      back_link_url:,
      sender_email: SellApp::OMIT,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| support_email | `Object` | Yes |
| trustpilot_email | `Object` | Yes |
| sender_name | `Object` | Yes |
| store_address | `Object` | Yes |
| store_city | `Object` | Yes |
| store_state | `Object` | Yes |
| store_zip | `Object` | Yes |
| store_country | `Object` | Yes |
| store_tax | `Object` | Yes |
| back_link_label | `Object` | Yes |
| back_link_url | `Object` | Yes |
| sender_email | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.store_settings.replace_personalization(
  support_email: "support@launch-lab.example.com",
  trustpilot_email: nil,
  sender_name: "Launch Lab",
  sender_email: "orders@launch-lab.example.com",
  store_address: "651 N Broad St, Suite 206",
  store_city: "Middletown",
  store_state: "Delaware",
  store_zip: "19709",
  store_country: "United States",
  store_tax: "EIN 98-7654321",
  back_link_label: "Back to Launch Lab",
  back_link_url: "https://launch-lab.example.com"
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

## update_personalization

Update personalization settings

[API reference](https://sell.app/docs/api/store-settings/personalization-settings) · Effect: **consequential**

```ruby
def update_personalization(
      support_email: SellApp::OMIT,
      trustpilot_email: SellApp::OMIT,
      sender_name: SellApp::OMIT,
      sender_email: SellApp::OMIT,
      store_address: SellApp::OMIT,
      store_city: SellApp::OMIT,
      store_state: SellApp::OMIT,
      store_zip: SellApp::OMIT,
      store_country: SellApp::OMIT,
      store_tax: SellApp::OMIT,
      back_link_label: SellApp::OMIT,
      back_link_url: SellApp::OMIT,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| support_email | `Object` | No |
| trustpilot_email | `Object` | No |
| sender_name | `Object` | No |
| sender_email | `Object` | No |
| store_address | `Object` | No |
| store_city | `Object` | No |
| store_state | `Object` | No |
| store_zip | `Object` | No |
| store_country | `Object` | No |
| store_tax | `Object` | No |
| back_link_label | `Object` | No |
| back_link_url | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.store_settings.update_personalization(
  back_link_label: "Return to the shop",
  back_link_url: "https://launch-lab.example.com/shop"
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

## replace_crypto_checkout

Update crypto checkout settings

[API reference](https://sell.app/docs/api/store-settings/crypto-checkout-settings) · Effect: **consequential**

```ruby
def replace_crypto_checkout(
      underpaid_percentage:,
      minimum_confirmations:,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| underpaid_percentage | `Object` | Yes |
| minimum_confirmations | `Object` | Yes |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.store_settings.replace_crypto_checkout(
  underpaid_percentage: 1,
  minimum_confirmations: 3
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

## update_crypto_checkout

Update crypto checkout settings

[API reference](https://sell.app/docs/api/store-settings/crypto-checkout-settings) · Effect: **consequential**

```ruby
def update_crypto_checkout(
      underpaid_percentage: nil,
      minimum_confirmations: nil,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| underpaid_percentage | `Object` | No |
| minimum_confirmations | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.store_settings.update_crypto_checkout(minimum_confirmations: 3)
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

