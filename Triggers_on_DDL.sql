SET SERVEROUTPUT ON;
CREATE OR REPLACE TRIGGER my_schema_ddl_trigger
AFTER CREATE OR ALTER OR DROP
ON XXACSE.SCHEMA
BEGIN
   -- Action to perform when a DDL command is executed in the custom schema
   IF SYS_CONTEXT('USERENV', 'CURRENT_SCHEMA') = 'XXACSE' THEN
      -- Log or take action, e.g., print message
      DBMS_OUTPUT.PUT_LINE('DDL command executed in MY_SCHEMA');
   END IF;
END;
/
-- Log output when creating a table in MY_SCHEMA
CREATE TABLE XXACSE.test_table (id NUMBER, name VARCHAR2(50));

-- Log output when altering the table in MY_SCHEMA
ALTER TABLE XXACSE.test_table ADD (address VARCHAR2(100));

-- Log output when dropping the table in MY_SCHEMA
DROP TABLE XXACSE.test_table;
