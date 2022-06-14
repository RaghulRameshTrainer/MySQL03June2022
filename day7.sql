use cust;


select city,gender, count(*) as no_of_customers
from customer
 where gender IN ('M','F')
group by city,gender
having count(*) > 0
order by 3 ;

select fname,lname,city, age,country from customer;


-- ---------------------------JOINS---------------------------------

-- INNER JOIN

-- OUTER JOIN
-- 	   LEFT OUTER JOIN
--     RIGHT OUTER JOIN
--     CROSS JOIN

-- SELF JOIN



SELECT * FROM CUSTOMER;   # 1001,2,5,6
SELECT * FROM TRANSACATION; # 1000,1001

SELECT * FROM transacation t INNER JOIN customer c ON c.custid = t.custid;


CREATE TABLE CUSTOMERS(
custid INT,
custname VARCHAR(20),
city VARCHAR(20));

INSERT INTO CUSTOMERS VALUES(1000,'Ramprasath','Kolkatta'),
(1001,'Ranjith','Chennai'),
(1002,'Rajesh','Bangalore'),
(1003,'Kumar','Hyderabad'),
(1004,'Iyyappan','Pune');


CREATE TABLE ORDER_TBL(
orderId INT,
custid INT,
product VARCHAR(50),
amount INT);

INSERT INTO ORDER_TBL
VALUES (100,1001,'TV',80000),
(101,1001,'Laptop',70000),
(102,1002,'Mobile',35000),
(103,1003,'Table',6000),
(104,1002,'Snacks',1500),
(105,1005,'Shirt',3500);

SELECT * FROM CUSTOMERS c
LEFT JOIN ORDER_TBL o
ON c.custid=o.custid;

-- CROSS JOIN

SELECT * FROM CUSTOMERS CROSS JOIN ORDER_TBL;

-- SELF JOIN:

SELECT * FROM CUSTOMER;

SET sql_safe_updates=0;


update customer set lname='Levin' WHERE custid=1005;

SELECT * FROM CUSTOMER c1,
CUSTOMER c2
WHERE c1.fname=c2.lname;

SELECT * FROM CUSTOMER;