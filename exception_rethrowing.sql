--4. Using RAISE for Re-Throwing Exceptions
set SERVEROUTPUT on;
DECLARE
    a NUMBER := 10;
    b NUMBER := 0;
    ans NUMBER;
BEGIN
    BEGIN
        -- Inner block
        ans := a / b; -- Division by zero
    EXCEPTION
        WHEN ZERO_DIVIDE THEN
            DBMS_OUTPUT.PUT_LINE('Handling exception in inner block.');
            RAISE; -- Re-throw exception
    END;
    DBMS_OUTPUT.PUT_LINE('Result: ' || ans);
    EXCEPTION
        WHEN ZERO_DIVIDE THEN
        DBMS_OUTPUT.PUT_LINE('Handling exception in outer block.');
END;
/