--cursor with more cols programme 
set serveroutput on;
declare
    nm varchar2(50);
    lnm varchar2(50);
    --declare cursor
    cursor mycur is 
        select first_name,last_name from employees_priti where employee_id<=105;
begin
    open mycur;
    loop
    fetch mycur into nm,lnm;
    dbms_output.put_line(nm||' '||lnm);
    exit when mycur%notfound;
    end loop;
    close mycur;
end;
/