--5. Named System Exceptions
--Some Oracle exceptions have predefined names. Here's an example:
DECLARE
    v_value NUMBER := 1000;
    v_result NUMBER;
BEGIN
    -- Cause a value error by assigning an invalid value
    v_result := v_value / 0; -- Will raise ZERO_DIVIDE
EXCEPTION
    WHEN VALUE_ERROR THEN
        DBMS_OUTPUT.PUT_LINE('Error: Invalid value encountered.');
    WHEN ZERO_DIVIDE THEN
        DBMS_OUTPUT.PUT_LINE('Error: Division by zero.');
END;
/
