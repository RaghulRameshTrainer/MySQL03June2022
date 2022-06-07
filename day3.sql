use cust;

-- LOAD DATA INTO THE TABLE : CUSTOMER
/*
QUERY TYPES:
============

DDL:(DATA DEFINITION LANGUAGE)
-----------------------------------
CREATE
ALTER
DROP
TRUNCATE

DML: (DATA MANUPLUATION LANGUAGE)
----------------------------------
INSERT
UPDATE
DELETE

DCL: (DATA CONTROL LANGUAGE)
-----------------------------
GRANT
REVOKE

TCL:(TRANSACTION CONTROL LANGUAGE)
------------------------------------
COMMIT
ROLLBACK 

DQL:(DATA QUERY LANGUAGE)
--------------------------
SELECT

*/

-- TO QUERY/VIEW THE RECORDS LOADED INTO THE TABLE: SELECT STATEMENT
SELECT * FROM customer;
SELECT fname,lname,city FROM customer;

-- LOAD THE DATA INTO THE TABLE : USING INSERT STATEMENT

INSERT INTO customer VALUES(1000,'Levin','Lenus','M',200000.50,'Chennai',39,'9858656780',current_date());

INSERT INTO customer VALUES (1001,'Malini','Sekar','F',10000,'Chennai',30,'8870901111','2022-06-01'),
(1002,'Santhosh','Kumar','M',150000,'Bangalore',35,'9898998769','2022-01-01');

INSERT INTO customer VALUES (1003,'RamPrasad','JM','M',50000,'Europe',37,'9970901111','1990-01-01'),
 (1003,'RamPrasad','JM','M',50000,'Europe',37,'9970901111','1990-01-01');
 
 
SELECT * FROM customer;
