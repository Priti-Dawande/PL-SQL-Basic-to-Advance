--%type: In PL/SQL, %TYPE is used to define a variable with the same data type as a column in a table.
--This ensures that the variable will automatically adapt to any changes in the column's data type.
SET SERVEROUTPUT ON;
DECLARE
    -- Define variables using %TYPE
    v_employee_id EMPLOYEES_PRITI1.EMPLOYEE_ID%TYPE;
    v_salary EMPLOYEES_PRITI1.SALARY%TYPE;

BEGIN
    -- Assign values to variables
    v_employee_id := 101;
    v_salary := 7000;

    -- Update the salary for the specified employee
    UPDATE EMPLOYEES_PRITI1
    SET SALARY = v_salary
    WHERE EMPLOYEE_ID = v_employee_id;

    -- Output the updated information
    DBMS_OUTPUT.PUT_LINE('Employee ID: ' || v_employee_id || ' updated with Salary: ' || v_salary);
END;
/
