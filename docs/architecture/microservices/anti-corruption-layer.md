# Anti corruption layer

It acts as a barrier layer between external system and internal system.

It protects the external system from any potential upgrade or change in the
internal system, and vice versa. Not only regarding the data format, but also
regarding the protocol used to communicate.

It provides a single point of entry for the external system, which can cause a
single point of failure.

It is a simple version of [Backend for Frontend](../microservices/bff.md).
