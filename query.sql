-- SAVEPOINT

START TRANSACTION;

savepoint pruebaxd;

select * from "users";

delete from "users" where username = 'jesus';

-- commit <- confirmar
-- rollback <- rechazar

commit;

rollback;

