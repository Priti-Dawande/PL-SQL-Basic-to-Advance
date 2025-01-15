--cursor for loop reduces the work of declare open fetch
/*syntax is 
for loop_index in cursor_name
loop 
statements
end loop;
*/
set serveroutput on;
declare
    --declare cursor
    cursor mycur is 
        select first_name,last_name,salary from employees_priti;
begin
    for l_idx in mycur 
    loop
        dbms_output.put_line(l_idx.first_name||'  '||l_idx.last_name||' '||l_idx.salary);
    end loop;
end;
/