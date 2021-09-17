create table batch
(
	id serial not null
		constraint batch_pkey
			primary key,
	batch_name varchar(50) not null,
	establishment_cuig varchar(50),
	description varchar(500),
	creation_date date default now() not null
);

alter table batch owner to bovine;

