CREATE INDEX idx_person_name ON person USING btree(UPPER(name));
SET enable_seqscan = off;
EXPLAIN ANALYSE
SELECT name
FROM person
WHERE UPPER(name) = 'ANNA';