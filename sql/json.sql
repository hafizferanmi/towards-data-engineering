-- Working with JSON fields

-- Create table with JSON column
CREATE TABLE IF NOT EXISTS table_json (
	id SERIAL NOT NULL PRIMARY KEY,
	username VARCHAR(10) NOT NULL,
	draft JSON
);

-- Update username column type
ALTER TABLE table_json
ALTER COLUMN username TYPE VARCHAR(20);

-- Insert into table
INSERT INTO table_json (username, draft)
VALUES
('Hafizferanmi', '{ "username": "Boda123" }'),
('Tolu456', '{ "username": "Tolu45" }'),
('Bisi', null)
RETURNING *;

-- Select all from table
SELECT * FROM table_json;

-- Select where JSON column is null
SELECT * FROM table_json WHERE draft IS NULL;


SELECT draft ->> 'username' AS "Draft Username" FROM table_json
