--write a programe to display division of 2 nos
--SET SERVEROUTPUT ON;

DECLARE
    a   NUMBER;
    b   NUMBER;
    div NUMBER;
BEGIN
--fix values
    a := 10;
    b := 0;
    div := a / b;
    dbms_output.put_line('division= ' || div);
    
exception
    WHEN ZERO_DIVIDE THEN
        -- Handle division by zero
        Dbms_Output.Put_Line('Error: Division by zero is not allowed.'||sqlerrm);

     WHEN OTHERS THEN
        -- Handle all other exceptions
        Dbms_Output.Put_Line('Error: An unexpected exception occurred.');
END;
/