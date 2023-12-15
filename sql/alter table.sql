-- Modifying table structures, adding constraint
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS buyers;

-- CREATE TABLE
CREATE TABLE IF NOT EXISTS customers (
	first_name VARCHAR(20),
	last_name VARCHAR(30),
	enabled BOOLEAN DEFAULT FALSE
);

-- ADD column to exiting table
ALTER TABLE customers ADD column username VARCHAR(50);
ALTER TABLE customers ADD column "isActive" BOOLEAN DEFAULT TRUE;
ALTER TABLE customers ADD column age INT;

-- ALTER NOT NULL constraint
ALTER TABLE customers ALTER COLUMN username SET NOT NULL; 

-- DROP column from existing table
ALTER TABLE customers DROP column enabled;

-- REMANE column
ALTER TABLE customers RENAME column first_name to firstName;
ALTER TABLE customers RENAME column last_name to lastName;
ALTER TABLE customers RENAME column "isActive" to isactive;

-- ADD constraint
ALTER TABLE customers ADD CONSTRAINT unique_username UNIQUE (username);
ALTER TABLE customers ADD CHECK (length(username) >= 3);

-- RENAME TABLE
ALTER TABLE IF EXISTS customers RENAME TO buyers;

-- INSERT INTO TABLE buyers
INSERT INTO buyers (username, firstname, lastname)VALUES ('Yusuf123', 'Yusuf', 'Adeoti')
RETURNING *;

