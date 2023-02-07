SELECT person.id,
       person.name,
       person.age,
       person.gender,
       person.address,
       piz.id,
       piz.name,
       piz.rating
FROM person
    CROSS JOIN pizzeria piz
ORDER BY person.id,
         piz.id;