--use type 
set SERVEROUTPUT on;
declare
    type mytype is record
    (eid number(5),
    efnm varchar2(50),
    elnm varchar2(50),
    esal number(5));
     emt mytype;
begin
    emt.eid:=11;
    emt.efnm:='pawan';
    emt.elnm:='agrawal';
    emt.esal:=11231;
    insert into employees_priti values emt;
    dbms_output.put_line('record inserted');
    
    emt.eid:=111;
    select * into emt from employees_priti where employee_id=emt.eid;
     dbms_output.put_line('eid= '||emt.eid);
     dbms_output.put_line('first name= '||emt.efnm);
     dbms_output.put_line('last name= '||emt.elnm);
     dbms_output.put_line('salary= '||emt.esal);
     
     emt.eid:=11;
     emt.efnm:='pawan';
     update employees_priti set first_name=emt.efnm;
     dbms_output.put_line('record updated');
     
     emt.eid:=105;
     delete from employees_priti where employee_id=emt.eid;
     dbms_output.put_line('record deleted');
end;
/