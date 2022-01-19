create table disease
(
	id serial not null
		constraint batch_pkey
			primary key,
	name varchar(50) not null,
	establishment_cuig varchar(50) not null,
	description varchar(500),
	duration bigint default 0
);

alter table disease owner to health;

