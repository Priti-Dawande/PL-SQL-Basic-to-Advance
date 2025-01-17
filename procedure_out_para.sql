--parameterised procedure using out 
create or replace procedure out_para(tot out number)as 
    x number:=10;
    y number:=10;
begin
    tot:=x+y;
end out_para;
/
declare
    tot number;
begin
    out_para(tot);
    DBMS_OUTPUT.PUT_LINE('in pl total= '||tot);
end;
/