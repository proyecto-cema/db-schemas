create table weighing
(
	id uuid DEFAULT gen_random_uuid() PRIMARY KEY,
	category varchar(50),
	weight bigint not null,
	dental_notes varchar(250),
	description varchar(250),
	name varchar(50) not null,
	execution_date date default now(),
	establishment_cuig varchar(50) not null,
	bovine_tag varchar(50) not null
);

alter table weighing owner to activity;
