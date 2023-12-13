CREATE EXTENSION if not exists "uuid-ossp";

select uuid_generate_v4()

create table if not exists table_uuid(
	id UUID primary key not null default uuid_generate_v4(),
	name varchar(10)
);

insert into table_uuid (name) values ('Bisi'), ('Lawal'), ('Sambo') returning *

