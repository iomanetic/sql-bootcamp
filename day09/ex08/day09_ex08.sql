CREATE OR REPLACE FUNCTION fnc_fibonacci(IN pstop INTEGER DEFAULT 10)
    RETURNS TABLE
        (
            fnc_fibonacci INTEGER
        )
LANGUAGE SQL
AS
$$
    WITH RECURSIVE fibonacci(a, b) AS (VALUES (0, 1)
                            UNION ALL
                            SELECT b, a + b
                            FROM fibonacci
                            WHERE b < pstop)
    SELECT a
    FROM fibonacci;
$$;

select * from fnc_fibonacci(100);
select * from fnc_fibonacci();

