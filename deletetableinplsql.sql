--delete tale using pl sql 
set SERVEROUTPUT on;
BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE priti_table';
    DBMS_OUTPUT.PUT_LINE('Table priti_table dropped.');
END;
/
