SELECT
    CASE
        WHEN p.name IS NULL
            THEN '-'
            ELSE p.name
        END AS person_name,
    pv.visit_date AS visit_date,
    CASE
        WHEN piz.name IS NULL
            THEN '-'
            ELSE piz.name
        END AS pizzeria_name
FROM person p
    FULL JOIN
     (
         SELECT visit_date,
                pizzeria_id,
                person_id
         FROM person_visits
         WHERE visit_date BETWEEN '2022-01-01' AND '2022-01-03'
     ) AS pv
     ON p.id = pv.person_id
    FULL JOIN pizzeria piz ON pv.pizzeria_id = piz.id
ORDER BY person_name, visit_date, pizzeria_name;