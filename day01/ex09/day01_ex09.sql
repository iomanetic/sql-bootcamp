SELECT piz.name
FROM pizzeria AS piz
WHERE piz.id NOT IN
              (
                SELECT pizzeria_id
                FROM person_visits
              );

SELECT piz.name
FROM pizzeria AS piz
WHERE NOT EXISTS
             (
                SELECT pizzeria_id
                FROM person_visits
                WHERE pizzeria_id = piz.id
              );