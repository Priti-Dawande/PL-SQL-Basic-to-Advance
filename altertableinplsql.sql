--alter table using plsql
BEGIN
    EXECUTE IMMEDIATE 'ALTER TABLE Priti_table ADD age NUMBER';
    DBMS_OUTPUT.PUT_LINE('Column age added to test_table.');
END;
/
