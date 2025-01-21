set SERVEROUTPUT ON;
CREATE OR REPLACE TRIGGER bu_Superheroes
BEFORE UPDATE ON superheroes
FOR EACH ROW
ENABLE
DECLARE
  v_user  VARCHAR2 (15);
BEGIN
 SELECT user INTO v_user FROM dual;
 DBMS_OUTPUT.PUT_LINE('You Just Updated a Row Mr.'|| v_user); 
END;
/
update superheroes set name='ram' where id=1;