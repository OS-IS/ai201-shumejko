CREATE OR REPLACE FUNCTION user_login(client_ip INET, client_port INTEGER, server_pid INTEGER)
RETURNS TEXT AS $$
DECLARE
    generated_token TEXT;
BEGIN
    generated_token := md5(random()::TEXT || clock_timestamp()::TEXT);
    INSERT INTO user_tokens (token, client_ip, client_port, server_pid)
    VALUES (generated_token, client_ip, client_port, server_pid);
    RETURN generated_token;
END;
$$ LANGUAGE plpgsql;
