create table subscription_type
(
	id serial not null
		constraint subscription_type_pkey
			primary key,
	name varchar(50) not null,
	price bigint not null,
	duration bigint not null,
	description varchar(500),
	creation_date date default now() not null,
	expiration_date date default now()
);

alter table subscription_type owner to administration;

