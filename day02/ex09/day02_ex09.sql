SELECT p.name AS name
FROM person p
WHERE gender = 'female'
  AND 'cheese pizza' IN
    ((
        SELECT pizza_name
        FROM menu
            JOIN person_order po on menu.id = po.menu_id
            JOIN person on po.person_id = p.id
    ))
  AND 'pepperoni pizza' IN
    ((
        SELECT pizza_name
        FROM menu
            JOIN person_order po on menu.id = po.menu_id
            JOIN person on po.person_id = p.id
    ))
ORDER BY name;