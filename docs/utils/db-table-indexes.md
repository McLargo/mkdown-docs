# Database Table Indexes

An important aspect of [database](../utils/databases.md) design is the creation
of indexes, specially those ones that are unique.

## UUIDs

UUIDS are a 128-bit number used to uniquely identify objects in a computer.

In a database, UUIDs can be used as primary keys for tables. But the are some
issues to take a look at:

- **Performance**: to organize indexes, the database needs to sort the data.
  This is a problem when using UUIDs because they are not sequential.
- **Storage**: UUIDs are 128 bits long, which is more than the 32 bits used by
  by auto-incrementing IDs. In a large database, this can lead to a significant
  amount of storage.

On the other hand, UUIDs are unique across different databases and can be
generated in different machines without the need to coordinate with each other.

## Auto-incrementing IDs

Auto-incrementing IDs are a good choice for primary keys in a database. They are
sequential and can be used to organize indexes quickly and efficiently. They
don't take up much storage space.

It is a natural sequence which is easy to predict and identify. Ideally, when
those ids are not exposed to the user.

## UUIDsv7

UUIDv7 is a new version of UUIDs that are sequential, solving performance issue
on insert new records. It offers the best of both worlds: the uniqueness of
UUIDs and the performance of auto-incrementing IDs.

## ULID

ULID offers a timestamp prefix followed by random characters. It allows
efficient sorting and is more compact than UUIDs.

## References

- [Usage of uuids for database keys](https://medium.com/@rabinarayandev/should-you-use-uuids-for-database-keys-597b15b000bb)
