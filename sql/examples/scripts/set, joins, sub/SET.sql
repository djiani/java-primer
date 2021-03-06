--SET OPERATORS
--Which are the unique names between these two tables
SELECT FIRSTNAME FROM CUSTOMER
UNION
SELECT FIRSTNAME FROM EMPLOYEE
ORDER BY FIRSTNAME;

--Which are the unique names between these two tables
--(PLUS THE ONES THAT REPEAT)
SELECT FIRSTNAME FROM CUSTOMER
UNION ALL
SELECT FIRSTNAME FROM EMPLOYEE
ORDER BY FIRSTNAME;

--Which are the common names between these two tables
SELECT FIRSTNAME FROM CUSTOMER
INTERSECT
SELECT FIRSTNAME FROM EMPLOYEE;

--Which are the names of customers that employees don't have
SELECT FIRSTNAME FROM CUSTOMER
MINUS
SELECT FIRSTNAME FROM EMPLOYEE;