# API Design

Briefly description of what should be consider when designing and developing an
API, some good practices. Design good API from starters is important, as they
can grow quickly and it is hard to change them later. Also, new developers can
have a quicker ramp up to the project.

## Good practices RESTful API

- endpoints in plural
- use `-` instead of `_`
- don't use verbs, use names. actions are implicit in HTTP methods
- basic structure

```text
GET ALL
`api/<resources>`

HTTP status code 200 OK for a successful GET of resource, or empty results.

GET BY ID
`api/<resources>/<id>`

HTTP status code 200 OK for a successful GET of resource.
HTTP status code 404 KO for a KO GET of a not found resource.

POST
`api/<resources>`

If a resource has been created on the origin server, the response SHOULD be 201
(Created) and contain an entity which describes the status of the request and
refers to the new resource, and a Location header (see section 14.30).

PUT
`api/<resources>/<id>`

HTTP status code 200 OK for a successful PUT of an update to an existing
resource. No response body needed. (Per Section 9.6, 204 No Content is even more
appropriate.)

HTTP status code 400 Bad Request for an unsuccessful PUT, with natural-language
text (such as English) in the response body that explains why the PUT failed.
(RFC 2616 Section 10.4)
```

## HTTP Status Code

- 2XX -> success codes range
- 3XX -> redirect codes range
- 4XX -> client error codes range
- 5XX -> server error codes range

[More details](https://developer.mozilla.org/en-US/docs/Web/HTTP/Status)

But, HTTP status codes are not enough to explain what went wrong. To help your
API consumers, include a structured JSON error message, like:

- Error code: A machine-readable error code that identifies the specific error
  condition.
- Error message: A human-readable message that provides a detailed explanation
  of the error.
- Error context: Additional information related to the error, such as the
  request ID, the request parameters that caused the error, or the field(s) in
  the request that caused the error.
- Error links: URLs to resources or documentation that provide additional
  information about the error and how it can be resolved.
- Timestamp: The time when the error occurred.

## Secrets

Never store unencrypted secrets in `.git` repositories. If a secret enters a
repository, private or public, then it should be considered compromised.

**Add sensitive files in [.gitignore](https://github.com/github/gitignore/blob/main/Python.gitignore)**

Store secrets safely. Encrypting your secrets using common tools, such as git
secret. Storing them within a git repository can be beneficial when working in
teams as it keeps secrets synced.

A better solution is to use a "Secrets as a service", such as AWS Secrets
Manager, Vault, [infiscal](https://github.com/Infisical/infisical), Google
Secrets Manager...and forget about secrets management.

Good to implement a secret rotation policy. This is a good practice to avoid
security issues.

Finally, in pre-commit you can add a hook to check if there are secrets in the
code you are trying to push to the repository.

## References

- [API Design](http://apistylebook.com/design/topics/)
- [Pragmatic restful API](https://www.vinaysahni.com/best-practices-for-a-pragmatic-restful-api)
- [Naming rest API endpoints](https://blog.dreamfactory.com/best-practices-for-naming-rest-api-endpoints/)
- [PUT vs POST](https://restfulapi.net/rest-put-vs-post/)
