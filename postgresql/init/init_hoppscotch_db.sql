-- Create the Hoppscotch database
CREATE DATABASE hoppscotch_db;

-- Create a new user and set a password
CREATE USER hoppscotch_user WITH PASSWORD 'hoppscotch_password';

-- Grant all privileges on the database to the user
GRANT ALL PRIVILEGES ON DATABASE hoppscotch_db TO dhirawigata;
GRANT ALL PRIVILEGES ON DATABASE hoppscotch_db TO hoppscotch_user;

ALTER DATABASE hoppscotch_db OWNER TO hoppscotch_user;
