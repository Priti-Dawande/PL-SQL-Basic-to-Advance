--parameterised procedure using in
create or replace procedure para_proc(msg in varchar2)is 
begin
    DBMS_OUTPUT.PUT_LINE('this is parameterised procedure msg'||msg);
end para_proc;
/
begin
    para_proc(' i like database');
end;
/