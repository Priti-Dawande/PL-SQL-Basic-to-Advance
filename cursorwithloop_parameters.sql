--cursor for loop reduces the work of declare open fetch
--parameterised cursor
set serveroutput on;
declare
    --declare cursor
    cursor mycur(vid number) is 
        select first_name,last_name,salary from employees_priti where employee_id>=vid;
begin
    for l_idx in mycur(101)
    loop
        dbms_output.put_line(l_idx.first_name||'  '||l_idx.last_name||' '||l_idx.salary);
    end loop;
end;
/