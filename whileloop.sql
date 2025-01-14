--write a program to print 1 to 10 by while loop 
SET SERVEROUTPUT ON;
DECLARE
    I NUMBER;
BEGIN
    I:=1;
    WHILE(I<=10) LOOP
        dbms_output.put_line(I);
        I:=I+1;
    END LOOP;
END;
/