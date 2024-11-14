CREATE OR REPLACE FUNCTION change_data(attribute1 VARCHAR, attribute2 INTEGER)
RETURNS VOID AS $$
DECLARE
    str VARCHAR;
BEGIN
    str := 'UPDATE student SET spot_conf = ' || attribute2 || 
             ' WHERE stud_name = ''' || attribute1 || ''';';
    EXECUTE str;
END;
$$ LANGUAGE plpgsql;
