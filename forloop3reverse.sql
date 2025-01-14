--write a programe to display for loop by using end limit user-defined
set serveroutput on;
declare
    i number;
    n number;
begin
    n:=&no;
    for i in reverse 1..n loop
        DBMS_OUTPUT.PUT_LINE(i);
    end loop;
end;
/   