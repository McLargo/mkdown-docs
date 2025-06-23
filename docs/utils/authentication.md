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
