CREATE SEQUENCE seq_person_discounts
    INCREMENT 1;

SELECT setval('seq_person_discounts', (
                                       SELECT MAX(id)
                                       FROM person_discounts
                                       ));

ALTER TABLE person_discounts
    ALTER COLUMN id SET DEFAULT nextval('seq_person_discounts');

-- INSERT INTO person_discounts (person_id, pizzeria_id)
--     VALUES (3, 1);

DELETE FROM person_discounts WHERE discount = 0;