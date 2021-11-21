create table location
(
	id uuid DEFAULT gen_random_uuid() PRIMARY KEY,
	name varchar(50) not null,
	size bigint,
	description varchar(250),
	establishment_cuig varchar(50) not null
);

alter table location owner to activity;
