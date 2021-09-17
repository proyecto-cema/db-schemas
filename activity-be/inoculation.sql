/* Extension needs to be enabled to use UUID
Needs to be installed as postgres user from inside the linux host.
First install contrib
sudo dnf install postgresql-contrib
sudo -i -u postgres
psql
\connect activity
*/
CREATE EXTENSION pgcrypto;

create table inoculation
(
	id uuid DEFAULT gen_random_uuid() PRIMARY KEY,
	name varchar(50) not null,
	dose bigint,
	brand varchar(50),
	drug varchar(50) not null,
	product varchar(50),
	description varchar(250),
	execution_date date default now(),
	establishment_cuig varchar(50) not null,
	batch_name varchar(50),
	bovine_tag varchar(50)
);

alter table inoculation owner to activity;
