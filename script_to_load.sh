#!/bin/bash

## Load data to the HDFS.

curl -o /var/tmp/fhvhv_tripdata_2023-01.parquet https://d37ci6vzurychx.cloudfront.net/trip-data/fhvhv_tripdata_2023-01.parquet
curl -o /var/tmp/fhv_tripdata_2023-01.parquet https://d37ci6vzurychx.cloudfront.net/trip-data/fhv_tripdata_2023-01.parquet
curl -o /var/tmp/green_tripdata_2023-01.parquet https://d37ci6vzurychx.cloudfront.net/trip-data/green_tripdata_2023-01.parquet
curl -o /var/tmp/yellow_tripdata_2023-01.parquet https://d37ci6vzurychx.cloudfront.net/trip-data/yellow_tripdata_2023-01.parquet

hdfs dfs -put /var/tmp/fhv_tripdata_2023-01.parquet /tmp/
hdfs dfs -put /var/tmp/fhvhv_tripdata_2023-01.parquet /tmp/
hdfs dfs -put /var/tmp/green_tripdata_2023-01.parquet /tmp/
hdfs dfs -put /var/tmp/yellow_tripdata_2023-01.parquet /tmp/

beeline -f create_database_table.hql
beeline -f load_data.hql