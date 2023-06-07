## Load data into tables

LOAD DATA INPATH "/tmp/fhv_tripdata_2023-01.parquet" INTO TABLE taxi_info.for_hire_vechicle;
LOAD DATA INPATH "/tmp/fhvhv_tripdata_2023-01.parquet" INTO TABLE taxi_info.fhv_high_volume;
LOAD DATA INPATH "/tmp/green_tripdata_2023-01.parquet" INTO TABLE taxi_info.green_tripdata;
LOAD DATA INPATH "/tmp/yellow_tripdata_2023-01.parquet" INTO TABLE taxi_info.yellow_tripdata;
