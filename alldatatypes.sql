--Write a PL/SQL block to declare and print variables of different data types
DECLARE
    -- Variable declarations with different data types
    v_number NUMBER := 12345;             -- Numeric type
    v_varchar VARCHAR2(50) := 'Hello!';   -- String type
    v_date DATE := SYSDATE;               -- Date type
    v_boolean BOOLEAN := TRUE;            -- Boolean type
    v_char CHAR(1) := 'A';                -- Fixed-length string
    v_float BINARY_FLOAT := 3.14159;      -- Floating-point type
    v_clob CLOB := 'This is a CLOB data'; -- Character large object
BEGIN
    -- Print the values of the variables
    DBMS_OUTPUT.PUT_LINE('Number: ' || v_number);
    DBMS_OUTPUT.PUT_LINE('Varchar: ' || v_varchar);
    DBMS_OUTPUT.PUT_LINE('Date: ' || TO_CHAR(v_date, 'YYYY-MM-DD HH24:MI:SS'));
    DBMS_OUTPUT.PUT_LINE('Boolean: ' || CASE WHEN v_boolean THEN 'TRUE' ELSE 'FALSE' END);
    DBMS_OUTPUT.PUT_LINE('Char: ' || v_char);
    DBMS_OUTPUT.PUT_LINE('Float: ' || TO_CHAR(v_float));
    DBMS_OUTPUT.PUT_LINE('CLOB: ' || v_clob);
END;
