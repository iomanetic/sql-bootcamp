-- Session 1
begin;

-- Session 2
begin;

-- Session 1
select sum(rating) from pizzeria;

-- Session 2
update pizzeria set rating=1 where name='Pizza Hut';
commit;

-- Session 1
select sum(rating) from pizzeria;
commit;

-- Session 1
select sum(rating) from pizzeria;

-- Session 2
select sum(rating) from pizzeria;

