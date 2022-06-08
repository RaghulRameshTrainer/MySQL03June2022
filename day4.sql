use cust;

select * from customer;

-- DELETE DATA USING DELETE QUERY

DELETE FROM customer WHERE age is NULL;

DELETE FROM customer WHERE registered_date < '2000-01-01';

-- RANK FUNCTION (ROW_NUMBER, RANK, DENSE_RANK,LEAD, LAG)


SELECT DISTINCT * FROM customer;

DELETE FROM customer WHERE city='NEWYORK' and gender='F';

CREATE TABLE CUSTOMER_NEW AS
SELECT * FROM CUSTOMER;

select * from customer_new;
select * from customer;
select * from user_tbl;


CREATE TABLE USER_TBL AS
SELECT * FROM CUSTOMER;


-- DROP AND TRUNCATE

DROP TABLE customer_new; 

TRUNCATE TABLE user_tbl;
select * from user_tbl;

/*
DELETE									TRUNCATE								DROP
few records can be deleted		 		Entire records will be deleted          both data and table will get deleted
rollback is possible					rollback is not possible                 rollback is not possible
DML statement							DML statement                            DDL statement
*/


-- CREATE DATABASE
-- CREATE TABLE
-- DATA TYPES ( INT, CHAR , VARCHAR, DECIMAL, DATE)
-- USE DATABASE
-- DESC TABLE_NAME
-- INSERT INTO
-- SELECT
-- UPDATE TABLE_NAME
-- DELETE FROM
-- DROP
-- TRUNCATE

-- ALTER STATMENT
DESC customer;
-- ADD A COULUMN
ALTER TABLE customer ADD COLUMN country VARCHAR(30) DEFAULT 'INDIA';

ALTER TABLE customer ADD COLUMN pincode VARCHAR(30) DEFAULT '600001';


-- REMOVE A COLUMN
ALTER TABLE customer DROP COLUMN pincode;
-- MODIFY A COLUMN
ALTER TABLE customer MODIFY mobile varchar(15);
-- RENAMING A COLUMN
ALTER TABLE CUSTOMER RENAME COLUMN amount TO salary;
ALTER TABLE user_tbl RENAME TO user_table;

UPDATE customer SET pincode='850005' WHERE custid=1002;
SELECT * FROM customer;
