-- Session 1
begin;

-- Session 2
begin;

-- Session 1
update pizzeria set name='dead' where id=1;

-- Session 2
update pizzeria set name='lock' where id=2;

-- Session 1
update pizzeria set name='dead' where id=2;

-- Session 2
update pizzeria set name='lock' where id=1;

-- Session 1
commit;

-- Session 2
commit;

