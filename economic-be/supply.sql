create table supply
(
	id serial not null
		constraint cema_bovine_pkey
			primary key,
	name varchar(20),
	units varchar(50),
	price bigint,
	category_name varchar(20) not null
		constraint fk_location_id
			references category,
	establishment_cuig varchar(50) not null
);

alter table supply owner to economic;

