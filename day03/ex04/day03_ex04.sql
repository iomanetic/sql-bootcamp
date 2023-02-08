WITH
    female_pizzerias AS
        (
            SELECT piz.name AS pizzeria_name
            FROM person p
                JOIN person_order AS po ON p.id = po.person_id
                JOIN menu AS m ON m.id = po.menu_id
                JOIN pizzeria AS piz ON m.pizzeria_id = piz.id
            WHERE p.gender = 'female'
        ),
    male_pizzerias AS
        (
            SELECT piz.name AS pizzeria_name
            FROM person p
                JOIN person_order AS po ON p.id = po.person_id
                JOIN menu AS m ON m.id = po.menu_id
                JOIN pizzeria AS piz ON m.pizzeria_id = piz.id
            WHERE p.gender = 'male'
        )
(SELECT female_pizzerias.pizzeria_name
FROM female_pizzerias
EXCEPT
SELECT male_pizzerias.pizzeria_name
FROM male_pizzerias)
UNION
(SELECT male_pizzerias.pizzeria_name
FROM male_pizzerias
EXCEPT
SELECT female_pizzerias.pizzeria_name
FROM female_pizzerias)
ORDER BY pizzeria_name;