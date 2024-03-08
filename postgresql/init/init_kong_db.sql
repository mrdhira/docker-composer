-- Create the Kong database
CREATE DATABASE kong_db;

-- Create a new user and set a password
CREATE USER kong_user WITH PASSWORD 'kong_password';

-- Grant all privileges on the database to the user
GRANT ALL PRIVILEGES ON DATABASE kong_db TO dhirawigata;
GRANT ALL PRIVILEGES ON DATABASE kong_db TO kong_user;

ALTER DATABASE kong_db OWNER TO kong_user;
