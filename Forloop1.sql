--write a programe to display for loop
set serveroutput on;
declare
    i number;
begin
    for i in 1..10 loop
        DBMS_OUTPUT.PUT_LINE(i);
    end loop;
end;
/   