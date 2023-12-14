-- Working with Arrays

-- Create a Table with an array column
CREATE TABLE IF NOT EXISTS table_array (
	id SERIAL PRIMARY KEY NOT NULL,
	tags VARCHAR(40)[]
);

-- Insert into Array table
INSERT INTO table_array (tags)
VALUES ('{"laptop", "macbook"}')
RETURNING *;

INSERT INTO table_array(tags)
VALUES (ARRAY['story', 'writing', 'copywriting'])
RETURNING *;

-- Get the element index of an array column
SELECT tags[2] from table_array;
SELECT tags[3] from table_array;
SELECT tags[1] from table_array;

-- Getting count of items in an array
SELECT tags, cardinality(tags) AS tags_count FROM table_array ORDER BY tags_count DESC;

--Unnest Elements of an array
SELECT unnest(tags) as tag from table_array;

-- Filter where element of Index 2 is javasript
SELECT * FROM table_array WHERE tags[3] = 'css';

