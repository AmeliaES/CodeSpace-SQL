-- 1.     Select all columns from the employee table.
SELECT * FROM EMPLOYEE;

-- 2.     Select unique department names from the 'department' table:
SELECT DISTINCT DEPARTMENT_NAME FROM DEPARTMENT;

-- 3.     Select employee names and salaries from the 'employee' table, ordered by salary in descending order:
SELECT EMPLOYEE_NAME, SALARY 
FROM EMPLOYEE
ORDER BY SALARY DESC;

-- 4.     Select products with a price between £100 and £500 from the 'product' table:
SELECT * FROM PRODUCT
WHERE PRICE >= 100 AND PRICE <= 500;

-- 5.     Select orders made by employees in the 'IT' department by joining 'purchase' and 'employee' tables:
SELECT P.ORDER_ID, P.ORDER_DATE, E.EMPLOYEE_NAME FROM PURCHASE AS P
JOIN EMPLOYEE AS E
ON P.EMPLOYEE_ID = E.EMPLOYEE_ID
WHERE DEPARTMENT_ID = 4;

-- the following also works incase DEPARTMENT_ID of 4 ever gets coded as a different department to 'IT'
SELECT P.ORDER_ID, P.ORDER_DATE, E.EMPLOYEE_NAME FROM PURCHASE AS P
JOIN EMPLOYEE AS E
ON P.EMPLOYEE_ID = E.EMPLOYEE_ID
JOIN DEPARTMENT AS D
ON D.DEPARTMENT_ID = E.DEPARTMENT_ID
WHERE D.DEPARTMENT_NAME = 'IT';

-- 6.     Select products with names containing 'Chair' using a wildcard:
SELECT * FROM PRODUCT
WHERE PRODUCT_NAME LIKE '%CHAIR%';

-- 7.     Select orders made by employees with IDs 1, 3, and 5:
SELECT P.* FROM EMPLOYEE E
JOIN PURCHASE P
ON E.EMPLOYEE_ID = P.EMPLOYEE_ID
WHERE E.EMPLOYEE_ID IN (1,3,5);

-- 8.     Select the average salary of all employees:
SELECT AVG(SALARY) AS AVERAGE_SALARY FROM EMPLOYEE;

-- 9.     Select employees hired after '2022-03-01' with a salary greater than £60000:
SELECT * FROM EMPLOYEE 
WHERE SALARY > 60000 AND HIRE_DATE > '2022-03-01';

-- 10. Select departments with more than 1 employee, counting the number of employees in each department:
SELECT D.*, COUNT(D.DEPARTMENT_ID) AS NUM_EMPLOYEES FROM EMPLOYEE E
JOIN DEPARTMENT D
ON E.DEPARTMENT_ID = D.DEPARTMENT_ID
GROUP BY D.DEPARTMENT_ID
HAVING NUM_EMPLOYEES > 1;
