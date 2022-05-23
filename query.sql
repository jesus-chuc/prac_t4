-- MANEJO DE ÍNDICES
create table "group" (
	id serial PRIMARY KEY,
	name varchar(55),
	description varchar(255),
	size int
);

select * from "group";
select * from "users";
select * from "user_group";

insert into "users"
	(id, username, password, firstname, lastname)
	values (3, 'pepin0Asesin0', 'Pepe45351', 'Pepino', 'Asesino');

create table user_group (
	id serial PRIMARY KEY,
	id_user int,
	id_group int
);

drop table user_group;

select * from user_group;


-- Índices relacionados entre tablas
select * from "users" A, "group" B, "user_group" C
	where A.id = C.id_user
	and B.id = C.id_group;

-- Índices relacionados entre tablas con selección de datos
select A.username "Usuario",
	A.password "Contraseña",
	CONCAT(A.firstname, ' ', A.lastname) "Nombre del usuario",
	   B.name "Grupo", B.description "Descripción del grupo"
	from "users" A, "group" B, "user_group" C
	where A.id = C.id_user
	and B.id = C.id_group;

-- Índice de clave única
select A.username, A.password, CONCAT(A.firstname, ' ', A.lastname),
	   B.name, B.description
	from "users" A, "group" B, "user_group" C
	where A.id = C.id_user
	and B.id = C.id_group
	and A.username = 'IvanovaF';

-- Índice como texto completo o parte de texto
select A.username, A.password, CONCAT(A.firstname, ' ', A.lastname),
	   B.name, B.description
	from "users" A, "group" B, "user_group" C
	where A.id = C.id_user
	and B.id = C.id_group
	and B.description LIKE '%ISC%';



-- SAVEPOINT

START TRANSACTION;

savepoint pruebaxd;

select * from "users";

delete from "users" where username = 'pepin0Asesin0';

-- commit <- confirmar
-- rollback <- rechazar

commit;

rollback;

