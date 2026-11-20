CREATE OR REPLACE TABLE
  `projetobigdata.resumo_diario` AS

SELECT
  DATE(pickup_datetime) AS dia,
  COUNT(*) AS corridas,
  ROUND(AVG(fare_amount), 2) AS tarifa_media

FROM
  `bigquery-public-data.new_york_taxi_trips.tlc_yellow_trips_2016`

WHERE
  fare_amount > 0

GROUP BY dia;
