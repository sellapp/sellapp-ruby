# highlights_media

[All resources](../methods.md)

## list

List highlight media

[API reference](https://sell.app/docs/api/highlights/manage-highlight-media) · Effect: **read**

```ruby
def list(
      highlight:,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| highlight | `Object` | Yes |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.highlights_media.list(highlight: 1)
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

## add

Add highlight media

[API reference](https://sell.app/docs/api/highlights/manage-highlight-media) · Effect: **write**

```ruby
def add(
      highlight:,
      file:,
      cta_title: nil,
      product_id: SellApp::OMIT,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| highlight | `Object` | Yes |
| file | `Object` | Yes |
| cta_title | `Object` | No |
| product_id | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.highlights_media.add(
  highlight: 1,
  file: "/path/to/example.png",
  cta_title: "View product",
  product_id: 123
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

## reorder

Reorder highlight media

[API reference](https://sell.app/docs/api/highlights/manage-highlight-media) · Effect: **consequential**

```ruby
def reorder(
      highlight:,
      resources:,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| highlight | `Object` | Yes |
| resources | `Object` | Yes |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.highlights_media.reorder(
  highlight: 1,
  resources: [42, 41]
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

Replace highlight media

[API reference](https://sell.app/docs/api/highlights/manage-highlight-media) · Effect: **write**

```ruby
def replace(
      highlight:,
      media:,
      file:,
      cta_title: nil,
      product_id: SellApp::OMIT,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| highlight | `Object` | Yes |
| media | `Object` | Yes |
| file | `Object` | Yes |
| cta_title | `Object` | No |
| product_id | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.highlights_media.replace(
  highlight: 1,
  media: 84,
  file: "/path/to/example.png",
  cta_title: "View product",
  product_id: 123
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

## replace_metadata

Update highlight media

[API reference](https://sell.app/docs/api/highlights/manage-highlight-media) · Effect: **write**

```ruby
def replace_metadata(
      highlight:,
      media:,
      cta_title: nil,
      product_id: SellApp::OMIT,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| highlight | `Object` | Yes |
| media | `Object` | Yes |
| cta_title | `Object` | No |
| product_id | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.highlights_media.replace_metadata(
  highlight: 1,
  media: 84,
  cta_title: "View product",
  product_id: 123
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

Update highlight media

[API reference](https://sell.app/docs/api/highlights/manage-highlight-media) · Effect: **write**

```ruby
def update(
      highlight:,
      media:,
      cta_title: nil,
      product_id: SellApp::OMIT,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| highlight | `Object` | Yes |
| media | `Object` | Yes |
| cta_title | `Object` | No |
| product_id | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.highlights_media.update(
  highlight: 1,
  media: 84,
  cta_title: "View product",
  product_id: 123
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

Delete highlight media

[API reference](https://sell.app/docs/api/highlights/manage-highlight-media) · Effect: **consequential**

```ruby
def delete(
      highlight:,
      media:,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| highlight | `Object` | Yes |
| media | `Object` | Yes |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.highlights_media.delete(
  highlight: 1,
  media: 84
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

