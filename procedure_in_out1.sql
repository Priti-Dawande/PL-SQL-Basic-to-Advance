--procedure with in & out
set SERVEROUTPUT on;
CREATE PROCEDURE in_out_proc1
       (x in number, y in number,tot out number) 
      IS
         
      BEGIN
           tot:=x+y;
           DBMS_OUTPUT.PUT_LINE('Total= '||tot);
      END in_out_proc1;
    /
declare
    x1 number;
    y1 number;
    tot1 number;
begin
    x1:=&no1;
    y1:=&no2;
    in_out_proc1(x1,y1,tot1);
end;
/  