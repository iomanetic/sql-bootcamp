SELECT id
FROM person_visits
WHERE visit_date BETWEEN '2022-01-06' and '2022-01-09'
ORDER BY id DESC;