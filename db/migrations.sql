CREATE DATABASE buckit;

\c buckit;

CREATE TABLE account (id SERIAL PRIMARY KEY, name VARCHAR(255), user_name VARCHAR(255), user_email VARCHAR(255), password_digest VARCHAR(255), is_admin BOOLEAN);

CREATE TABLE buckits (id SERIAL PRIMARY KEY,  buckit_name VARCHAR(255), goal TEXT, duration TIME, buck TEXT, user_name_id INTEGER, user_image_id INTEGER);

CREATE TABLE user_avatars (id SERIAL PRIMARY KEY, user_name_id INTEGER, image_base64 TEXT);

\dt;
