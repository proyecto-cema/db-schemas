create table establishment
(
	id serial not null
		constraint establishment_pkey
			primary key,
	name varchar(50) not null,
	location varchar(200),
	cuig varchar(50) not null,
	phone varchar(50),
	email varchar(50),
	owner_username varchar(50) not null,
	creation_date date default now() not null
);

alter table establishment owner to administration;