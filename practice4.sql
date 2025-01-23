SELECT e.last_name, e.department_id, d.department_name
 FROM employees e, departments d
 WHERE e.department_id = d.department_id;
 
--  2. Create a unique listing of all jobs that are in department 30. Include the location of department 90 
--in the output. 
SELECT DISTINCT job_id, location_id
 FROM employees, departments
 WHERE employees.department_id = departments.department_id
 AND employees.department_id = 30;
 
-- 3. Write a query to display the employee last name, department name, location ID, and city of all 
--employees who earn a commission.
 SELECT e.last_name, d.department_name, d.location_id, l.city
 FROM employees e, departments d, locations l
 WHERE e.department_id = d.department_id
 AND
 d.location_id = l.location_id
 AND e.commission_pct IS NOT NULL;
 
 
--  4. Display the employee last name and department name for all employees who have an a (lowercase) 
--in their last names. Place your SQL statement in a text file named lab4_4.sql.
 SELECT last_name, department_name
 FROM employees, departments
 WHERE employees.department_id = departments.department_id
 AND last_name LIKE '%a%';
 
--  5. Write a query to display the last name, job, department number, and department name for all
-- employees who work in Toronto. 
SELECT e.last_name, e.job_id, e.department_id, 
d.department_name
 FROM employees e JOIN departments d 
ON (e.department_id = d.department_id)
 JOIN locations l
 ON (d.location_id = l.location_id)
 WHERE LOWER(l.city) = 'toronto';
 
--  6. Display the employee last name and employee number along with their manager’s last name and 
--manager number. Label the columns Employee, Emp#, Manager, and Mgr#, respectively. 
--Place your SQL statement in a text file named lab4_6.sql.
 
SELECT w.last_name "Employee", w.employee_id "EMP#", 
m.last_name "Manager", m.employee_id  "Mgr#"
 FROM employees w join employees m
 ON (w.manager_id = m.employee_id);
 
 
--  6. Display the employee last name and employee number along with their manager’s last name and 
--manager number. Label the columns Employee, Emp#, Manager, and Mgr#, respectively. 
--Place your SQL statement in a text file named lab4_6.sql.
 SELECT w.last_name "Employee", w.employee_id "EMP#", 
m.last_name "Manager", m.employee_id  "Mgr#"
 FROM employees w join employees m
 ON (w.manager_id = m.employee_id);
 
 
 SELECT w.last_name "Employee", w.employee_id "EMP#", 
m.last_name "Manager", m.employee_id  "Mgr#"
 FROM employees w,employees m where w.manager_id = m.employee_id;