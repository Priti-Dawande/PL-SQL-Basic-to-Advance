--procedure with in & out parameters
CREATE OR REPLACE PROCEDURE calculate_square (
   p_number IN NUMBER,
   p_square OUT NUMBER
) IS
BEGIN
   p_square := p_number * p_number;
END calculate_square;
/
DECLARE
   number_value NUMBER := 8;
   square_value NUMBER;
BEGIN
   calculate_square(number_value, square_value);
   DBMS_OUTPUT.PUT_LINE('Square of ' || number_value || ' is ' || square_value);
END;
/