SELECT p.address AS address,
       piz.name AS name,
       COUNT(po.person_id) AS count_of_orders
FROM person AS p
    JOIN person_order po ON p.id = po.person_id
    JOIN menu m ON m.id = po.menu_id
    JOIN pizzeria piz ON m.pizzeria_id = piz.id
GROUP BY address, piz.name
ORDER BY address, name;