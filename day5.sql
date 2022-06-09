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
custid INT ,        -- composite primary  , Will create a index automatically
cust_name VARCHAR(50) ,
age int,
mobile VARCHAR(20) ,
constraint abc PRIMARY KEY(custid, mobile));


INSERT INTO customer_data_2 VALUES(1000,'Venkatesh M',50,'8939945656');
INSERT INTO customer_data_2 VALUES(1000,'Venkatesh M',50,'8939945657');
INSERT INTO customer_data_2 VALUES(1001,'Venkatesh M',50,'8939945657');
INSERT INTO customer_data_2 VALUES(1001,'Venkatesh M',50,'8939945657');  -- Error

SELECT * FROM customer_data_2;

-- FOREIGN KEY ( REFERENCE KEY)

CREATE TABLE transacation(
transid INT PRIMARY KEY,
custid INT ,
mobile VARCHAR(20),
product VARCHAR(50),
amount DECIMAL(20,2),
FOREIGN KEY (custid,mobile) REFERENCES customer_data_2(custid,mobile)
);

SELECT * FROM customer_data_2;

INSERT INTO transacation VALUES(100,1000,'Mobile',120000);

SELECT * FROM transacation;
INSERT INTO transacation VALUES(101,1001,'TV',70000);
INSERT INTO transacation VALUES(101,1002,'Laptop',110000);  -- Error


-- CHECK coonstraints

CREATE TABLE check_tbl (
custid INT PRIMARY KEY,
custname VARCHAR(100) NOT NULL,
mobile VARCHAR(20) UNIQUE,
age INT CHECK (age > 0 and age <=100)
);

INSERT INTO check_tbl VALUES(1000,'Raghul Ramesh','9894851511',37);
INSERT INTO check_tbl VALUES(1002,'Raghul Ramesh','9894851513',100);

SELECT * FROM check_tbl;


CREATE TABLE check_tbl_2 (
custid INT PRIMARY KEY,
custname VARCHAR(100) NOT NULL,
mobile VARCHAR(20) UNIQUE,
age INT CHECK (age > 0 and age <=100),
country VARCHAR(30) CHECK ( country IN ('India','Singapore','Canada','Australia','USA'))
);


INSERT INTO check_tbl_2 VALUES(1000,'Kalahasan','9898378790',70,'India');
SELECT * FROM check_tbl_2;


-- DEFAULT constraint

CREATE TABLE default_tbl(
custid INT PRIMARY KEY,
custname VARCHAR(100) NOT NULL,
mobile VARCHAR(20) UNIQUE,
country VARCHAR(20) DEFAULT 'JAPAN'
);

INSERT INTO default_tbl(custid, custname, mobile) VALUES(1,'Tharani','9898767899');
INSERT INTO default_tbl VALUES(2,'Siva','9898767891','Bangaladesh');

SELECT * FROM default_tbl;

SELECT COUNT(*) FROM default_tbl;


