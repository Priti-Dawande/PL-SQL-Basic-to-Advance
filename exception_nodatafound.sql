----1. Handling Predefined no-data-found Exceptions
set SERVEROUTPUT on;
declare
    fnm VARCHAR2(60);
BEGIN
    --select first_name into fnm from employees_priti where employee_id=101;
    --select first_name into fnm from employees_priti where employee_id=17;
    select first_name into fnm from employees_priti where employee_id='sd';
    dbms_output.put_line('First Name= '||fnm);
EXCEPTION
    when no_data_found then
        dbms_output.put_line('no recored found');
    when OTHERS then
        dbms_output.put_line('unknowen exception'||sqlerrm);
end;
/