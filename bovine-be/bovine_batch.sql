create table bovine_batch
(
	bovine_id integer not null
		constraint bovine_batch_bovine_id_fkey
			references cema_bovine
				on update cascade on delete cascade,
	batch_id integer not null
		constraint bovine_batch_batch_id_fkey
			references batch
				on update cascade,
	constraint bovine_batch_pkey
		primary key (bovine_id, batch_id)
);

alter table bovine_batch owner to bovine;

