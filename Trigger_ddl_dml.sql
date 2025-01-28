-- Create a log table to store DDL events
CREATE TABLE XXACSE.ddl_log1 (
    log_id NUMBER GENERATED ALWAYS AS IDENTITY,
    event_type VARCHAR2(50),
    object_name VARCHAR2(100),
    event_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create the DDL trigger to insert events into the log table
CREATE OR REPLACE TRIGGER my_schema_ddl_trigger1
AFTER CREATE OR ALTER OR DROP
ON SCHEMA
BEGIN
   IF SYS_CONTEXT('USERENV', 'CURRENT_SCHEMA') = 'XXACSE' THEN
      -- Insert event details into the log table
      INSERT INTO XXACSE.ddl_log1 (event_type, object_name)
      VALUES (ORA_DICT_OBJ_TYPE, ORA_DICT_OBJ_NAME);
   END IF;
END;
/
SELECT * FROM ddl_log1;