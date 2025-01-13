--write a program to display string in case
SET SERVEROUTPUT ON;
DECLARE
    v_day VARCHAR2(10);
BEGIN
    v_day := '&string'; -- Ensure input is provided as a string with quotes
    
    CASE v_day
        WHEN 'sunday' THEN
            DBMS_OUTPUT.PUT_LINE('Relax, it is Sunday !!');
        WHEN 'monday' THEN
            DBMS_OUTPUT.PUT_LINE('Get up, it is Monday morning!');
        WHEN 'friday' THEN
            DBMS_OUTPUT.PUT_LINE('Fun Friday!');
        WHEN 'saturday' THEN
            DBMS_OUTPUT.PUT_LINE('Weekend start!');
        ELSE
            DBMS_OUTPUT.PUT_LINE('Invalid selection');
    END CASE;
END;
/
