-- PRACTICE 2

-- 1. Create a query to display the last name and salary of employees earning more than $12,000.

SELECT
    last_name "NAME",
    salary
FROM
    employees
WHERE
    salary >= 12000;

SELECT
    *
FROM
    employees;
--2. Create a query to display the employee last name and department number for employee number 176

SELECT
    last_name "NAME",
    department_id
FROM
    employees
WHERE
    employee_id = 176;
    
    
-- 3. display the last name and salary for all employees whose salary is not in 
--the range of $5,000 and $12,000

SELECT
    last_name "NAME",
    salary
FROM
    employees
WHERE
    salary NOT BETWEEN 5000 AND 12000;
    


-- 4. Display the employee last name, job ID, and start date of employees hired between February 20, 
--  1998, and May 1, 1998. Order the query in ascending order by start date.

SELECT
    last_name,
    job_id,
    hire_date
FROM
    employees
WHERE
    hire_date BETWEEN '20-Feb-1998' AND '01-May-1998'
ORDER BY
    hire_date;


---
SELECT
    last_name                       "NAME",
    job_id,
    to_char(hire_date, 'DD-MON-YY') AS "START DATE"
FROM
    employees
WHERE
    hire_date BETWEEN TO_DATE('February 20 1998', 'MONTH DD YYYY') AND TO_DATE('May 1 1998', 'MONTH DD YYYY')
ORDER BY
    hire_date ASC;


 

 
--5. Display the last name and department number of all employees in departments 20 and 50 in 
--alphabetical order by name.

SELECT
    last_name,
    department_id
FROM
    employees
WHERE
    department_id IN ( 20, 50 )
ORDER BY
    last_name;
    
    
-- 6.  last name and salary of employees who earn between $5,000 and 
--$12,000, and are in department 20 or 50. Label the columns Employee and Monthly Salary, 
--respectively. Resave lab2_3.sql as lab2_6.sql. Run the statement in lab2_6.sql.

SELECT
    last_name "employee",
    salary    "monthly salary"
FROM
    employees
WHERE
    department_id IN ( 20, 50 )
    AND salary BETWEEN 5000 AND 12000;
/

SELECT
    last_name "Employee",
    salary    "Monthly Salary"
FROM
    employees
WHERE
    salary BETWEEN 5000 AND 12000
    AND department_id IN ( 20, 50 );
 
 
 -- 7. Display the last name and hire date of every employee who was hired in 1994.
SELECT
    last_name,
    to_char(hire_date, 'YYYY') "Hired in"
FROM
    employees
WHERE
    to_char(hire_date, 'YYYY') = 1994;

SELECT
    last_name,
    to_char(hire_date, 'YYYY') "Hired in"
FROM
    employees
WHERE
    hire_date LIKE '%94';
 
 
 
  -- 8. Display the last name and job title of all employees who do not have a manager
SELECT
    *
FROM
    employees;

SELECT
    last_name,
    job_id
FROM
    employees
WHERE
    manager_id IS NULL;
 
 
 -- 9. Display the last name, salary, and commission for all employees who earn commissions. Sort
-- data in descending order of salary and commissions

SELECT
    last_name,
    salary,
    commission_pct
FROM
    employees
WHERE
    commission_pct IS NOT NULL
ORDER BY
    salary DESC,
    commission_pct DESC;
    
-- 10. Display the last names of all employees where the third letter of the name is an a.

SELECT
    last_name
FROM
    employees
WHERE
    last_name LIKE '__a%';


--11. Display the last name of all employees who have an a and an e in their last name.
SELECT
    last_name
FROM
    employees
WHERE
    last_name LIKE '%a%'
    AND last_name LIKE '%e'; 

--12. Display the last name, job, and salary for all employees whose job is sales representative or stock 
--clerk and whose salary is not equal to $2,500, $3,500, or $7,000
SELECT
    last_name,
   job_id,
    salary
FROM
    employees
WHERE
    job_id IN ( 'SA_REP', 'AC_ACCOUNT', 'SH_CLERK' )
    AND salary NOT IN ( 2500, 500, 7000 );

--SELECT distinct job_id FROM EMPLOYEES;


--13.  display the last name, salary, and commission for all employees whose 
--      commission amount is 20%


SELECT
    last_name,
    salary,
    commission_pct
FROM
    employees
WHERE
    commission_pct = 0.20;







