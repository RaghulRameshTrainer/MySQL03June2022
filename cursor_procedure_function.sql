CREATE TABLE CUSTOMER(
ID INTEGER,
NAME VARCHAR2(100),
AGE INTEGER);

INSERT INTO CUSTOMER VALUES(1,'Ramesh',37);
INSERT INTO CUSTOMER VALUES(2,'Siva',27);
INSERT INTO CUSTOMER VALUES(3,'Karthik',17);
INSERT INTO CUSTOMER VALUES(4,'Madhan',30);
INSERT INTO CUSTOMER VALUES(5,'Prakash',31);

SELECT * FROM CUSTOMER;

DESC CUSTOMER;

ALTER TABLE CUSTOMER
MODIFY NAME VARCHAR2(50);

DECLARE
    c_id INTEGER;
    c_name customer.name%type;
    c_age INTEGER;
    
    CURSOR customer_data IS
        SELECT id, name, age FROM CUSTOMER;
BEGIN

    OPEN customer_data;
    LOOP
        FETCH customer_data INTO c_id, c_name, c_age;
        EXIT WHEN customer_data%notfound;
        dbms_output.put_line(c_id|| ' - ' || c_name || ' - ' || c_age);
    END LOOP;
    CLOSE customer_data;
END;
/





-- PROCEDURE

CREATE OR REPLACE PROCEDURE welcome
AS
BEGIN
  dbms_output.put_line('Hello,Welcome to PLSQL World.....!');
END;
/


execute welcome;


BEGIN
  welcome;
END;
/

-- 3 parameters : IN ,OUT ,IN OUT

DECLARE
    a number;
    b number;
    c number;
    PROCEDURE findMin(x IN NUMBER, y IN number, z OUT number) IS
    BEGIN
        IF x < y THEN
            z := x;
        ELSE
            z := y;
        END IF;
        
    END;
BEGIN
    a := 52242;
    b := 1554245;
    findMin(a, b, c);
    dbms_output.put_line(' Minimum of 52242 , 1554245 is : ' || c);
END;
/



DECLARE
    a number;
    PROCEDURE squareNum(x IN OUT number) IS
BEGIN
    x := x * x;
END;

BEGIN
   a:=786;
   squareNum(a);
   
    dbms_output.put_line(' Square of 786 is : ' || a);
END;
/
 
 
 -- FUCNTION

CREATE OR REPLACE FUNCTION totalCustomer
RETURN number IS 
    total number := 0;
BEGIN
    SELECT count(*) INTO total 
    FROM customer;
    
    RETURN total;
END;
/
 

DECLARE
    t number;
BEGIN
    t := totalCustomer();
    dbms_output.put_line('Tota no of customers: ' ||t );
END;


SELECT * FROM CUSTOMER;


CREATE OR REPLACE FUNCTION customerMinAge
RETURN number IS 
    min_age number := 0;
BEGIN
    SELECT MIN(age) INTO min_age 
    FROM customer;
    
    RETURN min_age;
END;
/
 

DECLARE
    m number;
BEGIN
    m := customerMinAge();
    dbms_output.put_line('Tota no of customers: ' ||m );
END;



DECLARE
    a number;
    b number;
    c number;
    FUNCTION findMax(x IN NUMBER, y IN number) 
    RETURN number 
    IS
        z number;
    BEGIN
        IF x > y THEN
            z := x;
        ELSE
            z := y;
        END IF;
        RETURN z;
    END;
BEGIN
    a := 10;
    b := 20;
    c := findMax(a, b);
    dbms_output.put_line(' Maximun of 10 , 20 is : ' || c);
END;
/


















/
 
 
 
 






