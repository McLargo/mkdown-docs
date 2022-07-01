# Developing an API

Briefly description of what should be consider when developing an API, some good practices.

### Good practices RESTful API

- endpoints in plural
- use `-` instead of `_`
- don't use verbs, use names. actions are implicit in HTTP methods
- basic structure
```text
GET ALL
`api/<resources>`

GET BY ID
`api/<resources>/<id>`

POST
`api/<resources>`

If a resource has been created on the origin server,
the response SHOULD be 201 (Created) and contain an entity which describes the status
of the request and refers to the new resource, and a Location header (see section 14.30).

PUT
`api/<resources>/<id>`

HTTP status code 200 OK for a successful PUT of an update to an existing resource.
No response body needed. (Per Section 9.6, 204 No Content is even more appropriate.)

HTTP status code 400 Bad Request for an unsuccessful PUT, with natural-language text (such as English)
in the response body that explains why the PUT failed. (RFC 2616 Section 10.4)
```

## HTTP Status Code

[comment]: <> (TODO)

## Secrets

Never store unencrypted secrets in `.git` repositories. If a secret enters a repository, private or public, then it should be considered compromised.

**Add sensitive files in `.gitignore`**

[comment]: <> (TODO find a .gitignore python template)

Store secrets safely. Encrypting your secrets using common tools, such as git secret. Storing them within a git repository can be beneficial when working in teams as it keeps secrets synced.

Or use "Secrets as a service" solutions, such as AWS Secrets Manager, Vault, Google Secrets Manager...


## References

- [Pragmatic restful API](https://www.vinaysahni.com/best-practices-for-a-pragmatic-restful-api)
- [Naming rest API endpoints](https://blog.dreamfactory.com/best-practices-for-naming-rest-api-endpoints/)
- [PUT vs POST](https://restfulapi.net/rest-put-vs-post/)
