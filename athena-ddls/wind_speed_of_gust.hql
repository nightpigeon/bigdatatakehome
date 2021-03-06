CREATE EXTERNAL TABLE wind_speed_of_gust(
  time_1 string, 
  grid_latitude float, 
  grid_longitude float, 
  forecast_reference_time string, 
  forecast_period_0 string, 
  height float, 
  level_height tinyint, 
  model_level_number tinyint, 
  sigma double, 
  height_0 smallint, 
  level_height_0 int, 
  model_level_number_0 smallint, 
  sigma_0 double, 
  wind_speed_of_gust double)
PARTITIONED BY ( 
  load_dt string, 
  ts string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY ',' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  's3://awstakehometest/wind_speed_of_gust'
;
