CREATE DATABASE buckit;
<<<<<<< HEAD
\c buckit;

create
=======
\c buckit
CREATE TABLE account (id SERIAL PRIMARY KEY, name VARCHAR(255), user_name VARCHAR(255), user_email VARCHAR(255), password_digest VARCHAR(255), is_admin BOOLEAN)
>>>>>>> f4877117c8e1e1be127925a3518f602b1ea1e516
