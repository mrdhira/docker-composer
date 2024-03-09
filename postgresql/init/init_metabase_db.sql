-- Create the Kong database
CREATE DATABASE metabase_db;

-- Create a new user and set a password
CREATE USER metabase_user WITH PASSWORD 'metabase_password';

-- Grant all privileges on the database to the user
GRANT ALL PRIVILEGES ON DATABASE metabase_db TO dhirawigata;
GRANT ALL PRIVILEGES ON DATABASE metabase_db TO metabase_user;

ALTER DATABASE metabase_db OWNER TO metabase_user;
