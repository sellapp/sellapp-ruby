# payment_methods_custom

[All resources](../methods.md)

## list

List custom payment methods

[API reference](https://sell.app/docs/api/payment-methods/manage-custom-payment-methods) · Effect: **read**

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

result = client.payment_methods_custom.list
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

Create a custom payment method

[API reference](https://sell.app/docs/api/payment-methods/manage-custom-payment-methods) · Effect: **consequential**

```ruby
def create(
      type:,
      name:,
      description: SellApp::OMIT,
      instructions: SellApp::OMIT,
      steps: SellApp::OMIT,
      redirect_url: SellApp::OMIT,
      skip_interstitial_page: nil,
      show_processing_status_page: nil,
      require_proof_of_payment: nil,
      enabled: nil,
      sort_order: nil,
      modifier: SellApp::OMIT,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| type | `Object` | Yes |
| name | `Object` | Yes |
| description | `Object` | No |
| instructions | `Object` | No |
| steps | `Object` | No |
| redirect_url | `Object` | No |
| skip_interstitial_page | `Object` | No |
| show_processing_status_page | `Object` | No |
| require_proof_of_payment | `Object` | No |
| enabled | `Object` | No |
| sort_order | `Object` | No |
| modifier | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.payment_methods_custom.create(
  type: "instructions",
  name: "Manual payment",
  instructions: "Contact Launch Lab before sending a payment.",
  enabled: false,
  modifier: { percentage: "-2.50", fixed: "-1.00" }
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

Retrieve a custom payment method

[API reference](https://sell.app/docs/api/payment-methods/manage-custom-payment-methods) · Effect: **read**

```ruby
def get(
      custom_payment_method:,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| custom_payment_method | `Object` | Yes |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.payment_methods_custom.get(custom_payment_method: "string_example")
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

Replace a custom payment method

[API reference](https://sell.app/docs/api/payment-methods/manage-custom-payment-methods) · Effect: **consequential**

```ruby
def replace(
      custom_payment_method:,
      type:,
      name:,
      description: SellApp::OMIT,
      instructions: SellApp::OMIT,
      steps: SellApp::OMIT,
      redirect_url: SellApp::OMIT,
      skip_interstitial_page: nil,
      show_processing_status_page: nil,
      require_proof_of_payment: nil,
      enabled: nil,
      sort_order: nil,
      modifier: SellApp::OMIT,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| custom_payment_method | `Object` | Yes |
| type | `Object` | Yes |
| name | `Object` | Yes |
| description | `Object` | No |
| instructions | `Object` | No |
| steps | `Object` | No |
| redirect_url | `Object` | No |
| skip_interstitial_page | `Object` | No |
| show_processing_status_page | `Object` | No |
| require_proof_of_payment | `Object` | No |
| enabled | `Object` | No |
| sort_order | `Object` | No |
| modifier | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.payment_methods_custom.replace(
  custom_payment_method: "string_example",
  type: "instructions",
  name: "Manual payment",
  instructions: "Contact Launch Lab before sending a payment.",
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

## update

Update a custom payment method

[API reference](https://sell.app/docs/api/payment-methods/manage-custom-payment-methods) · Effect: **consequential**

```ruby
def update(
      custom_payment_method:,
      type: nil,
      name: nil,
      description: SellApp::OMIT,
      instructions: SellApp::OMIT,
      steps: SellApp::OMIT,
      redirect_url: SellApp::OMIT,
      skip_interstitial_page: nil,
      show_processing_status_page: nil,
      require_proof_of_payment: nil,
      enabled: nil,
      sort_order: nil,
      modifier: SellApp::OMIT,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| custom_payment_method | `Object` | Yes |
| type | `Object` | No |
| name | `Object` | No |
| description | `Object` | No |
| instructions | `Object` | No |
| steps | `Object` | No |
| redirect_url | `Object` | No |
| skip_interstitial_page | `Object` | No |
| show_processing_status_page | `Object` | No |
| require_proof_of_payment | `Object` | No |
| enabled | `Object` | No |
| sort_order | `Object` | No |
| modifier | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.payment_methods_custom.update(
  custom_payment_method: "string_example",
  enabled: false,
  modifier: nil
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

## delete

Delete a custom payment method

[API reference](https://sell.app/docs/api/payment-methods/manage-custom-payment-methods) · Effect: **consequential**

```ruby
def delete(
      custom_payment_method:,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| custom_payment_method | `Object` | Yes |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.payment_methods_custom.delete(custom_payment_method: "string_example")
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

