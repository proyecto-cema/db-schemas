create table location
(
	id uuid default gen_random_uuid() not null
		constraint location_pkey
			primary key,
	name varchar(50) not null,
	size bigint,
	description varchar(250),
	establishment_cuig varchar(50) not null,
	is_default boolean default false not null
);

alter table location owner to activity;
