# Authentication Utilities

This document highlight some algorithms to authenticate users in a system.

## Time-based one-time password (TOTP)

It is an algorithm that generates a one time password based on the current time
and a shared secret key. It is widely used in two-factor authentication (2FA)
systems.

Both client and server must share the secret key. The client generates the code
based on the current time and the shared secret key, and sends it to the server.
The server then generates their own code, and compares it with the code sent by
the client. If they match, the authentication is successful.

TOTP codes works only for certain period of time, usually 30 seconds. After
that, the code is no longer valid and a new one is generated.

## JWT

[JWT](https://www.jwt.io/introduction#what-is-json-web-token) is an
authentication mechanism to transmit information via JSON objects in a secure
way. Used to authenticate user in web applications, specially REST APIs. The
information is digitally signed, so it can be verified and trusted.

A JWT token is composed by three parts, encoded using Base64Url and concatenated
with dots.

- **Header**: contains data about the token, like the algorithm used to sign it
  and the type of token.
- **Payload**: contains the claims, which are statements about an entity.
  Registered (predefined, but not mandatory), public (must be unique) and
  private (custom) claims are supported.
- **Signature**: used to verify that the token hasn't been altered.

When a user logs in, the server generates a JWT token and sends it back to the
client. Tokens are credentials, so they need to be treated with care.

The clients uses the token to access protected resources by including it in the
`Authorization: Bearer <token>` header of HTTP requests. If the token is valid
(correct structure, format, content and token is not expired...) and verified
(signature is using expected algorithm, issuer and audience claims are the
expected), the server grants access to the requested resource. It returns an
error status code otherwise.

Keycloak and Okta are popular identity providers that support JWT.
