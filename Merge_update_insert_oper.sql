--MERGE
--Used to perform UPSERT operations (update or insert based on conditions).
/*The MERGE statement in Oracle SQL (and PL/SQL) is used to combine the operations of INSERT, UPDATE, 
and DELETE into a single statement. It allows you to merge data from one table (source) into another 
table (target) based on some condition. Essentially, it helps perform conditional updates, inserts, 
and deletes in one step.
The MERGE statement is often used in situations where you want to update a target table based on the 
data from a source table, and insert records if they don't already exist.*/
BEGIN
    MERGE INTO employees e
    USING (SELECT 101 AS id, 'Jane' AS name, 'dean.bollich@aaac.com' AS email FROM dual) src
    ON (e.id = src.id)
    WHEN MATCHED THEN
        UPDATE SET e.name = src.name, e.email = src.email
    WHEN NOT MATCHED THEN
        INSERT (id, name, email)
        VALUES (src.id, src.name, src.email);
END;
/
select * from employees;