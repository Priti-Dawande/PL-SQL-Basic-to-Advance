--write a programme to print 1 to 10s by using exit when
SET SERVEROUTPUT ON;
DECLARE
    N NUMBER := 0;
BEGIN
    LOOP
        N := N + 1;
        -- Print the current number
        DBMS_OUTPUT.PUT_LINE(N);
        -- Exit the loop when N > 10
        EXIT WHEN N >= 10;
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('Loop executed ' || N || ' times');
END;
/
