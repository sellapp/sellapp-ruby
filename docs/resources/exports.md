# exports

[All resources](../methods.md)

## list_exports

List exports

[API reference](https://sell.app/docs/api/exports) · Effect: **read**

```ruby
def list_exports(request_options: {})
```

| Argument | Native type | Required |
| --- | --- | --- |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.exports.list_exports
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

## create_export

Create an export

[API reference](https://sell.app/docs/api/exports) · Effect: **consequential**

```ruby
def create_export(
      type:,
      format:,
      parameters: nil,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| type | `Object` | Yes |
| format | `Object` | Yes |
| parameters | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.exports.create_export(
  type: "sales",
  format: "csv",
  parameters: { from: "2026-08-01", to: "2026-08-31" }
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

Documented HTTP responses: 201, 400, 401, 403, 404, 409, 410, 422, 429, 500. See the API reference for field-level validation and consequences.

[Response access, transport controls, pagination, and typed errors](../usage.md)

## get_export

Retrieve an export

[API reference](https://sell.app/docs/api/exports) · Effect: **read**

```ruby
def get_export(
      export:,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| export | `Object` | Yes |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.exports.get_export(export: "01992a65-e064-71ba-b38f-902b7966a6be")
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

## download_export

Download an export

[API reference](https://sell.app/docs/api/exports) · Effect: **read**

```ruby
def download_export(
      export:,
      expires:,
      signature:,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| export | `Object` | Yes |
| expires | `Object` | Yes |
| signature | `Object` | Yes |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.exports.download_export(
  export: "01992a65-e064-71ba-b38f-902b7966a6be",
  expires: 1788513423,
  signature: "2c91df645a086ec399153a932b741f809d2b85c69740eaf3612384ebfb913a65"
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

Documented HTTP responses: 302, 400, 401, 403, 404, 409, 410, 422, 429, 500. See the API reference for field-level validation and consequences.

[Response access, transport controls, pagination, and typed errors](../usage.md)

