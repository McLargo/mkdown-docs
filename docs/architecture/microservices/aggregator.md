# Aggregator Pattern

It is used to aggregate data from multiple services into a single response. It
simplifies the client-side experience by reducing the number of requests needed
to retrieve data from multiple services. Instead of making multiple requests to
different services, the client can make a single request to the aggregator
service, which then fetches the required data from the individual services and
combines it into a single response.

graphQL is a common technology used to implement the aggregator pattern, as it
allows clients to specify the data they need in a single query, and the server
can then fetch the required data from multiple services and return it in a
single response.

Similar to [anti-corruption layer](../microservices/anti-corruption-layer.md),
it is a single point of entry and single point of failure. If the aggregator
service is down, client requests are not completed.

It is a simple version of [Backend for Frontend](../microservices/bff.md).
