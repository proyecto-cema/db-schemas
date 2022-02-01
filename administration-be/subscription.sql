create table subscription
(
	id serial not null
		constraint subscription_pkey
			primary key,
	establishment_id integer not null,
	subscription_type_id integer not null,
	starting_date date default now() not null,
	CONSTRAINT fk_establishment_id FOREIGN KEY(establishment_id) REFERENCES establishment(id),
	CONSTRAINT fk_subscription_type_id FOREIGN KEY(subscription_type_id) REFERENCES subscription_type(id)
);

alter table subscription owner to administration;

