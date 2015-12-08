CREATE DATABASE buckit;

\c buckit;

CREATE TABLE account (id SERIAL PRIMARY KEY, name VARCHAR(255), user_name VARCHAR(255), user_email VARCHAR(255), password_digest VARCHAR(255), is_admin BOOLEAN, user_image BLOB, color BLOB);

CREATE TABLE buckits (id SERIAL PRIMARY KEY,  buckit_name VARCHAR(255), purpose TEXT, duration TIME, user_name_id INTEGER, user_image_id INTEGER);
\dt;
