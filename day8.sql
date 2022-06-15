use cust;

-- AND OR NOT Operators

SELECT * FROM CUSTOMER;

SELECT * FROM CUSTOMER WHERE CITY='NEWYORK' AND AGE > 30;

SELECT * FROM CUSTOMER WHERE CITY='NEWYORK' OR  AGE > 30;

SELECT * FROM CUSTOMER WHERE NOT city='Pune';

SELECT * FROM CUSTOMER WHERE city!='Pune';

-- LIMIT Clause

SELECT * FROM CUSTOMER LIMIT 8;

SELECT * FROM CUSTOMER ORDER BY CITY ASC LIMIT 4;

-- LIKE Operators

SELECT * FROM CUSTOMER WHERE mobile like "%1112";

SELECT * FROM CUSTOMER WHERE mobile like '__7%' ;-- and gender='F';
SELECT * FROM CUSTOMER WHERE mobile like '%7%';

SELECT * FROM CUSTOMER WHERE fname LIKE 'm%i';

SELECT * FROM CUSTOMER WHERE city <> 'NEWYORK';

select * from customer where age=30;

-- IN, NOT IN Operator

SELECT * FROM CUSTOMER WHERE fname IN ('Malini','Tharani');

SELECT * FROM CUSTOMER WHERE fname='Malini' OR fname='Tharani';

SELECT * FROM CUSTOMER WHERE fname NOT IN ('Malini','Tharani');

SELECT * FROM CUSTOMER WHERE fname !='Malini' AND fname !='Tharani';


-- Aliases (AS keyword)

SELECT fname AS first_name , lname as last_name FROM customer;

SELECT min(age) as min_age , max(age) as max_age from CUSTOMER ;

SELECT c.fname as first_name, c.lname as last_name, c.gender, c.city, o.product, o.amount FROM CUSTOMER c
INNER JOIN order_tbl o
ON c.custid=o.custid;


-- BETWEEN Operator ( begin and end values are included/inclussive)

SELECT * FROM CUSTOMER;

SELECT * FROM CUSTOMER WHERE AGE BETWEEN 30 AND 40;

SELECT * FROM CUSTOMER WHERE registered_date BETWEEN '2022-01-01' AND '2022-06-07';

-- SELECT * FROM CUSTOMER WHERE fname BETWEEN 'Levin' AND 'Malini';

-- SELECT * FROM order_tbl WHERE product BETWEEN 'TV' AND 'Table';

-- SELECT * FROM order_tbl LIMIT 100;

-- UNION and UNION ALL Operator
-- Every select statement must have same number of columns and must have same data type

SELECT * FROM CUSTOMER;

SELECT * FROM CUSTOMER WHERE AGE < 30
UNION
SELECT * FROM CUSTOMER WHERE AGE IN (22,47);


SELECT * FROM CUSTOMER WHERE AGE < 30
UNION ALL
SELECT * FROM CUSTOMER WHERE AGE IN (22,47);

-- CASE STATEMENT
-- Syntax:

-- CASE
-- 	WHEN condition1 THEN result1
--     WHEN condition2 THEN result2
--     ELSE retult
-- END AS alaisname;

SELECT * FROM CUSTOMER;

SELECT custid,fname,gender,salary,city,age,mobile,registered_Date,country,experience_level
FROM
(
SELECT * ,CASE
				WHEN age <30 THEN 'Junior'
				WHEN age >=30 and age <40 THEN 'Middle'
                ELSE 'senior' END 'experience_level'
FROM CUSTOMER ) abc
ORDER BY experience_level;


SELECT * ,CASE
				WHEN age <30 THEN 'Junior'
				WHEN age >=30 and age <40 THEN 'Middle'
                ELSE 'senior' END 'category'
FROM CUSTOMER;
