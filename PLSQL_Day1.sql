REM   Script: 16062022_day1
REM   day1

DECLARE  
    name varchar2(20) := 'ExcelR'; 
BEGIN 
     dbms_output.put_line(name); 
END; 
/

DECLARE  
    name varchar2(20) := 'ExcelR'; 
BEGIN 
     dbms_output.put_line('I am doing data analytics course at ' + name); 
END; 
/

DECLARE  
    name varchar2(20) := 'ExcelR'; 
BEGIN 
     dbms_output.put_line("I am doing data analytics course at " + name); 
END; 
/

DECLARE  
    name varchar2(20) := 'ExcelR'; 
BEGIN 
     dbms_output.put_line('I am doing data analytics course at ' || name); 
END; 
/

DECLARE 
    <decalration> 
BEGIN 
    executable query/statements 
    EXCEPTION BLOCK 
END; 
/

DECLARE  
   -- name varchar2(20) := 'ExcelR'; 
BEGIN 
     dbms_output.put_line('I am doing data analytics course at ' || name); 
END; 
/

DECLARE  
    name varchar2(20) := 'ExcelR'; 
BEGIN 
     dbms_output.put_line('I am doing data analytics course at ' || name); 
END; 
/

DECLARE 
    a integer := 10; 
    b integer := 20; 
    c integer; 
    d real; 
BEGIN 
    c := a + b; 
    dbms_output.put_line('Sum of a and b :' || c); 
     
    d := a/b; 
    dbms_output.put_line('Division of a and b :' || d); 
     
END; 
/

CREATE TABLE CUSTOMER( 
ID INT PRIMARY KEY, 
NAME VARCHAR2(50) NOT NULL, 
AGE INT NOT NULL, 
CITY VARCHAR2(100) 
);

