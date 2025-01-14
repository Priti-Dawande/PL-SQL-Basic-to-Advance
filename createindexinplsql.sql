--Create an Index using plsql
BEGIN
    EXECUTE IMMEDIATE 'CREATE INDEX idx_name ON priti_table(name)';
    DBMS_OUTPUT.PUT_LINE('Index idx_name created successfully.');
END;
/
