/*create table superheroes(id number(2),name varchar2(30));
insert into superheroes values(1,'superman');
insert into superheroes values(2,'spiderman');
insert into superheroes values(3,'shaktiman');*/
set serveroutput on;
CREATE OR REPLACE TRIGGER t1 BEFORE INSERT ON superheroes
FOR EACH ROW
ENABLE
DECLARE
  v_user  VARCHAR2 (15);
BEGIN
 SELECT user INTO v_user FROM dual;
 DBMS_OUTPUT.PUT_LINE('You Just Inserted a Row Mr.'|| v_user); 
END;
/
insert into superheroes (name)values('shyam');