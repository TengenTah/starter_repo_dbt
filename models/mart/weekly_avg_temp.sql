WITH total_avg AS(
    SELECT
    city, country, year, lat, lon,
    AVG(avgtemp_c) AS avg_temp_week,
    MAX(maxtemp_c) AS max_temp_week,
    MIN(mintemp_c) AS min_temp_week
    FROM {{ref('prep_temp')}}
    GROUP BY city, country, year, week, lat, lon
)
SELECT * FROM total_avg