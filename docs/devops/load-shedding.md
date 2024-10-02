# Load shedding

Load shedding is a technique used to reduce the load on a system by prioritizing
requests and dropping the ones that are less important. This is useful when the
system is under heavy load and needs to prioritize certain requests over others.

## Why load shedding

When a system is under heavy load, it can become unresponsive and slow down
their services offered. This can lead to a poor user experience and even system
failures.

## How to implement load shedding

It is important to identify which requests are more important than others in
your system.

It can be implemented in different ways:

- Api Gateway: The Api Gateway can be configured to drop requests based on
  certain criteria, like the number of requests per second, the type of request,
  etc.
- Service: Each service can implement its own load shedding mechanism. This can
  be done by using a queue to store incoming requests and processing them based
  on their priority.

## Benefits of load shedding

- **Improved performance**: By dropping less important requests, the system can
  focus on processing the most important ones, like payments or critical
  requests.
- **Better user experience**: By prioritizing certain requests, the system can
  ensure that users get a better experience, even when the system is under heavy
  load.
- **Cost savings**: If system is crashing, more and more request can come. If
  replication is in place, more servers will be automatically added to handle
  the load. By dropping less important requests, there is no need for this
  replication, saving costs until system is stable again.
- **Single cluster**: No need to have multiple clusters to handle different
  types of requests. Everything can be handled by a single cluster with load
  shedding inside the services.
- **CPU base**: If the system is CPU bound, it can be configured to drop
  requests when CPU is above a certain threshold. And start processing again
  when CPU is below.
