# customer_portal

[All resources](../methods.md)

## get_customer_portal_profile

Retrieve the signed-in customer

[API reference](https://sell.app/docs/api/customer-portal) · Effect: **read**

```ruby
def get_customer_portal_profile(request_options: {})
```

| Argument | Native type | Required |
| --- | --- | --- |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), customer_session: ENV.fetch("SELLAPP_CUSTOMER_SESSION"), store: "")

result = client.customer_portal.get_customer_portal_profile
puts result.inspect
```

### Authentication and errors

Supported credential alternatives (each object is one alternative):

```json
[
  {
    "customerSession": []
  }
]
```

Documented HTTP responses: 200, 400, 401, 403, 404, 409, 410, 422, 429, 500. See the API reference for field-level validation and consequences.

[Response access, transport controls, pagination, and typed errors](../usage.md)

## update_customer_portal_profile

Update the signed-in customer

[API reference](https://sell.app/docs/api/customer-portal) · Effect: **consequential**

```ruby
def update_customer_portal_profile(
      email: nil,
      name: SellApp::OMIT,
      locale: SellApp::OMIT,
      metadata: nil,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| email | `Object` | No |
| name | `Object` | No |
| locale | `Object` | No |
| metadata | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), customer_session: ENV.fetch("SELLAPP_CUSTOMER_SESSION"), store: "")

result = client.customer_portal.update_customer_portal_profile(locale: "en-US")
puts result.inspect
```

### Authentication and errors

Supported credential alternatives (each object is one alternative):

```json
[
  {
    "customerSession": []
  }
]
```

Documented HTTP responses: 200, 400, 401, 403, 404, 409, 410, 422, 429, 500. See the API reference for field-level validation and consequences.

[Response access, transport controls, pagination, and typed errors](../usage.md)

## list_customer_portal_orders

List customer orders

[API reference](https://sell.app/docs/api/customer-portal) · Effect: **read**

```ruby
def list_customer_portal_orders(request_options: {})
```

| Argument | Native type | Required |
| --- | --- | --- |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), customer_session: ENV.fetch("SELLAPP_CUSTOMER_SESSION"), store: "")

result = client.customer_portal.list_customer_portal_orders
puts result.inspect
```

### Authentication and errors

Supported credential alternatives (each object is one alternative):

```json
[
  {
    "customerSession": []
  }
]
```

Documented HTTP responses: 200, 400, 401, 403, 404, 409, 410, 422, 429, 500. See the API reference for field-level validation and consequences.

[Response access, transport controls, pagination, and typed errors](../usage.md)

## get_customer_portal_order

Retrieve a customer order

[API reference](https://sell.app/docs/api/customer-portal) · Effect: **read**

```ruby
def get_customer_portal_order(
      order:,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| order | `Object` | Yes |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), customer_session: ENV.fetch("SELLAPP_CUSTOMER_SESSION"), store: "")

result = client.customer_portal.get_customer_portal_order(order: 9001)
puts result.inspect
```

### Authentication and errors

Supported credential alternatives (each object is one alternative):

```json
[
  {
    "customerSession": []
  }
]
```

Documented HTTP responses: 200, 400, 401, 403, 404, 409, 410, 422, 429, 500. See the API reference for field-level validation and consequences.

[Response access, transport controls, pagination, and typed errors](../usage.md)

## list_customer_portal_subscriptions

List customer subscriptions

[API reference](https://sell.app/docs/api/customer-portal) · Effect: **read**

```ruby
def list_customer_portal_subscriptions(request_options: {})
```

| Argument | Native type | Required |
| --- | --- | --- |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), customer_session: ENV.fetch("SELLAPP_CUSTOMER_SESSION"), store: "")

result = client.customer_portal.list_customer_portal_subscriptions
puts result.inspect
```

### Authentication and errors

Supported credential alternatives (each object is one alternative):

```json
[
  {
    "customerSession": []
  }
]
```

Documented HTTP responses: 200, 400, 401, 403, 404, 409, 410, 422, 429, 500. See the API reference for field-level validation and consequences.

[Response access, transport controls, pagination, and typed errors](../usage.md)

## get_customer_portal_subscription

Retrieve a customer subscription

[API reference](https://sell.app/docs/api/customer-portal) · Effect: **read**

```ruby
def get_customer_portal_subscription(
      subscription:,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| subscription | `Object` | Yes |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), customer_session: ENV.fetch("SELLAPP_CUSTOMER_SESSION"), store: "")

