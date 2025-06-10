# Databases

## Relational databases

### PostgreSQL

Similar to MySql. Once installed, run `psql` to access via command line to the
instances. An instance of postgresql can have multiple databases.

Another interesting command is `pg_dump`, it helps you to generate a backup of
your tables into a .sql file.

```bash
Connection options:
  -h, --host=HOSTNAME      database server host or socket directory (default: "/var/run/postgresql")
  -p, --port=PORT          database server port (default: "5432")
  -U, --username=USERNAME  database user name (default: "<user>")
  -w, --no-password        never prompt for password
  -W, --password           force password prompt (should happen automatically)
```

### Google cloud SQL

From Google cloud you can create an instance of mysql/postgres for you desire
database. You can connect via socket or url to database. Online configuration,
require code changes.

In addition, you can have a connection using the
[Cloud SQL Auth proxy](https://cloud.google.com/sql/docs/postgres/connect-admin-proxy)

## Non-relational databases

### Firestore

NoSQL database from Google cloud. python libraries to use and access documents.

## Graphs databases

Graphs are a very popular way of representing relationships and connections
within your data.

They’re composed of two main components:

- **Vertices** : These represent entities/nodes in your data.
- **Edges** : These represent connections between entities/nodes.

Graph databases are particularly useful when you have a lot of relationships,
because its faster processing of relationships: each node has direct references
to its neighbors, so you don’t need to scan the entire dataset to find
relationships.

It also allows you to perform complex queries in a more natural way, thanks to
graph query language such as Cypher.

### Neo4j

Neo4j is a popular graph database that uses the Cypher query language to
interact with the database.

Your data is stored without restricting it to a pre-defined model, allowing a
very flexible way of thinking about and using it.

## Columnar Databases

Columnar databases store data tables by column rather than by row, where the
values of a data column are serialized together.

By storing data in columns rather than rows, the database can more precisely
access the data it needs to answer a query rather than scanning and discarding
unwanted data in rows. Popular in
[data warehousing](../architecture/patterns/data-storage.md) and
[machine learning](../machine-learning/fundamentals.md).

Some columnar databases are:

- [Big Query](https://cloud.google.com/bigquery/docs/storage_overview)
- [Snowflake](https://docs.snowflake.com/en/user-guide/intro-key-concepts#database-storage).

Columnar database have a series of advantages:

- Compression: Columnar databases can compress data more effectively than
  row-based databases because similar data is stored together.
- Batch transactions.
- Complex query over data.

## References

- [Database 101](https://thomaslarock.com/2018/07/databases-101/)
- [PostgreSQL](https://gist.github.com/McLargo/ae633d1ff481c20c21433074169d283c#file-postgresql-md)
- [PostgreSQL Cheatsheet](https://www.postgresqltutorial.com/postgresql-cheat-sheet/)
- [PostgreSQL Backup](https://www.postgresqltutorial.com/postgresql-administration/postgresql-backup-database/)
- [MongoDB](https://gist.github.com/McLargo/ae633d1ff481c20c21433074169d283c#file-mongodb-md)
- [Google Cloud Postgres](https://cloud.google.com/sql/docs/postgres)
- [Firestore](https://firebase.google.com/docs/firestore)
- [Neo4j](https://gist.github.com/McLargo/ae633d1ff481c20c21433074169d283c#file-neo4j-md)
