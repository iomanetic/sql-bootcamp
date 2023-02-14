SELECT p.name AS name,
       m.pizza_name AS pizza_name,
       m.price AS price,
       (100 - pd.discount) / 100 * m.price AS discount_price,
       piz.name AS pizzeria_name
FROM person_order po
         JOIN person p ON p.id = po.person_id
         JOIN menu m ON po.menu_id = m.id
         JOIN pizzeria piz ON m.pizzeria_id = piz.id
         JOIN person_discounts pd ON (po.person_id = pd.person_id AND piz.id = pd.pizzeria_id)
ORDER BY name, pizza_name;