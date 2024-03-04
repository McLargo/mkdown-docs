# Service mesh

A service mesh is an infrastructure layer that handles communication between the
microservices/machines in your backend.

As [microservices](../architecture/microservices.md) are added to the backend,
the number of connections between them grows exponentially. This can lead to a
lot of complexity and potential issues. A service mesh can help manage this
complexity by providing a way to manage and monitor the communication between
microservices.

## Features

- Service Discovery: for each microservice, new instances are constantly being
  spun up/down. The service mesh keeps track of the IP addresses/port number of
  these instances and routes requests to/from them.

- Load balancing: the service mesh can distribute the load across the different instances
  of a microservice, specially to one with less load.

- Observability: the service mesh can provide metrics, logs and traces about the
  communication between microservices.

- Resilience: the service mesh can provide features such as circuit breaking,
  retries, timeouts, rate limits, etc.

- Security: the service mesh can provide features such as encryption,
  authentication and, authorization from service to service. Also you can set
  limits on which services can talk to each other.

- Deployment: the service mesh can provide features such as canary deployments,
  A/B deployments, etc.

## Architecture

- **Data Plane**: the data plane is the part of the service mesh that is
  responsible for handling the actual traffic (inbound/outbound communication)
  between microservices. Consists of a set of proxies deployed alongside every
  instance. [Envoy](https://www.envoyproxy.io/docs) is a proxy sample.

- **Control Plane**: the control plane is the part of the service mesh that is
  responsible for managing the configuration of the data plane, aside from
  handling service discovery. You can configure things like retries, rate
  limiting policies, health checks, etc. in the control plane. The control plane
  [Istio](https://istio.io/docs) is a sample.
