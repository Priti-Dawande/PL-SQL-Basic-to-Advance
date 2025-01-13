--Write a PL/SQL block to categorize grades based on marks.
SET SERVEROUTPUT ON;
DECLARE
    X NUMBER;
BEGIN
    X:=&no;
    IF X>=35 AND X<=49 THEN
        dbms_output.put_line('Third division');
    ELSIF X>=50 AND X<=59 THEN
        dbms_output.put_line('Second division');
    ELSIF X>=60 AND X<=74 THEN
        dbms_output.put_line('First division');
    ELSIF X>=75 THEN
        dbms_output.put_line('distintion division');
    ELSE
        dbms_output.put_line('Fail');
    END IF;
END;
/