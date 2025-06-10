# Command Query Responsibility Segregation Pattern (CQRS)

It is a simple pattern, used in huge applications. It separates read and write
operations in different models or services, allowing to optimize each
independently.

You can optimize read databases for fast queries (e.g., Elasticsearch), and you
can scale write operations independently (e.g., using a message queue).

One of the drawbacks of this pattern is that it can lead to data
inconsistencies, as synchronization between read and write models can take time,
specially if we are talking about large volume of data.
