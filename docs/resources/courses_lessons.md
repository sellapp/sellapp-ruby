# courses_lessons

[All resources](../methods.md)

## create

Create a course lesson

[API reference](https://sell.app/docs/api/courses/manage-course-lessons) · Effect: **write**

```ruby
def create(
      course:,
      section:,
      title:,
      type:,
      content: SellApp::OMIT,
      is_preview: nil,
      is_published: nil,
      assignment: nil,
      questions: nil,
      expected_updated_at: nil,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| course | `Object` | Yes |
| section | `Object` | Yes |
| title | `Object` | Yes |
| type | `Object` | Yes |
| content | `Object` | No |
| is_preview | `Object` | No |
| is_published | `Object` | No |
| assignment | `Object` | No |
| questions | `Object` | No |
| expected_updated_at | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.courses_lessons.create(
  course: "string_example",
  section: 1,
  title: "Welcome",
  type: "text",
  content: "Welcome to Launch Lab.",
  is_published: false
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

## replace

Update a course lesson

[API reference](https://sell.app/docs/api/courses/manage-course-lessons) · Effect: **write**

```ruby
def replace(
      course:,
      lesson:,
      title: nil,
      type: nil,
      content: SellApp::OMIT,
      is_preview: nil,
      is_published: nil,
      assignment: nil,
      questions: nil,
      expected_updated_at: nil,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| course | `Object` | Yes |
| lesson | `Object` | Yes |
| title | `Object` | No |
| type | `Object` | No |
| content | `Object` | No |
| is_preview | `Object` | No |
| is_published | `Object` | No |
| assignment | `Object` | No |
| questions | `Object` | No |
| expected_updated_at | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.courses_lessons.replace(
  course: "string_example",
  lesson: 1,
  title: "Welcome",
  is_published: false
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

Update a course lesson

[API reference](https://sell.app/docs/api/courses/manage-course-lessons) · Effect: **write**

```ruby
def update(
      course:,
      lesson:,
      title: nil,
      type: nil,
      content: SellApp::OMIT,
      is_preview: nil,
      is_published: nil,
      assignment: nil,
      questions: nil,
      expected_updated_at: nil,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| course | `Object` | Yes |
| lesson | `Object` | Yes |
| title | `Object` | No |
| type | `Object` | No |
| content | `Object` | No |
| is_preview | `Object` | No |
| is_published | `Object` | No |
| assignment | `Object` | No |
| questions | `Object` | No |
| expected_updated_at | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.courses_lessons.update(
  course: "string_example",
  lesson: 1,
  title: "Welcome",
  is_published: false
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

Delete a course lesson

[API reference](https://sell.app/docs/api/courses/manage-course-lessons) · Effect: **consequential**

```ruby
def delete(
      course:,
      lesson:,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| course | `Object` | Yes |
| lesson | `Object` | Yes |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.courses_lessons.delete(
  course: "string_example",
  lesson: 1
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

## reorder

Reorder course lessons

[API reference](https://sell.app/docs/api/courses/reorder-course-lessons) · Effect: **consequential**

```ruby
def reorder(
      course:,
      resources:,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| course | `Object` | Yes |
| resources | `Object` | Yes |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: ENV.fetch("SELLAPP_API_KEY"), store: ENV.fetch("SELLAPP_STORE"))

result = client.courses_lessons.reorder(
  course: "string_example",
  resources: [{ id: 601, section_id: 501 }, { id: 602, section_id: 501 }]
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

