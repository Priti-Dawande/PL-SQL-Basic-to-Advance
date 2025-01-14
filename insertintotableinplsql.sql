--insert into table using pl sql
--first execute create table command then execute insert command,update and delete one by one
SET SERVEROUTPUT ON;
BEGIN
        BEGIN
            EXECUTE IMMEDIATE 
            'CREATE TABLE EMPLOYEES_PRITI1 (
            employee_id NUMBER(5), 
            first_name VARCHAR2(50),
            last_name VARCHAR2(50), 
            salary NUMBER(5))'; 
            dbms_output.put_line('Table EMPLOYEES_PRITI created successfully.');   
        END;
        
        BEGIN
            INSERT INTO employees_priti1 ( employee_id , first_name , last_name , salary ) 
            VALUES ( 101 , 'priti' , 'kulkarni' , 10000 ) ;
            dbms_output . put_line ( 'Record inserted successfully.' ) ;
         END ;
         BEGIN
            update employees_priti1 set first_name='prity' where employee_id=101 ;
            dbms_output . put_line ( 'Record updated successfully.' ) ;
         END ;
         BEGIN
           delete from employees_priti1 where employee_id=101 ;
            dbms_output . put_line ( 'Record deleted successfully.' ) ;
         END ;
END;
/