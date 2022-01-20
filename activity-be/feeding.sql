create table feeding
(
	id uuid DEFAULT gen_random_uuid() PRIMARY KEY,
	food varchar(250),
	amount bigint,
	description varchar(250),
	name varchar(50) not null,
	execution_date date default now(),
	establishment_cuig varchar(50) not null,
	bovine_tag varchar(50) not null
);

alter table feeding owner to activity;
