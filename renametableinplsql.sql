--rename table in plsql
BEGIN
   -- EXECUTE IMMEDIATE 'RENAME priti_table TO renamed_table';
    EXECUTE IMMEDIATE 'RENAME renamed_table TO priti_table';
    DBMS_OUTPUT.PUT_LINE('Table renamed to renamed_table.');
END;
/