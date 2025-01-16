--cursor attributes 1.	%ISOPEN:,2.	%FOUND:,3.	%NOTFOUND:,4.	%ROWCOUNT:
set SERVEROUTPUT on;
DECLARE
    -- Define an explicit cursor
    CURSOR emp_cursor IS
        SELECT employee_id, first_name, salary
        FROM employees_priti;

    -- Variables to hold data from the cursor
    v_employee_id employees_priti.employee_id%TYPE;
    v_first_name employees_priti.first_name%TYPE;
    v_salary employees_priti.salary%TYPE;
BEGIN
    -- Check if the cursor is open before opening
    IF emp_cursor%ISOPEN THEN
        DBMS_OUTPUT.PUT_LINE('Cursor is already open.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Cursor is not open. Opening now...');
        OPEN emp_cursor;
    END IF;

    -- Loop through the cursor rows
    LOOP
        FETCH emp_cursor INTO v_employee_id, v_first_name, v_salary;

        -- Use %ISFOUND and %NOTFOUND
        IF emp_cursor%NOTFOUND THEN
            DBMS_OUTPUT.PUT_LINE('No more rows to fetch.');
            EXIT;
        ELSIF emp_cursor%FOUND THEN
            DBMS_OUTPUT.PUT_LINE('Fetched Row: Employee ID: ' || v_employee_id ||
                                 ', Name: ' || v_first_name ||
                                 ', Salary: ' || v_salary);
        END IF;

        -- Display the number of rows processed using %ROWCOUNT
        DBMS_OUTPUT.PUT_LINE('Rows processed so far: ' || emp_cursor%ROWCOUNT);
    END LOOP;

    -- Close the cursor
    CLOSE emp_cursor;

    -- Check if the cursor is open after closing
    IF emp_cursor%ISOPEN THEN
        DBMS_OUTPUT.PUT_LINE('Cursor is still open after close.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Cursor is now closed.');
    END IF;
END;
/