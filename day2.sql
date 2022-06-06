CREATE DATABASE IF NOT EXISTS cust ;   -- CREATE A DATABASE

create DaTaBaSe IF NOT EXISTS mydb;

DROP database mydb;


use cust;

CREATE TABLE IF NOT EXISTS customer(
custid INT,
fname VARCHAR(30),
lname VARCHAR(30),
gender CHAR(1), 
amount DECIMAL(20,2),  
city VARCHAR(30),
age INT,
mobile VARCHAR(20)    
);

-- ALTER TABLE customer
-- ADD COLUMN country varchar(30);

-- ALTER TABLE customer
-- DROP COLUMN country;

DESC customer;

