--cursor with %rowtype
set serveroutput on;
declare
    nm employees_priti%rowtype;
    --declare cursor
    cursor mycur is 
        select * from employees_priti where employee_id<=105;
begin
    open mycur;
    loop
    fetch mycur into nm;
    dbms_output.put_line(nm.employee_id ||' '|| nm.first_name ||' '||nm.last_name ||' '||nm.salary);
    exit when mycur%notfound;
    end loop;
    close mycur;
end;
/