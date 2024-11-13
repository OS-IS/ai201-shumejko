CREATE OR REPLACE FUNCTION get_data(name_value VARCHAR)
RETURNS TABLE(s_id INTEGER, stud_name VARCHAR, kurs INTEGER, spot_conf INTEGER) AS $$
DECLARE
    str VARCHAR;
BEGIN
    str := 'SELECT * FROM student WHERE stud_name = ''' || name_value || ''';';
    RETURN QUERY EXECUTE str;
END;
$$ LANGUAGE plpgsql;
