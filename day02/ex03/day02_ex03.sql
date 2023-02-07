WITH cte AS
         (
             SELECT missing_date::date
             FROM generate_series('2022-01-01', '2022-01-10', interval '1 day') AS missing_date
         )
SELECT cte.missing_date::date
FROM cte
         LEFT JOIN
     (
         SELECT visit_date
         FROM person_visits
         WHERE person_id = 1 OR person_id = 2
     ) AS pv
     ON pv.visit_date = cte.missing_date::date
WHERE pv.visit_date IS NULL
ORDER BY missing_date;