SET SERVEROUTPUT ON;
CREATE OR REPLACE TRIGGER employee_insert_trigger
AFTER INSERT ON employees
FOR EACH ROW
DECLARE 
MYID NUMBER;
BEGIN
    -- Trying to query the employees table inside an AFTER INSERT trigger
    insert into employees values(203,'Mohini','mw@gmail.com',12,to_date(sysdate),'Technical');
END;
/
insert into employees values(204,'tejawi','t@gmail.com',12,to_date(sysdate),'Technical');
