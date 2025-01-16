--6. Using OTHERS to Handle Unnamed Exceptions
set SERVEROUTPUT on;
DECLARE
    a NUMBER := 10;
    b NUMBER := 0;
    ans NUMBER;
BEGIN
    -- Simulate an unnamed exception
    ans := a / b; -- Division by zero
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('An unknown error occurred. Error code: ' || SQLCODE);
        DBMS_OUTPUT.PUT_LINE('Error message: ' || SQLERRM);
END;
/
