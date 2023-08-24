WITH aggregated_weather AS (
  SELECT
    city,
    DATE(date) AS weather_date,
    SUM(avg_temp) OVER (PARTITION BY city ORDER BY DATE(date)) AS cumulative_temp,
    SUM(total_precip) OVER (PARTITION BY city ORDER BY DATE(date)) AS cumulative_precip
  FROM `capable-fuze-396900.weather_dataset.wetterdaten`
)

SELECT
  *,
  cumulative_temp * cumulative_precip AS weather_fantasy_score
FROM aggregated_weather
