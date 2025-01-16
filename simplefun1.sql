--simple function
create or replace function f1 return number 
as
    a number(5);
    b number(5);
    tot number(5);
    begin
        a:=10;
        b:=20;
        tot:=a+b;
        return tot;
    end;
declare
    tot number;
begin
    tot:=f1;
    dbms_output.put_line('total= '||tot);
end;
/