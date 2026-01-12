# Authorization

Don't confuse [authentication](../utils/authentication.md) with authorization.
Authentication is the process of verifying the identity of a user, while
authorization is the process of determining what actions a user is allowed to
perform.

## Oauth 2.0

It is a protocol for authorization, to enable 3pp applications to obtain limited
access to a HTTP service.

When trying to access a protected resource, the client must present an access
token to the server. The token is issued by an authorization server, after a
successful login. Then, the client uses the token to access protected resources
by including it in the `Authorization: Bearer <token>` header of HTTP requests.

When a client makes a request, server side does couple of checks of the token.
Check if the token is valid (correct structure, format, content and token is not
expired...) and verified (signature is using expected algorithm, issuer and
audience claims are the expected), the server grants access to the requested
resource. It returns an error status code otherwise.

Aside from access tokens, refresh tokens can also be issued. They are used to
obtain a new access token when the current one expires, without requiring the
user to log in again.

> Tokens are credentials, so they need to be treated with care.

Scopes can be associated to the token, to limit the access to certain resources.

Keycloak and Okta are popular identity providers that support OAuth2.
