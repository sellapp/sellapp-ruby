# oauth_management

[All resources](../methods.md)

## get_oauth_installation

Read your CLI connection

[API reference](https://sell.app/docs/api/oauth) · Effect: **read**

```ruby
def get_oauth_installation(request_options: {})
```

| Argument | Native type | Required |
| --- | --- | --- |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), access_token: ENV.fetch("SELLAPP_ACCESS_TOKEN"), store: "")

result = client.oauth_management.get_oauth_installation
puts result.inspect
```

### Authentication and errors

Supported credential alternatives (each object is one alternative):

```json
[
  {
    "oauthAccessToken": [
      "admin"
    ]
  }
]
```

Documented HTTP responses: 200, 400, 401, 403, 404, 422, 429, 500. See the API reference for field-level validation and consequences.

[Response access, transport controls, pagination, and typed errors](../usage.md)

## delete_oauth_installation

Disconnect your CLI connection

[API reference](https://sell.app/docs/api/oauth) · Effect: **consequential**

```ruby
def delete_oauth_installation(request_options: {})
```

| Argument | Native type | Required |
| --- | --- | --- |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), access_token: ENV.fetch("SELLAPP_ACCESS_TOKEN"), store: "")

result = client.oauth_management.delete_oauth_installation
puts result.inspect
```

### Authentication and errors

Supported credential alternatives (each object is one alternative):

```json
[
  {
    "oauthAccessToken": [
      "admin"
    ]
  }
]
```

Documented HTTP responses: 204, 400, 401, 403, 404, 422, 429, 500. See the API reference for field-level validation and consequences.

[Response access, transport controls, pagination, and typed errors](../usage.md)

