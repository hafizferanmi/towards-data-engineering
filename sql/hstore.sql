-- Hstore

-- Create HStore extension
CREATE EXTENSION IF NOT EXISTS hstore;

-- Create table with HStore column
CREATE TABLE IF NOT EXISTS table_hstore (
	id SERIAL NOT NULL PRIMARY KEY,
	draft hstore
);

-- Insert into Hstore column
INSERT INTO table_hstore (draft) VALUES
(
	'
	  "username" => "hafizferanmi",
	  "first_name" => "Hafiz",
	  "last_name" => "Feranmi"
	'
) RETURNING *;

-- Select from  table_htore (access properties of hstore)
SELECT draft -> 'username' as username FROM table_hstore;

-- Update existing HStore value
UPDATE table_hstore SET draft = draft || '"age" => "30"' WHERE id = 1 RETURNING *;

-- Use Hstore value in where clause
SELECT * FROM table_hstore WHERE draft -> 'age' = '30';

-- Delete existing key
UPDATE table_hstore SET draft = delete(draft, 'age') WHERE id = 1 RETURNING draft;

-- hstore_to_json
SELECT hstore_to_json(draft) FROM table_hstore;

-- ADD a json column
ALTER TABLE table_hstore
ADD COLUMN draft_json JSON;

-- Update JSON column with hstore_to_json
UPDATE table_hstore SET draft_json = hstore_to_json(draft) RETURNING *;

