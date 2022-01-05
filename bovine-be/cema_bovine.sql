create table cema_bovine
(
	id serial not null
		constraint cema_bovine_pkey
			primary key,
	tagging_date timestamp default now(),
	tag varchar(20) not null,
	description varchar(250),
	genre varchar(10) not null,
	establishment_cuig varchar(50),
	birth_date date default now(),
	category varchar(50) default 'Ternero'::character varying not null,
	status varchar(50) default 'Mamando'::character varying not null,
	operation_id uuid
);

alter table cema_bovine owner to bovine;



