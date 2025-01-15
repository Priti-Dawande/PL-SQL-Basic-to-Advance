--SELECT * FROM employees_priti;
SET SERVEROUTPUT ON;

DECLARE
    eid  employees_priti.employee_id%TYPE;
    efnm employees_priti.first_name%TYPE;
    elnm employees_priti.last_name%TYPE;
    esal employees_priti.salary%TYPE;
BEGIN
    eid := 103;
    efnm := 'vivek';
    elnm := 'D';
    esal := 8000;
    INSERT INTO employees_priti (
        employee_id,
        first_name,
        last_name,
        salary
    ) VALUES (
        eid,
        efnm,
        elnm,
        esal
    );

    dbms_output.put_line('recored inserted');
    BEGIN
        eid := 104;
        efnm := 'mohini';
        UPDATE employees_priti
        SET
            first_name = efnm
        WHERE
            employee_id = eid;
        IF SQL%rowcount = 0 THEN
            dbms_output.put_line('No record found to update.');
        ELSE
            dbms_output.put_line('Record updated for: ' || efnm);
        END IF;

    EXCEPTION
        WHEN OTHERS THEN
            dbms_output.put_line('Error occurred: ' || sqlerrm);
    END;

    BEGIN
        eid := 103;
        DELETE FROM employees_priti
        WHERE
            employee_id = eid;

        dbms_output.put_line('Record deleted ');
    END;

    BEGIN
        eid := 101;
        BEGIN
            SELECT first_name, last_name, salary
            INTO efnm, elnm, esal
            FROM employees_priti
            WHERE employee_id = eid;

            DBMS_OUTPUT.PUT_LINE('Employee Found: ' || eid || ', ' || efnm || ', ' || elnm || ', ' || esal);
        EXCEPTION
            WHEN NO_DATA_FOUND THEN
                DBMS_OUTPUT.PUT_LINE('No record found for Employee ID: ' || eid);
            WHEN OTHERS THEN
                DBMS_OUTPUT.PUT_LINE('Error occurred during select: ' || SQLERRM);
        END;
    end;
END;
/
--SELECT * FROM employees_priti;