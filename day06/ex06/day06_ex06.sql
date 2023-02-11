CREATE SEQUENCE seq_person_discounts
    INCREMENT 1;

SELECT setval('seq_person_discounts', (
                                       SELECT MAX(id)
                                       FROM person_discounts
                                       ));

ALTER TABLE person_discounts
    ALTER COLUMN id SET DEFAULT nextval('seq_person_discounts');

DELETE FROM person_discounts WHERE discount = 0;