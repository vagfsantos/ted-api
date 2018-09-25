CREATE DATABASE ted
  WITH OWNER = postgres
       ENCODING = 'UTF8'
       TABLESPACE = pg_default
       LC_COLLATE = 'Portuguese_Brazil.1252'
       LC_CTYPE = 'Portuguese_Brazil.1252'
       CONNECTION LIMIT = -1;

CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
CREATE TABLE IF NOT EXISTS users (
	email VARCHAR(80) NOT NULL UNIQUE,
	password VARCHAR(20) NOT NULL,
	id uuid DEFAULT uuid_generate_v4(),
	PRIMARY KEY(id));

INSERT INTO users (email, password) values ('test@test.com', 123);

SELECT * FROM users;