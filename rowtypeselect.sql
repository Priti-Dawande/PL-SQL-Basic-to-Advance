--select * from employees_priti;
set SERVEROUTPUT on;
declare
    myrow employees_priti%rowtype;
begin
    select * into myrow from employees_priti where employee_id=101;
    DBMS_OUTPUT.PUT_LINE('Employee ID: ' || myrow.EMPLOYEE_ID);
    DBMS_OUTPUT.PUT_LINE('First Name: ' || myrow.FIRST_NAME);
    DBMS_OUTPUT.PUT_LINE('Last Name: ' || myrow.LAST_NAME);
    DBMS_OUTPUT.PUT_LINE('Salary: ' || myrow.SALARY);
    
    myrow.Employee_ID:=105;
    myrow.First_Name:='Aniket';
    myrow.last_Name:='chincole';
    myrow.salary:=50000;
    insert into employees_priti values myrow;
    DBMS_OUTPUT.PUT_LINE('recored inserted ');
    
    myrow.Employee_ID:=104;
    myrow.First_Name:='Mohinee';
    update employees_priti set First_Name=myrow.First_Name where Employee_ID=myrow.Employee_ID;
    DBMS_OUTPUT.PUT_LINE('recored updated ');
    
    myrow.Employee_ID:=104;
    delete from employees_priti where Employee_ID=myrow.Employee_ID;
    DBMS_OUTPUT.PUT_LINE('recored deleted ');
end;
/