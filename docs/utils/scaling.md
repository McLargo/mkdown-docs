# Scaling

Scaling is the ability of a service to handle more load by adding resources.
There are two main types of scaling: vertical scaling and horizontal scaling.

## Vertical Scaling

Vertical scaling is possibly the quickest way to scale a service, by increasing
the resources of the existing server. This can be done by adding more CPU, RAM,
or storage to the server.

This approach has limitations, as there is a maximum capacity that a single
server can handle. Additionally, there may be downtime associated with upgrading
the server. Cost it is another factor to consider, as better hardware are often
more expensive.

## Horizontal Scaling

Horizontal scaling is to replicate the service across multiple servers,
distributing the load among them. This approach can handle a much larger load,
as more servers can be added as needed. This adds redundancy, as if one server
fails, the others can continue to handle the load. But it requires a more
complex architecture, including load balancers to distribute the traffic and
mechanisms to keep data consistent across servers.

Load balancing is the middle man in horizontal scaling, distributing incoming
traffic across multiple servers to ensure no single server becomes overwhelmed.
It uses different algorithms to determine how to distribute the traffic, such as
round-robin (sequential), least connections, or IP hash (all requests from the
same client IP are sent to the same server).

## Auto-scaling

Modern tools or cloud providers offers auto-scaling features, which can
automatically adjust the number of servers based on the current load. This can
help to optimize costs, as resources are only used when needed.

## References

- [Vertical Scaling](https://blog.algomaster.io/i/159804278/vertical-scaling)
- [Horizontal Scaling](https://blog.algomaster.io/i/159804278/horizontal-scaling)
