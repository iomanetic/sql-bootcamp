SET enable_seqscan = off;
EXPLAIN ANALYSE
SELECT m.pizza_name,
       piz.name
FROM menu AS m
    JOIN pizzeria piz on m.pizzeria_id = piz.id