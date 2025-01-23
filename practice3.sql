--practice 3
--1.Write a query to display the current date. Label the column Date
select to_char(sysdate,'dd_mon_yyyy') "Date" from dual;

select sysdate as "date" from dual;

-- 2. For each employee, display the employee number, last_name, salary, and salary increased by 15% 
--and expressed as a whole number. Label the column New Salary. 
select employee_id,last_name,(salary+(salary*15/100)) "New Salary" from employees;
select salary from employees;

--4. Modify your query lab3_2.sql to add a column that subtracts the old salary from
-- the new salary. Label the column Increase. Save the contents of the file as lab3_4.sql. Run 
--the revised query
SELECT EMPLOYEE_ID,LAST_NAME,SALARY,
ROUND(SALARY*1.15,0) "NEW SALARY" ,
ROUND(SALARY*1.15,0)-SALARY AS "INCERASE" FROM EMPLOYEES;

--5. Write a query that displays the employee’s last names with the first letter capitalized and all other 
--letters lowercase, and the length of the names, for all employees whose name starts with J, A, or M. 
--Give each column an appropriate label. Sort the results by the employees’ last names.
SELECT INITCAP(LAST_NAME) "Name",
LENGTH(LAST_NAME)"Length" FROM EMPLOYEES 
WHERE  LAST_NAME LIKE 'J%' OR
LAST_NAME LIKE 'A%' OR
LAST_NAME LIKE 'M%';

SELECT * FROM EMPLOYEES;
--6. For each employee, display the employee’s last name, and calculate the number of months between 
--today and the date the employee was hired. Label the column MONTHS_WORKED. Order your results 
--by the number of months employed. Round the number of months up to the closest whole number
SELECT LAST_NAME,ROUND(MONTHS_BETWEEN(SYSDATE,HIRE_DATE)) "MONTHS_WORKED"
FROM EMPLOYEES ORDER BY MONTHS_BETWEEN(SYSDATE,HIRE_DATE);


--7. Write a query that produces the following for each employee:
-- <employee last name> earns <salary> monthly but wants <3 times 
--salary>. Label the column Dream Salaries
SELECT   last_name || ' earns '
 || TO_CHAR(salary, 'fm$99,999.00')
 || ' monthly but wants '
 || TO_CHAR(salary * 3, 'fm$99,999.00')
 || '.' "Dream Salaries"
 FROM     employees;

--8. Create a query to display the last name and salary for all employees. Format the salary to be 15
-- characters long, left-padded with $. Label the column SALARY
SELECT LAST_NAME,LPAD(SALARY,15,'$') "SALARY"
FROM EMPLOYEES;

SELECT * FROM EMPLOYEES;
-- 9. Display each employee’s last name, hire date, and salary review date, which is the first Monday after 
--six months of service. Label the column REVIEW. Format the dates to appear in the format similar to 
--“Monday, the Thirty-First of July, 2000.
SELECT LAST_NAME,HIRE_DATE
FROM EMPLOYEES;


