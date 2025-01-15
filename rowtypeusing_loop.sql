DECLARE
    -- Declare a record variable of type employees%ROWTYPE
    v_employee employees_priti%ROWTYPE;
BEGIN
    -- Using a FOR loop to insert multiple rows
    FOR i IN 1..3 LOOP
        -- Assign values to the fields in the v_employee record
        v_employee.employee_id := i + 20;  -- Assign unique employee ID
        v_employee.first_name := 'Employee_' || TO_CHAR(i);  -- Assign first name
        v_employee.last_name := 'LastName_' || TO_CHAR(i);  -- Assign last name
        v_employee.salary := 50000 + (i * 100);  -- Salary increment for each employee
 
        -- Insert the row into the employees table
        INSERT INTO employees_priti (employee_id, first_name, last_name, salary)
        VALUES (v_employee.employee_id, v_employee.first_name, v_employee.last_name, v_employee.salary);
    END LOOP;
 
    -- Commit the transaction
    COMMIT;
END;
--select * from employees_priti;