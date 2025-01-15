--parameterised cursor
set serveroutput on;
declare
    nm varchar2(50);
    --declare cursor
    cursor mycur (var_nm varchar2)is --do not give widhth size
    select first_name from employees_priti where employee_id>=var_nm;
begin
    open mycur(105);
    loop
    fetch mycur into nm;
    dbms_output.put_line(nm);
    exit when mycur%notfound;
    end loop;
    close mycur;
end;
/