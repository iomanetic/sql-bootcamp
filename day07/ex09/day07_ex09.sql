SELECT p.address AS address,
       ROUND(MAX(p.age::numeric) - (MIN(p.age::numeric) / MAX(p.age::numeric)), 2) AS formula,
       ROUND(AVG(p.age::numeric), 2) AS average,
       ROUND(MAX(p.age::numeric) - (MIN(p.age::numeric) / MAX(p.age::numeric)), 2)
                                    > ROUND(AVG(p.age::numeric), 2) AS comparison
FROM person AS p
GROUP BY address
ORDER BY address;