DELETE FROM person_order AS po
    WHERE po.order_date = to_date('2022-02-25', 'YYYY-MM-DD');

DELETE FROM menu AS m
    WHERE m.pizza_name = 'greek pizza';