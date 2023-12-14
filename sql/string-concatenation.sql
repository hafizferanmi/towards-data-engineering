-- String concantenation


-- Concantenate using the || operator
select 'Hello' || ' ' || 'world' as "Greeting";


-- Concatenate using the concat(seperator, columnA, columnB) function
select concat(' ', last_name, first_name) as "FullName" from actors;


-- Concatenate using the concate_ws(seperator, columnA, columnB) function

--Most preferred because it handles null values perfectly.
select concat_ws(' ', last_name, first_name) as "FullName" from actors;
