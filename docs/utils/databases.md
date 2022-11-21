# Databases

## PostgreSQL

Relational database, similar to MySql. Once installed, run `psql` to access via command line to the instances.
An instance of postgresql can have multiple databases.

Another interesting command is `pg_dump`, it helps you to generate a backup of your tables into a .sql file.

```
Connection options:
  -h, --host=HOSTNAME      database server host or socket directory (default: "/var/run/postgresql")
  -p, --port=PORT          database server port (default: "5432")
  -U, --username=USERNAME  database user name (default: "<user>")
  -w, --no-password        never prompt for password
  -W, --password           force password prompt (should happen automatically)
```

## Google cloud SQL

From Google cloud you can create an instance of mysql/postgres for you desire database.

You can connect via socket or url to database. Online configuration, require code changes.

In addition, you can have a connection using the [Cloud SQL Auth proxy](https://cloud.google.com/sql/docs/postgres/connect-admin-proxy)

## Firestore

NoSQL database from Google cloud. python libraries to use and access documents.

## References

- [Database 101](https://thomaslarock.com/2018/07/databases-101/)
- [PostgreSQL](https://gist.github.com/McLargo/ae633d1ff481c20c21433074169d283c#file-postgresql-md)
- [PostgreSQL Cheatsheet](https://www.postgresqltutorial.com/postgresql-cheat-sheet/)
- [PostgreSQL Backup](https://www.postgresqltutorial.com/postgresql-administration/postgresql-backup-database/)
- [MongoDB](https://gist.github.com/McLargo/ae633d1ff481c20c21433074169d283c#file-mongodb-md)
- [Google Cloud Postgres]https://cloud.google.com/sql/docs/postgres
- [Firestore](https://firebase.google.com/docs/firestore)
