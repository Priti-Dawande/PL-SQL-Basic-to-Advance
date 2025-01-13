--write a program to display use of case
DECLARE
    day NUMBER;
BEGIN
    day := &no;
    CASE
        WHEN 1 THEN
            dbms_output.put_line('Monday');
        WHEN 2 THEN
            dbms_output.put_line('tuesday');
        WHEN 3 THEN
            dbms_output.put_line('Wednesday');
        WHEN 4 THEN
            dbms_output.put_line('Thusday');
        WHEN 5 THEN
            dbms_output.put_line('Friday');
        WHEN 6 THEN
            dbms_output.put_line('Saturday');
        WHEN 7 THEN
            dbms_output.put_line('Sunday');
        ELSE
            dbms_output.put_line('input no between 1 to 7');
    END CASE;

END;
/