result = client.customer_portal.get_customer_portal_subscription(subscription: 991)
puts result.inspect
```

### Authentication and errors

Supported credential alternatives (each object is one alternative):

```json
[
  {
    "customerSession": []
  }
]
```

Documented HTTP responses: 200, 400, 401, 403, 404, 409, 410, 422, 429, 500. See the API reference for field-level validation and consequences.

[Response access, transport controls, pagination, and typed errors](../usage.md)

## get_customer_portal_subscription_capabilities

Retrieve subscription capabilities

[API reference](https://sell.app/docs/api/customer-portal) · Effect: **read**

```ruby
def get_customer_portal_subscription_capabilities(
      subscription:,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| subscription | `Object` | Yes |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), customer_session: ENV.fetch("SELLAPP_CUSTOMER_SESSION"), store: "")

result = client.customer_portal.get_customer_portal_subscription_capabilities(subscription: 42)
puts result.inspect
```

### Authentication and errors

Supported credential alternatives (each object is one alternative):

```json
[
  {
    "customerSession": []
  }
]
```

Documented HTTP responses: 200, 400, 401, 403, 404, 409, 410, 422, 429, 500. See the API reference for field-level validation and consequences.

[Response access, transport controls, pagination, and typed errors](../usage.md)

## list_customer_portal_entitlements

List customer entitlements

[API reference](https://sell.app/docs/api/customer-portal) · Effect: **read**

```ruby
def list_customer_portal_entitlements(request_options: {})
```

| Argument | Native type | Required |
| --- | --- | --- |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), customer_session: ENV.fetch("SELLAPP_CUSTOMER_SESSION"), store: "")

result = client.customer_portal.list_customer_portal_entitlements
puts result.inspect
```

### Authentication and errors

Supported credential alternatives (each object is one alternative):

```json
[
  {
    "customerSession": []
  }
]
```

Documented HTTP responses: 200, 400, 401, 403, 404, 409, 410, 422, 429, 500. See the API reference for field-level validation and consequences.

[Response access, transport controls, pagination, and typed errors](../usage.md)

## cancel_customer_subscription_at_period_end

Cancel at period end

