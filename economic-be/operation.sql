create table operation
(
	id uuid default gen_random_uuid() not null
		constraint operation_pkey
			primary key,
	bovine_tag varchar(50) not null,
	seller_name varchar(50),
	buyer_name varchar(50),
	operation_type varchar(50),
	operator_name varchar(50),
	amount bigint,
	description varchar(250),
	transaction_date date default now(),
	establishment_cuig varchar(50) not null
);

alter table operation owner to economic;