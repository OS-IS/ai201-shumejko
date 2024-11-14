CREATE OR REPLACE FUNCTION get_data(name_value VARCHAR)
RETURNS TABLE(s_id INTEGER, stud_name VARCHAR, kurs INTEGER, spot_conf INTEGER) AS $$
BEGIN
    RETURN QUERY EXECUTE 'SELECT * FROM student WHERE stud_name = $1'
    USING name_value;
END;
$$ LANGUAGE plpgsql;
