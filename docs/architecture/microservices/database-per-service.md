# Database Per Microservice Pattern

In real world applications, we have different
[databases](../../utils/databases.md), each one with pros and cons.

Selection one or other database should not impact the service design, as each
service can have its own database, allowing to use the best database, size and
resources for each service. This is known as the "Database Per Microservice"
pattern.

This patterns also isolated the data storage of each service, making sensible
data secure to other services. Isolation also enable independent scalability of
database service.

As drawback, it can increase the complexity of the system and maintenance.
