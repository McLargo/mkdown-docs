# Data storage

Data storage is the process of storing data in persistent storage systems,
usually huge amounts of data for long periods of time. Data can be originated in
different formats and from different sources, to finally are grouped and stored
together in a data storage system.

## Types of data storage

### Data lakes

Data lakes are a storage repository that can store vast amounts of raw data
(organized or unorganized) in its native format until it is needed. It is a
place to store every type of data.

As schema is not defined, data lakes are more flexible and able to capture and
store data faster than data warehouses.

A data swamp is a data lake containing unstructured, ungoverned data that has
gotten out of hand.

### Data warehouses

Data warehouses are a repository for structured, filtered data that has already
been processed for a specific purpose, mainly for business data analysis and
KPI. Data has already been structured to provide answers to pre-determined
questions for analysis.

## Preprocessing data

There are two popular frameworks for building data processing architectures:

- Extract-Transform-Load (ETL). It has been the traditional approach with data
  warehousing where you extract data from the sources, transform the data in
  your data pipelines (clean and aggregate it) and then load it into your data
  warehouse.

- Extract-Load-Transform (ELT). It is a newer paradigm, where you extract the
  raw, unstructured data and load it in your data warehouse. Then, you run the
  transform step on the data in the data warehouse. With this approach, you can
  have more flexibility in how you do your data transformations compared to
  using data pipelines. You need a modern data warehouse to support this.

## References

- [Data lakes vs data warehouses](https://www.qlik.com/us/data-lake/data-lake-vs-data-warehouse)
