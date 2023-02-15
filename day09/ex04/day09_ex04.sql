CREATE OR REPLACE FUNCTION fnc_persons_female() RETURNS TABLE
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
    WHERE p.gender = 'female';
$$;

CREATE OR REPLACE FUNCTION fnc_persons_male() RETURNS TABLE
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
    WHERE p.gender = 'male';
$$;

SELECT *
FROM fnc_persons_male();

SELECT *
FROM fnc_persons_female();
