CREATE OR REPLACE FUNCTION MYDIV(X NUMBER,Y NUMBER)RETURN NUMBER AS
    TOT NUMBER;
    BEGIN 
        IF Y = 0 THEN
            RETURN NULL;
        ELSE
            TOT:=X/Y;
            RETURN TOT;
        END IF;
    END;
/
DECLARE
    TOT NUMBER;
BEGIN
    TOT:=MYDIV(10,5);
    DBMS_OUTPUT.PUT_LINE('total= '||TOT);
END;
/