create table ultrasound
(
	id uuid DEFAULT gen_random_uuid() PRIMARY KEY,
	service_number varchar(50),
	result_status varchar(50),
	description varchar(250),
	name varchar(50) not null,
	execution_date date default now(),
	establishment_cuig varchar(50) not null,
	bovine_tag varchar(50) not null,
	worker_username varchar(50)
);

alter table ultrasound owner to activity;
