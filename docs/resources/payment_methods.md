# payment_methods

[All resources](../methods.md)

## list

List payment methods

[API reference](https://sell.app/docs/api/payment-methods/manage-payment-methods) · Effect: **read**

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

result = client.payment_methods.list
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

Retrieve payment method status

[API reference](https://sell.app/docs/api/payment-methods/manage-payment-methods) · Effect: **read**

```ruby
def get(
      payment_method:,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| payment_method | `Object` | Yes |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.payment_methods.get(payment_method: "STRIPE")
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

## enable

Enable or disable a payment method

[API reference](https://sell.app/docs/api/payment-methods/manage-payment-methods) · Effect: **consequential**

```ruby
def enable(
      payment_method:,
      enabled:,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| payment_method | `Object` | Yes |
| enabled | `Object` | Yes |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.payment_methods.enable(
  payment_method: "STRIPE",
  enabled: false
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

## connect

Create a payment connection handoff

[API reference](https://sell.app/docs/api/payment-methods/manage-payment-methods) · Effect: **consequential**

```ruby
def connect(
      payment_method:,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| payment_method | `Object` | Yes |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.payment_methods.connect(payment_method: "STRIPE")
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

## validate

Validate and save payment method configuration

[API reference](https://sell.app/docs/api/payment-methods/manage-payment-methods) · Effect: **consequential**

```ruby
def validate(
      payment_method:,
      merchant_secure_key: nil,
      merchant_tokenization_key: nil,
      signing_key: nil,
      currencies: nil,
      public_key: nil,
      access_token: nil,
      webhook_secret: nil,
      merchant_id: nil,
      key_id: nil,
      key_secret: nil,
      primary_currency: nil,
      international_payments_enabled: nil,
      supported_currencies: nil,
      api_key: nil,
      address: nil,
      private_view_key: nil,
      min_withdraw_amount: SellApp::OMIT,
      destination_gateway: nil,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| payment_method | `Object` | Yes |
| merchant_secure_key | `Object` | No |
| merchant_tokenization_key | `Object` | No |
| signing_key | `Object` | No |
| currencies | `Object` | No |
| public_key | `Object` | No |
| access_token | `Object` | No |
| webhook_secret | `Object` | No |
| merchant_id | `Object` | No |
| key_id | `Object` | No |
| key_secret | `Object` | No |
| primary_currency | `Object` | No |
| international_payments_enabled | `Object` | No |
| supported_currencies | `Object` | No |
| api_key | `Object` | No |
| address | `Object` | No |
| private_view_key | `Object` | No |
| min_withdraw_amount | `Object` | No |
| destination_gateway | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.payment_methods.validate(
  payment_method: "NMI",
  merchant_secure_key: "replace-with-nmi-secure-key",
  merchant_tokenization_key: "replace-with-nmi-tokenization-key",
  signing_key: "replace-with-nmi-signing-key",
  currencies: ["USD"]
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

