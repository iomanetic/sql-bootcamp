(SELECT piz.name AS name,
        COUNT(pizzeria_id) AS count,
        'order' AS action_type
 FROM person_order AS po
          JOIN menu m ON m.id = po.menu_id
          JOIN pizzeria piz ON m.pizzeria_id = piz.id
 GROUP BY piz.name
 ORDER BY action_type, count DESC
 LIMIT 3)
UNION ALL
(SELECT piz.name AS name,
        COUNT(pizzeria_id) AS count,
        'visit' AS action_type
 FROM person_visits AS pv
          JOIN pizzeria piz ON piz.id = pv.pizzeria_id
 GROUP BY piz.name
 ORDER BY action_type, count DESC
 LIMIT 3);