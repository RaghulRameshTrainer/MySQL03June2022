CREATE TABLE Product_Sales(    
    Emp_Name VARCHAR(45) NOT NULL,    
    Year INT NOT NULL,  
    Country VARCHAR(45) NOT NULL,    
    Prod_name VARCHAR(45) NOT NULL,    
    Sales DECIMAL(12,2) NOT NULL,    
    PRIMARY KEY(Emp_Name, Year)    
);   



INSERT INTO Product_Sales(Emp_Name, Year, Country, Prod_name, Sales)    
VALUES('Prakash', 2022, 'Australia', 'TV', 20000),
('Prakash', 2021, 'Canada', 'TV', 25000),
('Prakash', 2020, 'Britain', 'TV', 20000);


('Mike Johnson', 2017, 'Britain', 'Laptop', 10000), 
('Mike Johnson', 2018, 'Britain', 'Laptop', 15000),
('Mike Johnson', 2019, 'Britain', 'TV', 20000),
('Mary Greenspan', 2017, 'Australia', 'Computer', 15000),
('Mary Greenspan', 2018, 'Australia', 'Computer', 10000),    
('Mary Greenspan', 2019, 'Australia', 'TV', 20000),
('Nancy Jackson', 2017, 'Canada', 'Mobile', 20000),   
('Nancy Jackson', 2018, 'Canada', 'Calculator', 1500),  
('Nancy Jackson', 2019, 'Canada', 'Mobile', 25000);    

SELECT * FROM Product_Sales;


-- WINDOW OR RANKING FUNCTION
-- ROW_NUMBER()
-- RANK()
-- DENSE_RANK()

-- GET THE HIGHEST TRANSACTION DETAIL IN EACH COUNTRY

SELECT COUNTRY, MAX(Sales) as max_transaction, MIN(Sales) as min_transaction 
FROM Product_Sales
GROUP BY COUNTRY;

SELECT * FROM
(SELECT Emp_Name, Year, Country, Prod_name, Sales,
ROW_NUMBER() OVER (PARTITION BY Country ORDER BY Sales DESC) AS rnk
FROM Product_Sales) tbl
WHERE rnk <=1;


SELECT * FROM (
SELECT Emp_Name, Year, Country, Prod_name, Sales,
RANK() OVER (PARTITION BY Country ORDER BY Sales DESC) AS rnk
FROM Product_Sales) tbl
WHERE rnk=1;

SELECT * FROM (
SELECT Emp_Name, Year, Country, Prod_name, Sales,
RANK() OVER (PARTITION BY Country ORDER BY Sales ) AS rnk
FROM Product_Sales) tbl
WHERE rnk=1;


SELECT Emp_Name, Year, Country, Prod_name, Sales,
RANK() OVER (PARTITION BY Country ORDER BY Sales DESC) AS rnk
FROM Product_Sales;

SELECT * FROM (
SELECT Emp_Name, Year, Country, Prod_name, Sales,
DENSE_RANK() OVER (PARTITION BY Country ORDER BY Sales DESC) AS rnk
FROM Product_Sales) abc
WHERE rnk<=2;

SELECT concat(fname,'.',substr(lname,1,1)) AS name FROM customer;



-- FUNCTIONS

SELECT LOWER(country) from Product_Sales;
SELECT UPPER(Country),LENGTH(country) FROM Product_Sales;

SELECT * FROM customer;

SELECT concat_ws('      ',fname,lname,city,  country) as fullname FROM CUSTOMER;

SELECT REPLACE(fname,'a','A') FROM customer;

-- date function

SELECT current_date();
SELECT current_time();
SELECT current_timestamp();

SELECT DATEADD(month , 5, '2022/06/21')  ;


SELECT DATEDIFF(month,'2022/06/21' , '2000/01/01') ;

SELECT fname,lname,year(registered_date) FROM customer;
SELECT fname,lname,month(registered_date) FROM customer;
SELECT fname,lname,day(registered_date) FROM customer;
SELECT fname,lname,dayname(registered_date) FROM customer;
SELECT fname,lname,monthname(registered_date) FROM customer;

SELECT * FROM CUSTOMER WHERE year(registered_date)='2022';


-- COUNT, MIN, MAX , SUM, AVG, ROUND, 