CREATE DATABASE buckit;
\c buckit
CREATE TABLE account (id SERIAL PRIMARY KEY, name VARCHAR(255), user_name VARCHAR(255), user_email VARCHAR(255), password_digest VARCHAR(255), is_admin BOOLEAN)
