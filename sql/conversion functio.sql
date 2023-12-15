-- CONVERSION FUNCTIONS

-- format number to thousand (comma seperated)
SELECT
    TO_CHAR(
        2017,
        '9,999'
    );
	
-- format number with to_number()
SELECT
    TO_NUMBER(
        '12,345.6-',
        '99G999D9S'
    );
	
-- convert money amount to number using to_number()
SELECT
    TO_NUMBER(
        '$1,234,567.89',
        'L9G999g999.99'
    );
	
-- convert date to timestamp with to_timestamp()
SELECT 
    TO_TIMESTAMP('01-01-2017 10:2', 'DD-MM-YYYY SS:MS');
	
-- format date using to_date() function
SELECT TO_DATE('20170103','YYYYMMDD'), TO_DATE('2017 Feb 20','YYYY Mon DD');