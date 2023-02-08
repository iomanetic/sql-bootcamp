WITH
    female_pizzerias AS
    (
        SELECT piz.name AS pizzeria_name
        FROM person p
            JOIN person_visits pv ON p.id = pv.person_id
            JOIN pizzeria piz ON pv.pizzeria_id = piz.id
        WHERE p.gender = 'female'
    ),
    male_pizzerias AS
    (
        SELECT piz.name AS pizzeria_name
        FROM person AS p
            JOIN person_visits pv ON p.id = pv.person_id
            JOIN pizzeria piz ON pv.pizzeria_id = piz.id
        WHERE p.gender = 'male'
    )
(SELECT female_pizzerias.pizzeria_name
FROM female_pizzerias
EXCEPT ALL
SELECT male_pizzerias.pizzeria_name
FROM male_pizzerias)
UNION ALL
(SELECT male_pizzerias.pizzeria_name
FROM male_pizzerias
EXCEPT ALL
SELECT female_pizzerias.pizzeria_name
FROM female_pizzerias)
ORDER BY pizzeria_name;