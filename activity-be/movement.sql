/* Extension needs to be enabled to use UUID
Needs to be installed as postgres user from inside the linux host.
First install contrib
sudo dnf install postgresql-contrib
sudo -i -u postgres
psql
\connect activity
*/
CREATE EXTENSION pgcrypto;

create table movement
(
	id uuid DEFAULT gen_random_uuid() PRIMARY KEY,
	name varchar(50) not null,
	description varchar(250),
	execution_date date default now(),
	establishment_cuig varchar(50) not null,
	batch_name varchar(50),
	bovine_tag varchar(50),
	location_id uuid,
	worker_username varchar(50),
	CONSTRAINT fk_location_id FOREIGN KEY(location_id) REFERENCES location(id)
);

alter table movement owner to activity;
