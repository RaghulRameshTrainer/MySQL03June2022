use cust;

-- CONSTRAINTS
/*
UNIQUE
NOT NULL
PRIMARY KEY
FOREIGN KEY
CHECK
DEFAULT 
*/


CREATE TABLE notnull_tbl(
custid INT NOT NULL,
cust_name VARCHAR(50) ,
age int );

SELECT * FROM notnull_tbl;
INSERT INTO notnull_tbl VALUES(1000,'Madhan Kumar',37);
INSERT INTO notnull_tbl(custid,cust_name, age) VALUES(1001,'Shivani K',11);


CREATE TABLE customer_data(
custid INT PRIMARY KEY,        -- Simple primary  , Will create a index automatically
cust_name VARCHAR(50) ,
age int );

-- Primary key =  Unique + Not Null

INSERT INTO customer_data VALUES(1000,'Saraswathi S', 38);
INSERT INTO customer_data(custid,cust_name,age) VALUES(1001,'Madhavan TG',40);

SELECT * FROM customer_data;


CREATE TABLE customer_data_2(
custid INT ,        -- Simple primary  , Will create a index automatically
cust_name VARCHAR(50) ,
age int,
mobile VARCHAR(20) ,
constraint cust_primary_key PRIMARY KEY(custid, mobile));


INSERT INTO customer_data_2 VALUES(1000,'Venkatesh M',50,'8939945656');
INSERT INTO customer_data_2 VALUES(1000,'Venkatesh M',50,'8939945657');
INSERT INTO customer_data_2 VALUES(1001,'Venkatesh M',50,'8939945657');
INSERT INTO customer_data_2 VALUES(1001,'Venkatesh M',50,'8939945657');  -- Error

SELECT * FROM customer_data_2;