# licenses

[All resources](../methods.md)

## activate

Activate a license key

[API reference](https://sell.app/docs/api/licenses/activate-a-license-key) · Effect: **consequential**

```ruby
def activate(
      license_key:,
      instance_name:,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| license_key | `Object` | Yes |
| instance_name | `Object` | Yes |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.licenses.activate(
  license_key: "01965f1d-f038-7116-b57f-9e7ecb4e7b8f",
  instance_name: "Grace Wilson"
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

## validate

Validate a license key

[API reference](https://sell.app/docs/api/licenses/validate-a-license-key) · Effect: **consequential**

```ruby
def validate(
      license_key:,
      instance_id: nil,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| license_key | `Object` | Yes |
| instance_id | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.licenses.validate(license_key: "01965f1d-f038-7116-b57f-9e7ecb4e7b8f")
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

## list

List all license keys

[API reference](https://sell.app/docs/api/licenses/list-all-license-keys) · Effect: **read**

```ruby
def list(
      limit: 15,
      page: 1,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| limit | `Object` | No |
| page | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.licenses.list
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

Retrieve a license key

[API reference](https://sell.app/docs/api/licenses/retrieve-a-license-key) · Effect: **read**

```ruby
def get(
      license_key:,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| license_key | `Object` | Yes |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.licenses.get(license_key: 1)
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

Update a license key

[API reference](https://sell.app/docs/api/licenses/update-a-license-key) · Effect: **consequential**

```ruby
def update(
      license_key:,
      limit: SellApp::OMIT,
      expires_at: SellApp::OMIT,
      active: SellApp::OMIT,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| license_key | `Object` | Yes |
| limit | `Object` | No |
| expires_at | `Object` | No |
| active | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.licenses.update(
  license_key: 1,
  limit: 10,
  active: false
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

## deactivate_license

Deactivate a license instance

[API reference](https://sell.app/docs/api/licenses/deactivate-a-license) · Effect: **consequential**

```ruby
def deactivate_license(
      license_key:,
      instance_id:,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| license_key | `Object` | Yes |
| instance_id | `Object` | Yes |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.licenses.deactivate_license(
  license_key: "SELL-LICENSE-REDACTED",
  instance_id: "laptop-maya",
  request_options: { idempotency_key: "example-mutation-001" }
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

Documented HTTP responses: 200, 400, 401, 403, 404, 409, 410, 422, 429, 500. See the API reference for field-level validation and consequences.

[Response access, transport controls, pagination, and typed errors](../usage.md)

