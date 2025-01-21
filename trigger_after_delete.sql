set SERVEROUTPUT ON;
CREATE OR REPLACE TRIGGER bu_Superheroes
BEFORE DELETE ON superheroes
FOR EACH ROW
ENABLE
DECLARE
  v_user  VARCHAR2 (15);
BEGIN
 SELECT user INTO v_user FROM dual;
 DBMS_OUTPUT.PUT_LINE('You Just Deleted a Row Mr.'|| v_user); 
END;
/
delete from superheroes where id=1;