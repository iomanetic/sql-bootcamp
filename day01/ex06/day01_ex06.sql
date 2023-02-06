SELECT po.order_date AS action_date,
       p.name AS person_name
FROM person_order po
         JOIN person p on po.person_id = p.id
INTERSECT
SELECT visit_date AS action_date,
       p.name AS person_name
FROM person_visits po
    JOIN person p on po.person_id = p.id
ORDER BY action_date ASC, person_name DESC;