create table note
(
	id serial not null
		constraint note_pkey
			primary key,
	content varchar not null,
	illness_id uuid not null
		constraint note_illness_id_fkey
			references illness
				on update cascade on delete cascade
);

alter table note owner to health;