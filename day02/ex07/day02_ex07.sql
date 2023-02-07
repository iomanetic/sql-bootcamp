SELECT piz.name AS pizzeria_name
FROM person p
    JOIN person_visits AS pv ON pv.person_id = p.id
    JOIN pizzeria piz ON pv.pizzeria_id = piz.id
    JOIN menu AS m ON piz.id = m.pizzeria_id
WHERE p.name IN ('Dmitriy')
            AND m.price < 800
            AND pv.visit_date = to_date('2022-01-08', 'YYYY-MM-DD');