--write a program to print 1 to 10 by using loop & exit
set SERVEROUTPUT on;
declare
   i number;
begin
    i:=1;
    loop
        dbms_output.put_line(i);
        i:=i+1;
        if(i>10)then 
            exit;
        end if;
    end loop;
end;
/