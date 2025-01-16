--predefined exception too_many_rows
set SERVEROUTPUT on;
DECLARE
    mylocation locations.country_id%TYPE;
BEGIN
    -- Query that raises TOO_MANY_ROWS if more than one row is returned
    SELECT country_id
    INTO mylocation
    FROM locations
    WHERE country_id = 'CA'; -- Assuming multiple departments have the same manager ID
    DBMS_OUTPUT.PUT_LINE('Location Name: ' || mylocation);
EXCEPTION
    WHEN TOO_MANY_ROWS THEN
        DBMS_OUTPUT.PUT_LINE('Error: Query returned more than one row.');
END;
/