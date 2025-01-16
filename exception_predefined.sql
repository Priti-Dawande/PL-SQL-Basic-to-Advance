--1. Handling Predefined divide by zero Exceptions
DECLARE
    v_num1 NUMBER := 10;
    v_num2 NUMBER := 0;
    v_result NUMBER;
BEGIN
    -- Attempt division by zero
    v_result := v_num1 / v_num2;
    DBMS_OUTPUT.PUT_LINE('Result: ' || v_result);
EXCEPTION
    WHEN ZERO_DIVIDE THEN
        DBMS_OUTPUT.PUT_LINE('Error: Division by zero is not allowed.');
END;
/
