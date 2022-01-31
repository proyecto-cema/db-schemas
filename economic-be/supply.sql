create table supply
(
	id serial not null
		constraint cema_bovine_pkey
			primary key,
	name varchar(20),
	units varchar(50),
	price bigint,
	category_name varchar(20) not null,
	establishment_cuig varchar(50) not null,
	CONSTRAINT fk_location_id FOREIGN KEY(category_name) REFERENCES category(name)
);

alter table supply owner to economic;