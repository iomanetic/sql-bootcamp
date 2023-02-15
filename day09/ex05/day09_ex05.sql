DROP FUNCTION fnc_persons_female;
DROP FUNCTION fnc_persons_male;

CREATE OR REPLACE FUNCTION fnc_persons(IN pgender VARCHAR DEFAULT 'female') RETURNS TABLE
                                (
                                    id BIGINT,
                                    name VARCHAR,
                                    age INTEGER,
                                    gender VARCHAR,
                                    address VARCHAR
                                )
LANGUAGE sql
AS
$$
    SELECT *
    FROM person AS p
    WHERE p.gender = pgender;
$$;

select *
from fnc_persons(pgender := 'male');

select *
from fnc_persons();