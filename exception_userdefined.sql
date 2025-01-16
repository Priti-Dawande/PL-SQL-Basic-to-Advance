select * from employees_priti;
--2. User-Defined Exceptions
set SERVEROUTPUT on;
DECLARE
    -- Define a user-defined exception
    e_salary_too_low EXCEPTION;
    v_salary NUMBER := 2000;
BEGIN
    -- Raise the exception if salary is too low
    IF v_salary < 3000 THEN
        RAISE e_salary_too_low;
    END IF;

    DBMS_OUTPUT.PUT_LINE('Salary is acceptable.');
EXCEPTION
    WHEN e_salary_too_low THEN
        DBMS_OUTPUT.PUT_LINE('Error: Salary is too low.');
END;
/