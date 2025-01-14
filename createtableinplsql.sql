--Create table by using PL-SQL
BEGIN
    EXECUTE IMMEDIATE 'CREATE TABLE Priti_table (
        id NUMBER PRIMARY KEY,name VARCHAR2(50)
    )';
    DBMS_OUTPUT.PUT_LINE('Table test_table created successfully.');
END;
/
