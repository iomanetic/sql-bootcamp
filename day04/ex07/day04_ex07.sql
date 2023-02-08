WITH
    is_visit AS
        (
            SELECT piz.id
            FROM person AS p
                     JOIN person_visits AS pv ON p.id = pv.person_id
                     JOIN pizzeria piz ON pv.pizzeria_id = piz.id
            WHERE p.name = 'Dmitriy'
        )

INSERT INTO person_visits (id, person_id, pizzeria_id, visit_date)
VALUES
        ((
            SELECT MAX(id)
            FROM person_visits
        ) + 1,
        (
            SELECT id
            FROM person
            WHERE name = 'Dmitriy'
        ),
        (
            SELECT piz.id
            FROM pizzeria AS piz
                JOIN menu m ON piz.id = m.pizzeria_id
            WHERE piz.id NOT IN (SELECT * FROM is_visit)
                        AND m.price < 800
            LIMIT 1
        ), '2022-01-08');

REFRESH MATERIALIZED VIEW mv_dmitriy_visits_and_eats;