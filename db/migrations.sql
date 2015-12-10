CREATE DATABASE buckit;

\c buckit;

CREATE TABLE accounts (id SERIAL PRIMARY KEY, name VARCHAR(255), user_name VARCHAR(255), user_email VARCHAR(255), password_digest VARCHAR(255), is_admin BOOLEAN, user_name_id INTEGER);

CREATE TABLE buckits (id SERIAL PRIMARY KEY, buck TEXT, user_name_id INTEGER, user_image_id INTEGER);

CREATE TABLE user_images (id SERIAL PRIMARY KEY, user_name_id INTEGER, image_base64 TEXT);

\dt;
