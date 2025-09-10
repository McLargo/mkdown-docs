# Cache

Cache storage is used as a layer to store temporary data that needs to be
accessed quickly. It can be implemented at any layer of an infrastructure, from
the database, application, gateway, or even the client side.

## How it works

A cache works as a temporary storage for data that are frequently accessed or
can be reused multiple times. When a requests is made, the system first checks
if the item requested is in the cache. If it is (**cache hits**), the data is
retrieved from the cache, which is much faster than fetching it from the
original source (database, API, etc.). If the item is not in the cache (**cache
miss**), it is fetched from the original source, stored in the cache for future
requests, and then returned to the requester.

## Advantages

- **Speed**: Accessing data from a cache is significantly faster than
  retrieving it from the original source.
- **Reduced Load**: Accessing data from a cache reduces the load of the original
  data source, improving the performance.
- **Cost Efficiency**: Using cache reduces the number of requests to the
  original data.
- **Error Tolerance**: In case the original data source is temporarily
  unavailable, cached data can still be served.

## Disadvantages

- **Staleness**: Cached data may become outdated if the original data changes,
  leading to potential inconsistencies.
- **Memory Usage**: Caches consume memory, which can be a limitation in
  resource-constrained environments.
- **Complexity**: Implementing and managing a cache adds complexity to the
  system, including the need for cache invalidation strategies.

## Types of Cache

- **In-Memory Cache**: Data is stored in the RAM of the server, providing
  extremely fast access times. Examples include Redis and Memcached.
- **Distributed Cache**: A cache that is shared across multiple servers or
  instances, allowing for scalability and high availability. Examples include
  Amazon ElastiCache and Apache Ignite.
- **Client-Side Cache**: Data is stored on the client side, such as in browsers
  or mobile devices, to reduce latency and improve user experience.

## Invalidation Strategies

Cache invalidation is the process of removing or updating data in the cache, to
make sure data is up-to-date. Common strategies include:

- **Time-Based Expiration**: Entries are automatically removed from the cache
  after a specified time period (TTL - Time To Live).
- **Manual Invalidation**: Entries are explicitly removed or updated by the
  application, specially when original data is modified/removed.
- **Least Recently Used (LRU)**: The least recently accessed items are removed
  when the cache reaches its capacity.

## Cache Database Strategies

One common scenario to use cache is to reduce queries to a database. See below
common strategies:

- **Write-Through**: When data is written, is written to both cache and database
  at the same time.
- **Write-Back**: Data is written to the cache first, and then asynchronously to
  the database.
- **Write-Around**: Data is written to the database.Only a cache miss will cause
  data to be available in the cache.
- **Read-Through**: When data is requested, the cache is checked first. If the
  data is not found, it is fetched from the database and stored in the cache.
- **Cache-Aside**: Manage by the application. It is responsible for loading data
  into the cache on a cache miss, and for updating or invalidating the cache
  when data is modified. It requires more effort to implement, but provides more
  control over when data is cached and when it is removed.

Keep in mind that these strategies may not be natively supported by your
database and may require additional implementation in your application logic.

## References

- [How to Implement Cache in Your Golang API](https://blog.stackademic.com/how-to-implement-cache-in-your-golang-api-cea87a260e21)
