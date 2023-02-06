SELECT person.id,
       person.name,
       person.age,
       person.gender,
       person.address,
       piz.id,
       piz.name,
       piz.rating
FROM person
    JOIN pizzeria piz
    ON piz.id = person.id
ORDER BY person.id,
         piz.id;