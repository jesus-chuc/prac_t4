-- SAVEPOINT

START TRANSACTION;

savepoint pruebaxd;

select * from "users";

delete from "users" where username = 'pepin0Asesin0';

-- commit <- confirmar
-- rollback <- rechazar

commit;

rollback;

