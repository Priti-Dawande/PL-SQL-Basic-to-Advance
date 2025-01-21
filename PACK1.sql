set serveroutput on;
CREATE TABLE EMPLOYEES_P (
    EMPLOYEE_ID NUMBER PRIMARY KEY,
    NAME VARCHAR2(100),
    JOB_TITLE VARCHAR2(100)
);
INSERT INTO EMPLOYEES_P VALUES (101, 'John Doe', 'Developer');
INSERT INTO EMPLOYEES_P VALUES (102, 'Jane Smith', 'Manager');
INSERT INTO EMPLOYEES_P VALUES (103, 'Sam Brown', 'Analyst');
COMMIT;

CREATE OR REPLACE PACKAGE SIMPLE_EMP_MGMT AS
    -- Function to get employee name by ID
    FUNCTION GET_EMP_NAME(p_emp_id NUMBER) RETURN VARCHAR2;

    -- Procedure to update employee job title
    PROCEDURE UPDATE_JOB_TITLE(p_emp_id NUMBER, p_job_title VARCHAR2);

    -- Procedure to display all employees
    PROCEDURE DISPLAY_ALL_EMPLOYEES;
END SIMPLE_EMP_MGMT;
/
CREATE OR REPLACE PACKAGE BODY SIMPLE_EMP_MGMT AS

    -- Function to get employee name by ID
    FUNCTION GET_EMP_NAME(p_emp_id NUMBER) RETURN VARCHAR2 IS
        v_name VARCHAR2(100);
    BEGIN
        SELECT NAME INTO v_name
        FROM EMPLOYEES_P
        WHERE EMPLOYEE_ID = p_emp_id;

        RETURN v_name;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            RETURN 'Employee not found';
        WHEN OTHERS THEN
            RETURN 'Error occurred: ' || SQLERRM;
    END GET_EMP_NAME;

    -- Procedure to update employee job title
    PROCEDURE UPDATE_JOB_TITLE(p_emp_id NUMBER, p_job_title VARCHAR2) IS
    BEGIN
        UPDATE EMPLOYEES_P
        SET JOB_TITLE = p_job_title
        WHERE EMPLOYEE_ID = p_emp_id;

        IF SQL%ROWCOUNT = 0 THEN
            DBMS_OUTPUT.PUT_LINE('No employee found with ID: ' || p_emp_id);
        ELSE
            DBMS_OUTPUT.PUT_LINE('Job title updated successfully for employee ID: ' || p_emp_id);
        END IF;
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
    END UPDATE_JOB_TITLE;

    -- Procedure to display all employees
    PROCEDURE DISPLAY_ALL_EMPLOYEES IS
    BEGIN
        FOR rec IN (SELECT EMPLOYEE_ID, NAME, JOB_TITLE FROM EMPLOYEES_P) LOOP
            DBMS_OUTPUT.PUT_LINE('ID: ' || rec.EMPLOYEE_ID || ', Name: ' || rec.NAME || ', Job Title: ' || rec.JOB_TITLE);
        END LOOP;
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
    END DISPLAY_ALL_EMPLOYEES;

END SIMPLE_EMP_MGMT;
/
BEGIN
    SIMPLE_EMP_MGMT.UPDATE_JOB_TITLE(101, 'Senior Developer'); -- Replace 101 with an actual employee ID
END;
/
BEGIN
    SIMPLE_EMP_MGMT.DISPLAY_ALL_EMPLOYEES;
END;
/
DECLARE
    v_name VARCHAR2(100);
BEGIN
    v_name := SIMPLE_EMP_MGMT.GET_EMP_NAME(101); -- Replace 101 with an actual employee ID
    DBMS_OUTPUT.PUT_LINE('Employee Name: ' || v_name);
END;
/
SELECT * FROM EMPLOYEES_P;