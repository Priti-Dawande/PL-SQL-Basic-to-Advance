--In PL/SQL, %ROWTYPE is used to define a variable that can hold an entire row of a table or a cursor.
--This allows you to retrieve or manipulate all the columns of a table at once, 
--rather than defining each column individually.
SET SERVEROUTPUT ON;
DECLARE
    -- Declare a variable to hold an entire row from the EMPLOYEES_PRITI1 table
    v_employee EMPLOYEES_PRITI1%ROWTYPE;

BEGIN
    -- Select a row into the variable v_employee
    SELECT * INTO v_employee
    FROM EMPLOYEES_PRITI1
    WHERE EMPLOYEE_ID = 101;

    -- Display the employee information
    DBMS_OUTPUT.PUT_LINE('Employee ID: ' || v_employee.EMPLOYEE_ID);
    DBMS_OUTPUT.PUT_LINE('First Name: ' || v_employee.FIRST_NAME);
    DBMS_OUTPUT.PUT_LINE('Last Name: ' || v_employee.LAST_NAME);
    DBMS_OUTPUT.PUT_LINE('Salary: ' || v_employee.SALARY);
    
    -- Update the salary of the employee using %ROWTYPE variable
    v_employee.SALARY := 7500;

    -- Update the record in the table
    UPDATE EMPLOYEES_PRITI1
    SET SALARY = v_employee.SALARY
    WHERE EMPLOYEE_ID = v_employee.EMPLOYEE_ID;

    -- Output confirmation message
    DBMS_OUTPUT.PUT_LINE('Employee salary updated successfully.');
END;
/
