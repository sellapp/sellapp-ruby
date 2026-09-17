# oauth

[All resources](../methods.md)

## get_oauth_authorization_server_metadata

Read OAuth server metadata

[API reference](https://sell.app/docs/api/oauth) · Effect: **read**

```ruby
def get_oauth_authorization_server_metadata(request_options: {})
```

| Argument | Native type | Required |
| --- | --- | --- |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: "", store: "")

result = client.oauth.get_oauth_authorization_server_metadata
puts result.inspect
```

### Authentication and errors

Supported credential alternatives (each object is one alternative):

```json
[]
```

Documented HTTP responses: 200, 429, 500. See the API reference for field-level validation and consequences.

[Response access, transport controls, pagination, and typed errors](../usage.md)

## get_oauth_authorization_request

Review CLI authorization

[API reference](https://sell.app/docs/api/oauth) · Effect: **read**

```ruby
def get_oauth_authorization_request(
      response_type:,
      client_id:,
      redirect_uri:,
      state:,
      code_challenge:,
      code_challenge_method:,
      scope: nil,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| response_type | `Object` | Yes |
| client_id | `Object` | Yes |
| redirect_uri | `Object` | Yes |
| state | `Object` | Yes |
| code_challenge | `Object` | Yes |
| code_challenge_method | `Object` | Yes |
| scope | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: "", store: "")

result = client.oauth.get_oauth_authorization_request(
  response_type: "code",
  client_id: "01992a65-e064-71ba-b38f-902b7966a6be",
  redirect_uri: "http://127.0.0.1:49152/callback",
  state: "RANDOM_STATE",
  code_challenge: "E9Melhoa2OwvFrEMTJguCHaoeK1t8URWbuGJSstw-cM",
  code_challenge_method: "S256"
)
puts result.inspect
```

### Authentication and errors

Supported credential alternatives (each object is one alternative):

```json
[]
```

Documented HTTP responses: 200, 302, 400, 401, 429, 500. See the API reference for field-level validation and consequences.

[Response access, transport controls, pagination, and typed errors](../usage.md)

## approve_oauth_authorization

Approve CLI access

[API reference](https://sell.app/docs/api/oauth) · Effect: **consequential**

```ruby
def approve_oauth_authorization(
      auth_token:,
      client_id:,
      state:,
      token:,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| auth_token | `Object` | Yes |
| client_id | `Object` | Yes |
| state | `Object` | Yes |
| token | `Object` | Yes |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), browser_session: ENV.fetch("SELLAPP_BROWSER_SESSION"), store: "")

result = client.oauth.approve_oauth_authorization(
  auth_token: "CONSENT_AUTH_TOKEN",
  client_id: "01992a65-e064-71ba-b38f-902b7966a6be",
  state: "RANDOM_STATE",
  token: "CSRF_TOKEN"
)
puts result.inspect
```

### Authentication and errors

Supported credential alternatives (each object is one alternative):

```json
[
  {
    "oauthBrowserSession": []
  }
]
```

Documented HTTP responses: 302, 400, 401, 403, 419, 422, 429, 500. See the API reference for field-level validation and consequences.

[Response access, transport controls, pagination, and typed errors](../usage.md)

## deny_oauth_authorization

Deny CLI access

[API reference](https://sell.app/docs/api/oauth) · Effect: **consequential**

```ruby
def deny_oauth_authorization(
      auth_token:,
      token:,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| auth_token | `Object` | Yes |
| token | `Object` | Yes |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), browser_session: ENV.fetch("SELLAPP_BROWSER_SESSION"), store: "")

result = client.oauth.deny_oauth_authorization(
  auth_token: "CONSENT_AUTH_TOKEN",
  token: "CSRF_TOKEN"
)
puts result.inspect
```

### Authentication and errors

Supported credential alternatives (each object is one alternative):

```json
[
  {
    "oauthBrowserSession": []
  }
]
```

Documented HTTP responses: 302, 400, 401, 419, 429, 500. See the API reference for field-level validation and consequences.

[Response access, transport controls, pagination, and typed errors](../usage.md)

## exchange_oauth_token

Exchange or refresh OAuth tokens

[API reference](https://sell.app/docs/api/oauth) · Effect: **consequential**

```ruby
def exchange_oauth_token(
      grant_type:,
      client_id: nil,
      client_secret: nil,
      code: nil,
      redirect_uri: nil,
      code_verifier: nil,
      refresh_token: nil,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| grant_type | `Object` | Yes |
| client_id | `Object` | No |
| client_secret | `Object` | No |
| code | `Object` | No |
| redirect_uri | `Object` | No |
| code_verifier | `Object` | No |
| refresh_token | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: "", store: "")

result = client.oauth.exchange_oauth_token(
  client_id: "01992a65-e064-71ba-b38f-902b7966a6be",
  grant_type: "authorization_code",
  code: "AUTHORIZATION_CODE",
  redirect_uri: "http://127.0.0.1:49152/callback",
  code_verifier: "dBjftJeZ4CVP-mB92K27uhbUJU1p1r_wW1gFWFOEjXk"
)
puts result.inspect
```

### Authentication and errors

Supported credential alternatives (each object is one alternative):

```json
[
  {},
  {
    "oauthClientBasic": []
  }
]
```

Documented HTTP responses: 200, 400, 401, 429, 500. See the API reference for field-level validation and consequences.

[Response access, transport controls, pagination, and typed errors](../usage.md)

## revoke_oauth_token

Revoke an OAuth token

[API reference](https://sell.app/docs/api/oauth) · Effect: **consequential**

```ruby
def revoke_oauth_token(
      token:,
      client_id: nil,
      client_secret: nil,
      token_type_hint: nil,
      request_options: {}
    )
```

| Argument | Native type | Required |
| --- | --- | --- |
| token | `Object` | Yes |
| client_id | `Object` | No |
| client_secret | `Object` | No |
| token_type_hint | `Object` | No |
| request_options | `Object` | No |

Returns: `Object`.

```rb
require "sellapp"

client = SellApp::Client.new(base_url: ENV.fetch("SELLAPP_API_BASE_URL"), api_key: "", store: "")

result = client.oauth.revoke_oauth_token(
  client_id: "01992a65-e064-71ba-b38f-902b7966a6be",
  token: "REFRESH_TOKEN",
  token_type_hint: "refresh_token"
)
puts result.inspect
```

### Authentication and errors

Supported credential alternatives (each object is one alternative):

```json
[
  {},
  {
    "oauthClientBasic": []
  }
]
```

Documented HTTP responses: 200, 400, 401, 429, 500. See the API reference for field-level validation and consequences.

[Response access, transport controls, pagination, and typed errors](../usage.md)

