--simple procedure
set SERVEROUTPUT on;
create or replace procedure simple_proc is
begin
    DBMS_OUTPUT.PUT_LINE('example of simple procedure');
end simple_proc;
begin
    simple_proc;
end;
/