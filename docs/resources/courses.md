# courses

[All resources](../methods.md)

## list

List courses

[API reference](https://sell.app/docs/api/courses/list-courses) · Effect: **read**

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

result = client.courses.list
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

Search courses

[API reference](https://sell.app/docs/api/courses/search-courses) · Effect: **read**

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

result = client.courses.search(
  filters: [{ field: "id", operator: "=", value: 1 }],
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

Retrieve a course

[API reference](https://sell.app/docs/api/courses/retrieve-course) · Effect: **read**

```ruby
def get(
      course:,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| course | `Object` | Yes |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.courses.get(course: "string_example")
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

Update a course

[API reference](https://sell.app/docs/api/courses/update-course) · Effect: **write**

```ruby
def replace(
      course:,
      category: SellApp::OMIT,
      level: nil,
      language: nil,
      subtitle: SellApp::OMIT,
      author: SellApp::OMIT,
      subcategory: SellApp::OMIT,
      what_you_learn: nil,
      requirements: nil,
      certificate_enabled: nil,
      access_type: nil,
      access_duration_days: SellApp::OMIT,
      enrollment_limit: SellApp::OMIT,
      delivery_text: SellApp::OMIT,
      visibility: nil,
      expected_updated_at: nil,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| course | `Object` | Yes |
| category | `Object` | No |
| level | `Object` | No |
| language | `Object` | No |
| subtitle | `Object` | No |
| author | `Object` | No |
| subcategory | `Object` | No |
| what_you_learn | `Object` | No |
| requirements | `Object` | No |
| certificate_enabled | `Object` | No |
| access_type | `Object` | No |
| access_duration_days | `Object` | No |
| enrollment_limit | `Object` | No |
| delivery_text | `Object` | No |
| visibility | `Object` | No |
| expected_updated_at | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.courses.replace(
  course: "string_example",
  level: "beginner",
  visibility: "HIDDEN"
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

Update a course

[API reference](https://sell.app/docs/api/courses/update-course) · Effect: **write**

```ruby
def update(
      course:,
      category: SellApp::OMIT,
      level: nil,
      language: nil,
      subtitle: SellApp::OMIT,
      author: SellApp::OMIT,
      subcategory: SellApp::OMIT,
      what_you_learn: nil,
      requirements: nil,
      certificate_enabled: nil,
      access_type: nil,
      access_duration_days: SellApp::OMIT,
      enrollment_limit: SellApp::OMIT,
      delivery_text: SellApp::OMIT,
      visibility: nil,
      expected_updated_at: nil,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| course | `Object` | Yes |
| category | `Object` | No |
| level | `Object` | No |
| language | `Object` | No |
| subtitle | `Object` | No |
| author | `Object` | No |
| subcategory | `Object` | No |
| what_you_learn | `Object` | No |
| requirements | `Object` | No |
| certificate_enabled | `Object` | No |
| access_type | `Object` | No |
| access_duration_days | `Object` | No |
| enrollment_limit | `Object` | No |
| delivery_text | `Object` | No |
| visibility | `Object` | No |
| expected_updated_at | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.courses.update(
  course: "string_example",
  level: "beginner",
  visibility: "HIDDEN"
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

