--write a program to print 1 to N by while loop 
SET SERVEROUTPUT ON;
DECLARE
    I NUMBER;
    N NUMBER;
BEGIN
    N:=&NO;
    I:=1;
   WHILE(I<=N)LOOP
     DBMS_OUTPUT.PUT_LINE(I);
     I:=I+1;
    END LOOP;
END;
/