[API reference](https://sell.app/docs/api/customer-portal) · Effect: **consequential**

```ruby
def cancel_customer_subscription_at_period_end(
      product_subscription:,
      preview_id: nil,
      product_variant_id: nil,
      renewal_date: nil,
      return_url: nil,
      reason: nil,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| product_subscription | `Object` | Yes |
| preview_id | `Object` | No |
| product_variant_id | `Object` | No |
| renewal_date | `Object` | No |
| return_url | `Object` | No |
| reason | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), customer_session: ENV.fetch("SELLAPP_CUSTOMER_SESSION"), store: "")

result = client.customer_portal.cancel_customer_subscription_at_period_end(
  product_subscription: 42,
  reason: "Customer requested this change",
  request_options: { idempotency_key: "example-mutation-001" }
)
puts result.inspect
```

### Authentication and errors

Supported credential alternatives (each object is one alternative):

```json
[
  {
    "customerSession": []
  }
]
```

Documented HTTP responses: 200, 400, 401, 403, 404, 409, 410, 422, 429, 500. See the API reference for field-level validation and consequences.

[Response access, transport controls, pagination, and typed errors](../usage.md)

## cancel_customer_subscription_immediately

Cancel immediately

[API reference](https://sell.app/docs/api/customer-portal) · Effect: **consequential**

```ruby
def cancel_customer_subscription_immediately(
      product_subscription:,
      preview_id: nil,
      product_variant_id: nil,
      renewal_date: nil,
      return_url: nil,
      reason: nil,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| product_subscription | `Object` | Yes |
| preview_id | `Object` | No |
| product_variant_id | `Object` | No |
| renewal_date | `Object` | No |
| return_url | `Object` | No |
| reason | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), customer_session: ENV.fetch("SELLAPP_CUSTOMER_SESSION"), store: "")

result = client.customer_portal.cancel_customer_subscription_immediately(
  product_subscription: 42,
  reason: "Customer requested this change",
  request_options: { idempotency_key: "example-mutation-001" }
)
puts result.inspect
```

### Authentication and errors

Supported credential alternatives (each object is one alternative):

```json
[
  {
    "customerSession": []
  }
]
```

Documented HTTP responses: 200, 400, 401, 403, 404, 409, 410, 422, 429, 500. See the API reference for field-level validation and consequences.

[Response access, transport controls, pagination, and typed errors](../usage.md)

## pause_customer_subscription

Pause a subscription

[API reference](https://sell.app/docs/api/customer-portal) · Effect: **consequential**

```ruby
def pause_customer_subscription(
      product_subscription:,
      preview_id: nil,
      product_variant_id: nil,
      renewal_date: nil,
      return_url: nil,
      reason: nil,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| product_subscription | `Object` | Yes |
| preview_id | `Object` | No |
| product_variant_id | `Object` | No |
| renewal_date | `Object` | No |
| return_url | `Object` | No |
| reason | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), customer_session: ENV.fetch("SELLAPP_CUSTOMER_SESSION"), store: "")

result = client.customer_portal.pause_customer_subscription(
  product_subscription: 42,
  reason: "Customer requested this change",
  request_options: { idempotency_key: "example-mutation-001" }
)
puts result.inspect
```

### Authentication and errors

Supported credential alternatives (each object is one alternative):

```json
[
  {
    "customerSession": []
  }
]
```

Documented HTTP responses: 200, 400, 401, 403, 404, 409, 410, 422, 429, 500. See the API reference for field-level validation and consequences.

[Response access, transport controls, pagination, and typed errors](../usage.md)

## resume_customer_subscription

Resume a subscription

[API reference](https://sell.app/docs/api/customer-portal) · Effect: **consequential**

```ruby
def resume_customer_subscription(
      product_subscription:,
      preview_id: nil,
      product_variant_id: nil,
      renewal_date: nil,
      return_url: nil,
      reason: nil,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| product_subscription | `Object` | Yes |
| preview_id | `Object` | No |
| product_variant_id | `Object` | No |
| renewal_date | `Object` | No |
| return_url | `Object` | No |
| reason | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), customer_session: ENV.fetch("SELLAPP_CUSTOMER_SESSION"), store: "")

result = client.customer_portal.resume_customer_subscription(
  product_subscription: 42,
  reason: "Customer requested this change",
  request_options: { idempotency_key: "example-mutation-001" }
)
puts result.inspect
```

### Authentication and errors

Supported credential alternatives (each object is one alternative):

```json
[
  {
    "customerSession": []
  }
]
```

Documented HTTP responses: 200, 400, 401, 403, 404, 409, 410, 422, 429, 500. See the API reference for field-level validation and consequences.

[Response access, transport controls, pagination, and typed errors](../usage.md)

## update_customer_subscription_payment_method

Update payment method

[API reference](https://sell.app/docs/api/customer-portal) · Effect: **consequential**

```ruby
def update_customer_subscription_payment_method(
      product_subscription:,
      preview_id: nil,
      product_variant_id: nil,
      renewal_date: nil,
      return_url: nil,
      reason: nil,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| product_subscription | `Object` | Yes |
| preview_id | `Object` | No |
| product_variant_id | `Object` | No |
| renewal_date | `Object` | No |
| return_url | `Object` | No |
| reason | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), customer_session: ENV.fetch("SELLAPP_CUSTOMER_SESSION"), store: "")

result = client.customer_portal.update_customer_subscription_payment_method(
  product_subscription: 42,
  reason: "Customer requested this change",
  request_options: { idempotency_key: "example-mutation-001" }
)
puts result.inspect
```

### Authentication and errors

Supported credential alternatives (each object is one alternative):

```json
[
  {
    "customerSession": []
  }
]
```

Documented HTTP responses: 200, 400, 401, 403, 404, 409, 410, 422, 429, 500. See the API reference for field-level validation and consequences.

[Response access, transport controls, pagination, and typed errors](../usage.md)

## preview_customer_subscription_plan_change

Preview a plan change

[API reference](https://sell.app/docs/api/customer-portal) · Effect: **consequential**

```ruby
def preview_customer_subscription_plan_change(
      product_subscription:,
      preview_id: nil,
      product_variant_id: nil,
      renewal_date: nil,
      return_url: nil,
      reason: nil,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| product_subscription | `Object` | Yes |
| preview_id | `Object` | No |
| product_variant_id | `Object` | No |
| renewal_date | `Object` | No |
| return_url | `Object` | No |
| reason | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), customer_session: ENV.fetch("SELLAPP_CUSTOMER_SESSION"), store: "")

result = client.customer_portal.preview_customer_subscription_plan_change(
  product_subscription: 42,
  product_variant_id: 84,
  request_options: { idempotency_key: "example-mutation-001" }
)
puts result.inspect
```

### Authentication and errors

Supported credential alternatives (each object is one alternative):

```json
[
  {
    "customerSession": []
  }
]
```

Documented HTTP responses: 200, 400, 401, 403, 404, 409, 410, 422, 429, 500. See the API reference for field-level validation and consequences.

[Response access, transport controls, pagination, and typed errors](../usage.md)

## confirm_customer_subscription_plan_change

Confirm a plan change

[API reference](https://sell.app/docs/api/customer-portal) · Effect: **consequential**

```ruby
def confirm_customer_subscription_plan_change(
      product_subscription:,
      preview_id: nil,
      product_variant_id: nil,
      renewal_date: nil,
      return_url: nil,
      reason: nil,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| product_subscription | `Object` | Yes |
| preview_id | `Object` | No |
| product_variant_id | `Object` | No |
| renewal_date | `Object` | No |
| return_url | `Object` | No |
| reason | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), customer_session: ENV.fetch("SELLAPP_CUSTOMER_SESSION"), store: "")

result = client.customer_portal.confirm_customer_subscription_plan_change(
  product_subscription: 42,
  preview_id: "preview_01K4",
  request_options: { idempotency_key: "example-mutation-001" }
)
puts result.inspect
```

### Authentication and errors

Supported credential alternatives (each object is one alternative):

```json
[
  {
    "customerSession": []
  }
]
```

Documented HTTP responses: 200, 400, 401, 403, 404, 409, 410, 422, 429, 500. See the API reference for field-level validation and consequences.

[Response access, transport controls, pagination, and typed errors](../usage.md)

## preview_customer_subscription_renewal_date_change

Preview a renewal-date change

[API reference](https://sell.app/docs/api/customer-portal) · Effect: **consequential**

```ruby
def preview_customer_subscription_renewal_date_change(
      product_subscription:,
      preview_id: nil,
      product_variant_id: nil,
      renewal_date: nil,
      return_url: nil,
      reason: nil,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| product_subscription | `Object` | Yes |
| preview_id | `Object` | No |
| product_variant_id | `Object` | No |
| renewal_date | `Object` | No |
| return_url | `Object` | No |
| reason | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), customer_session: ENV.fetch("SELLAPP_CUSTOMER_SESSION"), store: "")

result = client.customer_portal.preview_customer_subscription_renewal_date_change(
  product_subscription: 42,
  renewal_date: "2026-10-15",
  request_options: { idempotency_key: "example-mutation-001" }
)
puts result.inspect
```

### Authentication and errors

Supported credential alternatives (each object is one alternative):

```json
[
  {
    "customerSession": []
  }
]
```

Documented HTTP responses: 200, 400, 401, 403, 404, 409, 410, 422, 429, 500. See the API reference for field-level validation and consequences.

[Response access, transport controls, pagination, and typed errors](../usage.md)

## confirm_customer_subscription_renewal_date_change

Confirm a renewal-date change

[API reference](https://sell.app/docs/api/customer-portal) · Effect: **consequential**

```ruby
def confirm_customer_subscription_renewal_date_change(
      product_subscription:,
      preview_id: nil,
      product_variant_id: nil,
      renewal_date: nil,
      return_url: nil,
      reason: nil,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| product_subscription | `Object` | Yes |
| preview_id | `Object` | No |
| product_variant_id | `Object` | No |
| renewal_date | `Object` | No |
| return_url | `Object` | No |
| reason | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), customer_session: ENV.fetch("SELLAPP_CUSTOMER_SESSION"), store: "")

result = client.customer_portal.confirm_customer_subscription_renewal_date_change(
  product_subscription: 42,
  preview_id: "preview_01K4",
  request_options: { idempotency_key: "example-mutation-001" }
)
puts result.inspect
```

### Authentication and errors

Supported credential alternatives (each object is one alternative):

```json
[
  {
    "customerSession": []
  }
]
```

Documented HTTP responses: 200, 400, 401, 403, 404, 409, 410, 422, 429, 500. See the API reference for field-level validation and consequences.

[Response access, transport controls, pagination, and typed errors](../usage.md)

