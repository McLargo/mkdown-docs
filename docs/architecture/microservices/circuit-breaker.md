# Circuit breaker

This pattern is used to prevent cascading failure in your distributed system. If
a service is failing, it can impact in other services causing bigger problems.
The idea behind this patter is to automatically detect when a service is
failing. You can either stop sending requests to the service, have a default
fallback or return an error.

After a certain period of time, circuit breaker will allow a limited number of
request to see if the service is recovered. If it is, all traffic is allowed
again. If it is not, circuit breaker will be enabled again and the process is
repeated.

Metrics are important to monitor the circuit breaker. Tools like prometheus or
grafana can help you to identify anomalies in your system.