INSERT INTO CUSTOMER  
VALUES(1,'Ramesh',37,'Chennai'), 
(2,'Bala',39,'Hyderabad'), 
(3,'Karthick',30,'Bangalore'), 
(4,'Aveek','45,'Delhi'), 
(5,'Chandra',33,'Mumbai');

INSERT INTO CUSTOMER  
VALUES(1,'Ramesh',37,'Chennai'), 
(2,'Bala',39,'Hyderabad'), 
(3,'Karthick',30,'Bangalore'), 
(4,'Aveek',45,'Delhi'), 
(5,'Chandra',33,'Mumbai');

INSERT INTO CUSTOMER  
VALUES(1,'Ramesh',37,'Chennai');

INSERT INTO CUSTOMER  
VALUES(2,'Bala',39,'Hyderabad');

INSERT INTO CUSTOMER  
VALUES(3,'Karthick',30,'Bangalore');

INSERT INTO CUSTOMER  
VALUES(4,'Aveek',45,'Delhi');

INSERT INTO CUSTOMER  
VALUES(5,'Chandra',33,'Mumbai');

SELECT * FROM CUSTOMER;

DECLARE 
    c_id customer.id%type := 1; 
    c_name customer.name%type; 
    c_age customer.age%type; 
    c_city customer.city%type; 
BEGIN 
 
    SELECT name, age , city INTO c_name, c_age. c_city  
    FROM customer 
    WHERE id = c_id; 
     
    dbms_output.put_line('Customer ' || c_name || ' from'|| c_city || ' and his age is :' || c_age);  
END; 
/

DECLARE 
    c_id customer.id%type := 1; 
    c_name customer.name%type; 
    c_age customer.age%type; 
    c_city customer.city%type; 
BEGIN 
 
    SELECT name, age , city INTO c_name, c_age, c_city  
    FROM customer 
    WHERE id = c_id; 
     
    dbms_output.put_line('Customer ' || c_name || ' from'|| c_city || ' and his age is :' || c_age);  
END; 
/

DECLARE 
    c_id customer.id%type := 1; 
    c_name customer.name%type; 
    c_age customer.age%type; 
    c_city customer.city%type; 
BEGIN 
 
    SELECT name, age , city INTO c_name, c_age, c_city  
    FROM customer 
    WHERE id = c_id; 
     
    dbms_output.put_line('Customer ' || c_name || ' from '|| c_city || ' and his age is :' || c_age);  
END; 
/

SELECT * FROM CUSTOMER;

DECLARE 
   a INT := 10; 
BEGIN 
 IF (a > 0) THEN 
     dbms_output.put_line('a is a positive number. a :'||a); 
 END IF; 
 
END; 
/

DECLARE 
   a INT := -10; 
BEGIN 
 IF (a > 0) THEN 
     dbms_output.put_line('a is a positive number. a :'||a); 
 ELSE 
    dbms_output.put_line('a is a negative number. a :'||a); 
 END IF; 
 
END; 
/

DECLARE 
   a INT := 30; 
BEGIN 
 IF (a > 18) THEN 
     dbms_output.put_line('You can vote hence your age is :'||a); 
 ELSIF ( a > 0 ) 
    dbms_output.put_line('a is a positive small number. a :'||a); 
 ELSE 
    dbms_output.put_line('a is a negative number. a :'||a); 
 END IF; 
 
END; 
/

DECLARE 
   a INT := 30; 
BEGIN 
 IF (a > 18) THEN 
     dbms_output.put_line('You can vote hence your age is :'||a); 
 ELSIF ( a > 0 ) THEN 
    dbms_output.put_line('a is a positive small number. a :'||a); 
 ELSE 
    dbms_output.put_line('a is a negative number. a :'||a); 
 END IF; 
END; 
/

DECLARE 
   a INT := 10; 
BEGIN 
 IF (a > 18) THEN 
     dbms_output.put_line('You can vote hence your age is :'||a); 
 ELSIF ( a > 0 ) THEN 
    dbms_output.put_line('a is a positive small number. a :'||a); 
 ELSE 
    dbms_output.put_line('a is a negative number. a :'||a); 
 END IF; 
END; 
/

DECLARE 
   a INT := -1; 
BEGIN 
 IF (a > 18) THEN 
     dbms_output.put_line('You can vote hence your age is :'||a); 
 ELSIF ( a > 0 ) THEN 
    dbms_output.put_line('a is a positive small number. a :'||a); 
 ELSE 
    dbms_output.put_line('a is a negative number. a :'||a); 
 END IF; 
END; 
/

DECLARE 
   x integer := 0; 
BEGIN 
 
 LOOP 
   dbms_output.put_line(x);  -- 0 1 2 3 4 5 6 7 8 9 10 
   x := x + 1; 
    
   IF x > 10 THEN 
        exit; 
   END IF; 
 END LOOP; 
 
END; 
/

DECLARE 
    a INT := 0; 
BEGIN 
    WHILE a < 10 LOOP 
        dbms_output.put_line(a); 
        a := a + 1; 
    END LOOP; 
END; 
/

DECLARE 
    a INT := 0; 
BEGIN 
    WHILE a <= 10 LOOP 
        dbms_output.put_line(a); 
        a := a + 1; 
    END LOOP; 
END; 
/

DECLARE 
    a INT := 0; 
BEGIN 
    FOR a in 10 .. 20 LOOP 
        dbms_output.put_line(a); 
    END LOOP; 
END; 
/

DECLARE 
    a INT ; 
BEGIN 
    FOR a in 10 .. 20 LOOP 
        dbms_output.put_line(a); 
    END LOOP; 
END; 
/

DECLARE 
   type namesarray IS VARRAY(5) OF VARCHAR2(20); 
   type agearray IS VARRAY(5) OF INTEGER; 
   names namesarray; 
   age agearray; 
   total integer; 
BEGIN 
names := namesarray('Madhan','Ravi','Raja','Bala','Rudhra'); 
age := agearray(25,30,35,40,45); 
total := names.count; 
dbms_output.put_line('Total number of employees are: ' || total ); 
FOR i in 1 .. total LOOP 
    dbms_output.put_line('Employee: ' || names(i) || ' Age is: '||age(i)); 
END LOOP; 
END; 
/

