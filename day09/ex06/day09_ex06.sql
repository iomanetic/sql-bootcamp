CREATE OR REPLACE FUNCTION fnc_person_visits_and_eats_on_date(IN pperson VARCHAR DEFAULT 'Dmitriy',
                                                              IN pprice NUMERIC DEFAULT 500,
                                                              IN pdate DATE DEFAULT '2022-01-08')
                                                RETURNS TABLE
                                                (
                                                    name VARCHAR
                                                )
LANGUAGE plpgsql
AS
$$
    BEGIN
        RETURN QUERY (SELECT piz.name AS pizzeria_name
        FROM person AS p
            JOIN person_visits pv on p.id = pv.person_id
            JOIN person_order po on p.id = po.person_id AND po.order_date = pv.visit_date
            JOIN menu m on po.menu_id = m.id
            JOIN pizzeria piz on m.pizzeria_id = piz.id
        WHERE p.name = pperson
              AND m.price < pprice
              AND po.order_date = pdate);
    END;
$$;

select *
from fnc_person_visits_and_eats_on_date(pprice := 800);

select *
from fnc_person_visits_and_eats_on_date(pperson := 'Anna',pprice := 1300,pdate := '2022-01-01');