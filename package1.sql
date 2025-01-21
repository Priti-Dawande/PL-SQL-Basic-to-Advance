CREATE OR REPLACE PACKAGE math_package AS
    FUNCTION add_numbers(a IN NUMBER, b IN NUMBER) RETURN NUMBER;
    FUNCTION multiply_numbers(a IN NUMBER, b IN NUMBER) RETURN NUMBER;
END math_package;
/
CREATE OR REPLACE PACKAGE BODY math_package AS
    FUNCTION add_numbers(a IN NUMBER, b IN NUMBER) RETURN NUMBER IS
    BEGIN
        RETURN a + b;
    END add_numbers;

    FUNCTION multiply_numbers(a IN NUMBER, b IN NUMBER) RETURN NUMBER IS
    BEGIN
        RETURN a * b;
    END multiply_numbers;
END math_package;
/
DECLARE
    sum_result NUMBER;
    product_result NUMBER;
BEGIN
    sum_result:= math_package.add_numbers(10, 5);
    product_result:= math_package.multiply_numbers(10, 5);
    DBMS_OUTPUT.PUT_LINE('Sum: ' || sum_result);
    DBMS_OUTPUT.PUT_LINE('Product: ' || product_result);
END;
/