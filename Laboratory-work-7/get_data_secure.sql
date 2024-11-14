CREATE OR REPLACE FUNCTION change_data(attribute1 VARCHAR, attribute2 INTEGER)
RETURNS VOID AS $$
BEGIN
    EXECUTE 'UPDATE student SET spot_conf = $1 WHERE stud_name = $2'
    USING attribute2, attribute1;
END;
$$ LANGUAGE plpgsql;
