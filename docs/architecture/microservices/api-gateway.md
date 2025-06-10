# API Gateway

API Gateway is the entry point for all the public request to your backend
services. It acts like a reverse proxy, being available to all users by an
public IP, and routes the request to the appropriate service. Backend services
are hidden to internet by a firewall, so they are protected from direct access
from the internet.

It is also responsible for the authentication and authorization of the request,
logging, caching, load balancing, and rate limiting...

You can also apply some transformations to the request and response, like http
to grpc, json to xml, headers...

For more complex transformation, some API gateways can be configured with a
stream processing engine, like [Benthos](https://www.benthos.dev/).

Apply business logic is discouraged, because it makes the gateway more complex
and harder to maintain.

Some popular API Gateway services are: nginx, HAProxy and Kong. AWS, Azure and
GCP also provide their own API Gateway services.
