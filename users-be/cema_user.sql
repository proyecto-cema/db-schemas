create table cema_user
(
	id serial not null
		constraint cema_user_pkey
			primary key,
	username varchar(50) not null,
	name varchar(50) not null,
	last_name varchar(50) not null,
	phone varchar(50) not null,
	email varchar(50) not null,
	password varchar(200) not null,
	role varchar(50) not null,
	creation_date date default now(),
	establishment_cuig varchar(50)
);

alter table cema_user owner to users;

