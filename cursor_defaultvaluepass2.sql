--default cursor
--parameterised cursor with 2 times arguments
set serveroutput on;
declare
    nm varchar2(50);
    vid number(4);
    --declare cursor
    cursor mycur (vid number:=105)is --gives default value to avoid unnecessary supplying arrgument for each parameter
        select first_name,employee_id from employees_priti where employee_id>=vid;
begin
    open mycur(11);
    loop
    fetch mycur into nm,vid;
    dbms_output.put_line(nm||' '||vid);
    exit when mycur%notfound;
    end loop;
    close mycur;
end;
/