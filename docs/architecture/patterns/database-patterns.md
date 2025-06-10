# Database Patterns

There are several database patterns, each one with its own use case. Depending
on the architecture/use case, you can choose one or another.

## Master-slave replication

There are different database in the cluster, the master and the slave(s). The
master database is the node where all the writes operations (CREATE, UPDATE,
DELETE) are performed. The slaves databases are the nodes where all the read
operations (SELECT) are performed. Data is sync asynchronously to each slave
database from the master.

Replica databases **MUST be read-only**, as they are only used for read. Any
write in the replica can lead to data inconsistency.

Easy to scale out, as you can add more slave nodes to the cluster at any time.
Additionally, slave nodes can be configured to be used only for special
operations/users, such as reports or heavy query operations, adding extra
control.

## Sharding

Involves breaking up a very large data intro smaller, more manageable pieces
called shards. Usually, each shard is held in different nodes. Shards are
separated, not sharing any of the same data, except replicating table commonly
used in all shards.

Sharding is implemented at application code. Developers needs to be really
careful, because if it is not done correctly, it can lead to data
inconsistency/loss.

There are two types of sharding: horizontal and vertical.

### Horizontal Sharding

Horizontal sharding is a type of database partitioning that separates very large
table into multiple smaller tables, aka partitions. Each partition has the same
schema, but entirely different rows.

It can be scaled out by adding more nodes to the cluster, and each node can have
a different subset of data.

A query is faster in a shared architecture, as it only needs to scan a single
shard. In a non-shared architecture, the query needs to scan the entire table.

### Vertical Sharding

Type of database partitioning that separates a table with many columns into
smaller tables with fewer columns. Each new table has the same number of rows,
but fewer columns, grouping columns that are frequently accessed together.

It can be scaled up by adding more resources, such as RAM or CPU to the node.

## References

- [Database sharding](https://www.digitalocean.com/community/tutorials/understanding-database-sharding)
