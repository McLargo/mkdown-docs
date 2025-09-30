# Proxy vs Reverse Proxy

Both proxy and reverse proxy are servers that are in between clients or servers.
Each have different responsibilities and use cases.

## Proxy server

It can be called also **Forward Proxy**. It is a server that acts on behalf of
clients. When a requests is made, proxy server gets the requests and forwards to
the destination server.

Some common use cases of proxy servers are:

- Serve anonymity: hide the real IP address of the client.
- Cache: see if the request can be served from cache. If yes, server, if not,
  forward the request to the destination server.
- Access control: restrict access to certain resources based on rules.
- Security: filter requests and responses to protect clients from malicious content.
- Accessing geo-restricted content: allow clients to access content that is
  restricted in their region by routing requests through a server located in a
  different region.

## Reverse Proxy

Reverse proxy is a server that is in front of your networks, capturing requests
from clients and forwarding them to the appropriate backend servers.

Some common use cases of reverse proxy servers are:

- Security: protect backend servers from direct exposure to the internet,
  filtering requests and blocking malicious traffic (like DDoS attacks).
- Load balancing: distribute incoming request across several backends servers,
  avoiding overloading a single server.
- Cache: static/dynamic content can be cached (specially assets), reducing
  latency, load and improving performance.
- Authentication: handle authentication and authorization for backend servers,
  centralizing access control.

Some common reverse proxy servers are Nginx, HAProxy, Traefik and Apache HTTP
Server.

## References

- [Proxy server vs Reverse Proxy](https://blog.algomaster.io/p/proxy-vs-reverse-proxy-explained)
