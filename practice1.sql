
-- PRACTICE 1
--1.
SELECT
    employee_id,
    last_name,
    salary * 12 annual_salary
FROM
    employees;
 
 --2. structure of dept tbl
desc departments;

SELECT
    *
FROM
    departments;
 
 --3.  Create a query to display the last name, job code, hire 
--date, and employee number for each employee, with employee number appearing first. Provide an 
--alias STARTDATE for the HIRE_DATE column. Save your SQL statement to a file named 
--lab1_7.sql

desc employees;

SELECT
    employee_id,
    last_name,
    job_id,
    hire_date AS startdate
FROM
    employees;
 
 
 --4. Create a query to display unique job codes from the EMPLOYEES table.

SELECT DISTINCT
    ( job_id )
FROM
    employees;
 
 --5. Display column name as like below
SELECT
    employee_id AS "EMP #",
    last_name   AS employee,
    job_id      AS job,
    hire_date   AS startdate
FROM
    employees;
    
    
-- 6. Display the last name concatenated with the job ID, separated by a comma and space, and name the column Employee and Title.    

--TYPE1
SELECT 
    last_name || ' , ' || job_id  AS "Employee and Title"
FROM EMPLOYEES;

--TYPE2
SELECT 
    CONCAT(CONCAT(last_name, ' , ') , job_id) AS "Employee and Title"
FROM EMPLOYEES;

-- 7. Create a query to display all the data from the EMPLOYEES table. 
--  Separate each column by a comma. Name the column THE_OUTPUT.

SELECT EMPLOYEE_ID || ', ' || 
       FIRST_NAME || ', ' || 
       LAST_NAME || ', ' || 
       EMAIL || ', ' || 
       PHONE_NUMBER || ', ' || 
       TO_CHAR(HIRE_DATE, 'DD-MM-YYYY') || ', ' || 
       JOB_ID || ', ' || 
       SALARY || ', ' || 
       COMMISSION_PCT || ', ' || 
       MANAGER_ID || ', ' || 
       DEPARTMENT_ID AS THE_OUTPUT
FROM EMPLOYEES
WHERE ROWNUM <= 60;





