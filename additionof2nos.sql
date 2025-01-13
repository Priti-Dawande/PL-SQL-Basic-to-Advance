--write a programe to display addition of 2 nos
SET SERVEROUTPUT ON;

DECLARE
    a   NUMBER;
    b   NUMBER;
    ans NUMBER;
BEGIN
    a := 10;
    b := 20;
    ans := a + b;
    dbms_output.put_line('Total= ' || ans);
END;
/