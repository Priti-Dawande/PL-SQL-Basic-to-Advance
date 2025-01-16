select * from departments;
--predefined exception value error
set SERVEROUTPUT on;
DECLARE
    v_number NUMBER;
BEGIN
    -- Attempt to convert an invalid string to a number
    v_number := TO_NUMBER('ABC123'); -- Raises VALUE_ERROR

    DBMS_OUTPUT.PUT_LINE('Converted Number: ' || v_number);
EXCEPTION
    WHEN VALUE_ERROR THEN
        DBMS_OUTPUT.PUT_LINE('Error: Invalid value encountered during conversion.');
END;
/