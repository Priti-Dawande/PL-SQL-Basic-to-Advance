--truncate table using pl sql
BEGIN
    EXECUTE IMMEDIATE 'TRUNCATE TABLE Priti_table';
    DBMS_OUTPUT.PUT_LINE('Table renamed_table truncated.');
END;
/
