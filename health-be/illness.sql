/* Extension needs to be enabled to use UUID
Needs to be installed as postgres user from inside the linux host.
First install contrib
sudo dnf install postgresql-contrib
sudo -i -u postgres
psql
\connect health
*/
CREATE EXTENSION pgcrypto;
create table illness
(
	id uuid default gen_random_uuid() not null
		constraint illness_pkey
			primary key,
	starting_date timestamp default now(),
	ending_date timestamp default now(),
	bovine_tag varchar(20) not null,
	establishment_cuig varchar(50) not null,
	disease_id integer not null
		constraint illness_disease_id_fkey
			references disease
				on update cascade
);

alter table illness owner to health;