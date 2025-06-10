# Sidecar Pattern

As systems and services grows, also requires more complex monitoring, logging,
observability...

The idea of sidecar pattern is to use sidecar service to run together the main
service, isolating non-core logic like logging, monitoring, caching... without
impacting the main service.

Sidecar services can be attaching/detaching easily and depending on
requirements. These modules can be reused across different services, allowing to
shared common functionality without duplicating code.
