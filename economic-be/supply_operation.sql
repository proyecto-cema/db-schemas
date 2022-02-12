create table supply_operation
(
	id uuid default gen_random_uuid() not null
		constraint supply_operation_pkey
			primary key,
	operation_type varchar(50),
	operator_name varchar(50),
	amount bigint,
	description varchar(250),
	transaction_date date default now(),
	establishment_cuig varchar(50) not null,
	supply_id integer not null
		constraint fk_supply_id
			references supply
);

alter table supply_operation owner to economic;

