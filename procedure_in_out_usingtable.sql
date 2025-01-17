--procedure example with table
/*CREATE TABLE priti_orders(
    order_id NUMBER(5) PRIMARY KEY,
    item_id  NUMBER(5) UNIQUE,
    quantity NUMBER(5),
    unit_price NUMBER(5)
    ); 
insert into priti_orders values(1,1,100,5);
INSERT INTO priti_orders VALUES (2,2,200,10);
*/
 CREATE PROCEDURE calculate_orders
       (order_id in number,item_id in number,quantity in number,
        unit_price in number,total_orders out number)
      IS
--          declaration_section
      BEGIN
          total_orders:=quantity*unit_price;
          DBMS_OUTPUT.PUT_LINE('total orders= '||total_orders);
      END calculate_orders;
/
declare
    total_orders1 number;
begin 
    calculate_orders(1,1,100,5,total_orders1);
end;
/