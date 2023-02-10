SELECT p.name AS name,
       m.pizza_name AS pizza_name,
       m.price AS price,
       (100 - pd.discount) / 100 * m.price AS discount_price,
       piz.name AS pizzeria_name
FROM person_discounts AS pd
    JOIN person AS p ON pd.person_id = p.id
    JOIN menu AS m ON pd.pizzeria_id = m.pizzeria_id
    JOIN pizzeria AS piz ON m.pizzeria_id = piz.id
ORDER BY name;