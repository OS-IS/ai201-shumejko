CREATE OR REPLACE FUNCTION get_data(value TEXT, user_token TEXT)
RETURNS TABLE(s_id INT, stud_name TEXT, kurs INT, spot_conf INT) AS $$
BEGIN
    IF NOT EXISTS (
        SELECT 1 FROM session_tokens WHERE token = user_token
    ) THEN
        RAISE EXCEPTION 'Invalid token';
    END IF;
    RETURN QUERY EXECUTE format(
        'SELECT s_id::INT, stud_name::TEXT, kurs::INT, spot_conf::INT FROM student WHERE stud_name = %L',
        value
    );
END;
$$ LANGUAGE plpgsql;
