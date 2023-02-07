SELECT p.name AS name
FROM person p
         JOIN person_order po on p.id = po.person_id
         JOIN menu m on po.menu_id = m.id
WHERE m.pizza_name IN ('pepperoni pizza', 'mushroom pizza')
  AND p.address IN ('Moscow', 'Samara') AND p.gender = 'male'
ORDER BY name DESC;