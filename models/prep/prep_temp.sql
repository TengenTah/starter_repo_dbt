WITH temp_daily AS (
    SELECT * 
    FROM {{ref('staging_temp')}}
),
add_weekday AS (
    SELECT *,
    DATE_PART('dow', date) AS weekday,
    DATE_PART('day', date) AS day_num,
    DATE_PART('week', date) AS week,
    DATE_PART('year', date) AS year
    FROM temp_daily
)
SELECT *
FROM add_weekday