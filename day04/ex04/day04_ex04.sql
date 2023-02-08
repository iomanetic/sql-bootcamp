CREATE VIEW v_symmetric_union AS
WITH
    two_jan_visits AS
    (
        SELECT *
        FROM person_visits AS pv
        WHERE pv.visit_date = to_date('2022-01-02', 'YYYY-MM-DD')
    ),

    six_jan_visits AS
    (
        SELECT *
        FROM person_visits AS pv
        WHERE pv.visit_date = to_date('2022-01-06', 'YYYY-MM-DD')
    )

    SELECT *
    FROM two_jan_visits
    EXCEPT
    SELECT *
    FROM six_jan_visits
    UNION
    (
        SELECT *
        FROM six_jan_visits
        EXCEPT
        SELECT *
        FROM two_jan_visits
    )
    ORDER BY person_id