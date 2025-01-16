CREATE OR REPLACE FUNCTION factorial RETURN NUMBER
IS
      num1 number:=5;
      fact NUMBER:=1; 
      i number;
        BEGIN
           for i in 2..num1 
           loop
            fact:= fact*i;
        END loop;
        RETURN fact;

end;
/
DECLARE
  results NUMBER;
BEGIN
  results := factorial();
  DBMS_OUTPUT.PUT_LINE('Factorial of no is ' || results);
END;
/