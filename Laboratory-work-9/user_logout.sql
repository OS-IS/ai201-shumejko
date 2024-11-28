CREATE OR REPLACE FUNCTION user_logout(logout_token TEXT)
RETURNS VOID AS $$
BEGIN
    DELETE FROM session_tokens WHERE token = logout_token;
END;
$$ LANGUAGE plpgsql;
