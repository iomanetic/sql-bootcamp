WITH cte AS (
    SELECT visit_date
    FROM person_visits
    WHERE person_id = 1 OR person_id = 2
)
SELECT missing_date::date
FROM generate_series('2022-01-01', '2022-01-10', interval '1 day') as missing_date
LEFT JOIN cte ON cte.visit_date = missing_date::date
WHERE cte.visit_date IS NULL
ORDER BY missing_date;