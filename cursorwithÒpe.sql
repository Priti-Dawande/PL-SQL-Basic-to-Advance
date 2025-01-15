--cursor with %type
set serveroutput on;
declare
    nm employees_priti.first_name%type;
    --declare cursor
    cursor mycur is 
        select first_name from employees_priti where employee_id<=105;
begin
    open mycur;
    loop
    fetch mycur into nm.first_name;
    dbms_output.put_line(nm);
    exit when mycur%notfound;
    end loop;
    close mycur;
end;
/