# OpenAPI Specification

OpenAPI Specification is an API description format for REST APIs. It is in a
machine-readable format (but also very human friendly), so it can have data,
description and linting validation, making sure format is correct. Generates a
documentation for humans, which is always up-to-date.

## Why is needed?

It provides human and machine readable information about your REST API you are
devolving. It is a nice tool to share information internally and externally.
People knows in which stage is the project, are, what kind of response are
expected... everything is shared in a common place visible for everyone involved
in the project. Contracts are available (and testable). Even if code underneath
is not fully ready, contracts are and will (should) not change whatsoever.

OpenAPI description should be committed to source control, and, in fact, they
should be among the first files to be committed. From there, they should also
participate in Continuous Integration processes.

Make the OpenAPI Documents Available to the Users. Beautifully-rendered
documents can be very useful for the users of an API, but sometimes they might
want to access the source OpenAPI description. For instance, to use tools to
generate client code for them, or to build automated bindings for some language.
Therefore, making the OpenAPI documents available to the users is an added bonus
for them. The document can even be made available through the same API to allow
runtime discovery.

No need to write document by hand, there are nice tools or even frameworks like
[FastAPI](../programming/fastapi.md) that generates OpenAPI specification on the
fly.

## Approaches

There are two main different approaches regarding OpenAPI implementation. Apply
one of the approaches regarding the project needs.

### Use a Design-First Approach

Without any line of code, start the API design. OpenAPI specification is created
to show the structure of the API, and then code is implemented to match the
specification. Some tools can automatically build boilerplate from OpenAPI
specification. It can be slower, but if requirements are clear, it is a good
starting point. Contracts will be available from the beginning, and models can
be reused easily.

### Use a Code-First Approach

API is implemented together with the code, and OpenAPI specification is created
with code comments, annotation and description in it. It is faster, but can lead
to changes in the contract (may not be an issue if the project is starting up).

## References

- [Online swagger editor](https://editor.swagger.io/#/)
- [Swagger specification](https://swagger.io/docs/specification/about/)
- [Learn OpenAPI](https://learn.openapis.org/)
