create table category
(
	name varchar(20) not null
		constraint category_pkey
			primary key,
	description varchar(50)
);

alter table category owner to economic;



insert into category (name, description) VALUES ('Comida', 'alimento para los animales');
insert into category (name, description) VALUES ('Oficina', 'insumos para uso de oficina');
insert into category (name, description) VALUES ('Medicación', 'insumos para la salud de los animales');
insert into category (name, description) VALUES ('Otros', 'insumos en general');