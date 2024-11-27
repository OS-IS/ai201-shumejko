CREATE OR REPLACE FUNCTION user_register(password_input TEXT)
RETURNS BOOLEAN AS $$
BEGIN
    IF EXISTS (
        SELECT 1
        FROM richelieu_french_top20000
        WHERE password = password_input) THEN
        RAISE EXCEPTION 'This password is on the list of worst passwords. Please choose a different one.';
        RETURN FALSE;
    ELSE
        RETURN TRUE;
    END IF;
END;
$$ LANGUAGE plpgsql;
