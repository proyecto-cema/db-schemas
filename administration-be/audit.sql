create table cema_audit
(
	id serial not null
		constraint audit_pkey
			primary key,
	request_body varchar,
	response_body varchar,
	local_address varchar,
	request_headers varchar,
	uri varchar(250),
	response_status varchar,
	http_method varchar(200),
	establishment_cuig varchar(50),
	method varchar,
	role varchar,
	requestor_username varchar,
	audit_date timestamp default now(),
	module varchar(50)
);

alter table cema_audit owner to administration;