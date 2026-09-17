# variant_deliverable_files

[All resources](../methods.md)

## list

List variant deliverable files

[API reference](https://sell.app/docs/api/product-variants) · Effect: **read**

```ruby
def list(
      product:,
      variant:,
      limit: 15,
      page: 1,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| product | `Object` | Yes |
| variant | `Object` | Yes |
| limit | `Object` | No |
| page | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.variant_deliverable_files.list(
  product: "string_example",
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

## upload

Upload a variant deliverable file

[API reference](https://sell.app/docs/api/product-variants) · Effect: **write**

```ruby
def upload(
      product:,
      variant:,
      file:,
      folder_id: SellApp::OMIT,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| product | `Object` | Yes |
| variant | `Object` | Yes |
| file | `Object` | Yes |
| folder_id | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.variant_deliverable_files.upload(
  product: "string_example",
  variant: 1,
  file: "design-kit.zip"
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

## get

Retrieve a variant deliverable file

[API reference](https://sell.app/docs/api/product-variants) · Effect: **read**

```ruby
def get(
      product:,
      variant:,
      file:,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| product | `Object` | Yes |
| variant | `Object` | Yes |
| file | `Object` | Yes |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.variant_deliverable_files.get(
  product: "string_example",
  variant: 1,
  file: 1
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

Replace variant deliverable file settings

[API reference](https://sell.app/docs/api/product-variants) · Effect: **write**

```ruby
def replace(
      product:,
      variant:,
      file:,
      custom_name: SellApp::OMIT,
      folder_id: SellApp::OMIT,
      watermark: nil,
      max_downloads: SellApp::OMIT,
      limit_to_purchase_ip: nil,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| product | `Object` | Yes |
| variant | `Object` | Yes |
| file | `Object` | Yes |
| custom_name | `Object` | No |
| folder_id | `Object` | No |
| watermark | `Object` | No |
| max_downloads | `Object` | No |
| limit_to_purchase_ip | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.variant_deliverable_files.replace(
  product: "string_example",
  variant: 1,
  file: 1,
  custom_name: "Design kit.zip"
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

Update a variant deliverable file

[API reference](https://sell.app/docs/api/product-variants) · Effect: **write**

```ruby
def update(
      product:,
      variant:,
      file:,
      custom_name: SellApp::OMIT,
      folder_id: SellApp::OMIT,
      watermark: nil,
      max_downloads: SellApp::OMIT,
      limit_to_purchase_ip: nil,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| product | `Object` | Yes |
| variant | `Object` | Yes |
| file | `Object` | Yes |
| custom_name | `Object` | No |
| folder_id | `Object` | No |
| watermark | `Object` | No |
| max_downloads | `Object` | No |
| limit_to_purchase_ip | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.variant_deliverable_files.update(
  product: "string_example",
  variant: 1,
  file: 1,
  custom_name: "Design kit.zip"
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

Delete a variant deliverable file

[API reference](https://sell.app/docs/api/product-variants) · Effect: **consequential**

```ruby
def delete(
      product:,
      variant:,
      file:,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| product | `Object` | Yes |
| variant | `Object` | Yes |
| file | `Object` | Yes |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.variant_deliverable_files.delete(
  product: "string_example",
  variant: 1,
  file: 1
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

