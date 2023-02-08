CREATE VIEW v_price_with_discount AS
    SELECT p.name AS name,
           m.pizza_name AS pizza_name,
           m.price AS price,
           ROUND(m.price * 0.9) AS discount_price
    FROM person AS p
        JOIN person_order po on p.id = po.person_id
        JOIN menu m on m.id = po.menu_id
    ORDER BY name,
             pizza_name;