create table category
(
	name varchar(20) PRIMARY KEY,
	description varchar(50)
);

alter table category owner to economic;

insert into category (name, description) VALUES ('comida', 'alimento para los animales');
insert into category (name, description) VALUES ('oficina', 'insumos para uso de oficina');
insert into category (name, description) VALUES ('medicacion', 'insumos para la salud de los animales');
insert into category (name, description) VALUES ('otros', 'insumos en general');