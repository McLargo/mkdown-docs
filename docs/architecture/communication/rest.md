# REST

REST (Representational State Transfer) is an architectural style that defines a
set of constraints to be used for creating web services. RESTful web services
allow clients to access and manipulate resources using a uniform and predefined
set of stateless operations. It uses standard HTTP methods (GET, POST, PUT,
DELETE) to interact with resources.

It is commonly used to build RESTful Apis. Design/develop good API from starters
is important, as they can grow quickly and it is hard to change them later.
Also, new developers can have a quicker ramp up to the project.

## RESTful API

### Making Requests

Rest requires the client to send a request to the server to execute an action. A
request is made up of:

- HTTP verb, which defines what kind of operation to perform.
- headers, which allows the client to pass along information about the request.
- path to a resource, including any identifiers.
- query parameters (optional).
- message/payload containing data (optional).

#### HTTP Verbs

There are 4 basic HTTP verbs (commonly called CRUD) used in requests:

- GET: retrieve a specific resource (by id) or a collection of resources
- POST: create a new resource
- PUT: update a specific resource (by id)
- DELETE: remove a specific resource by id

#### Headers and Accept parameters

In the header of the request, you can specify the type of data you want to send
or receive. Or any other metadata you want to pass along with the request, such
as authentication token.

#### Path

A path to the resource you want to interact with. It is a string that follows
the URL. It can contain identifiers for the resource you want to access, such as
`/users/123` to access the user with id 123.

#### Query Parameters

Query parameters are optional and are used to filter, sort, or paginate the
results.

#### Message/Payload

The message is the data you want to send to the server. It can be in different
formats, such as JSON, XML, or form data. The format send is specified in the
headers.

### Responses

#### Content Types

When the server sends a response, it includes a content type header that tells
the client what kind of data is being sent.

#### HTTP Status Code

There are several
[HTTP status codes](https://developer.mozilla.org/en-US/docs/Web/HTTP/Status)
that the server can send back to the client. They are divided into ranges:

- 2XX -> success codes range
  - 200 OK
  - 201 Created
  - 202 Accepted
  - 204 No Content
- 3XX -> redirect codes range
- 4XX -> client error codes range
  - 400 Bad Request
  - 401 Unauthorized
  - 403 Forbidden
  - 404 Not Found
  - 405 Method Not Allowed
  - 409 Conflict
  - 422 Unprocessable Entity
  - 429 Too Many Requests
- 5XX -> server error codes range

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

### Good practices RESTful API

- parametrize your API endpoints to version them. e.g. `/api/v1/users`.
- group your endpoints by resources and scopes (e.g. `/api/v1/users`,
  `/api/v1/admin/users`).
- resources in plural. e.g. `/users`, `/products`
- use `-` instead of `_`.
- don't use verbs, use names. Actions are implicit in HTTP methods.
- keep naming consistency across your API (paths, query parameters, payload,
  response...).
- validate your inputs and outputs.
- secure your API with authentication and authorization.
- use pagination for large datasets.
- document your API. Tools like [OpenAPI](../../programming/openapi.md) can help
  you to document your API in a standard way.
- usage of Enum type instead of bool for query parameters.
- public id should be UUID instead of an integer. More secure and less
  predictable.
- don't expose internal database structure in your API.
- log each request with unique request ID.
- create common error response.

```text
GET ALL
`api/<resources>`

HTTP status code 200 OK for a successful GET of resource, or empty results. It
should include pagination by default.

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

### Secrets

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
