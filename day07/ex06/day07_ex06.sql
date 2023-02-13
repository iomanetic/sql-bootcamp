SELECT piz.name AS name,
       COUNT(po.menu_id) AS count_of_orders,
       ROUND(AVG(m.price), 2) AS average_price,
       MAX(m.price) AS max_price,
       MIN(m.price) AS min_price
FROM person_order AS po
    JOIN menu m ON po.menu_id = m.id
    JOIN pizzeria piz ON m.pizzeria_id = piz.id
GROUP BY name
ORDER BY name;