### Creating Hive Database

CREATE DATABASE taxi_info;


## Create table

CREATE TABLE taxi_info.for_hire_vechicle (dispatching_base_num string, pickup_datetime timestamp, dropOff_datetime timestamp, PUlocationID double, DOlocationID double, SR_Flag int, Affiliated_base_number string) STORED AS parquet;

CREATE EXTERNAL TABLE taxi_info.fhv_high_volume (hvfhs_license_num string, dispatching_base_num string, originating_base_num string, request_datetime timestamp, on_scene_datetime timestamp, pickup_datetime timestamp, dropoff_datetime timestamp, PULocationID bigint, DOLocationID bigint, trip_miles double, trip_time bigint, base_passenger_fare double, tolls double, bcf double, sales_tax double, congestion_surcharge double, airport_fee double, tips double, driver_pay double, shared_request_flag string, shared_match_flag string, access_a_ride_flag string, wav_request_flag string, wav_match_flag string) STORED AS parquet;

CREATE TABLE taxi_info.green_tripdata (VendorID bigint, lpep_pickup_datetime timestamp, lpep_dropoff_datetime timestamp, store_and_fwd_flag string, RatecodeID double, PULocationID bigint, DOLocationID bigint, passenger_count double, trip_distance double, fare_amount double, extra double, mta_tax double, tip_amount double, tolls_amount double, ehail_fee int, improvement_surcharge double, total_amount double, payment_type double, trip_type double, congestion_surcharge double) STORED AS parquet;

CREATE EXTERNAL TABLE taxi_info.yellow_tripdata (VendorID bigint, tpep_pickup_datetime timestamp, tpep_dropoff_datetime timestamp, passenger_count double, trip_distance double, RatecodeID double, store_and_fwd_flag string, PULocationID bigint, DOLocationID bigint, payment_type bigint, fare_amount double, extra double, mta_tax double, tip_amount double, tolls_amount double, improvement_surcharge double, total_amount double, congestion_surcharge double, airport_fee double) STORED AS parquet;