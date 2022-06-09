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