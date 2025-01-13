--write a programe to display even or odd of 2 nos by user defind values
SET SERVEROUTPUT ON;

DECLARE
    X NUMBER;
    ANS NUMBER;
BEGIN
    X:=&NO;
   IF MOD(X, 2) = 0 THEN
        DBMS_OUTPUT.PUT_LINE('Even');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Odd');
    END IF;
END;
/