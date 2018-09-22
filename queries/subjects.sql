CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

DROP TABLE subjects;

CREATE TABLE IF NOT EXISTS subjects (
	id uuid DEFAULT uuid_generate_v4(),
	name VARCHAR(255) NOT NULL,
	color CHAR(7) NOT NULL,
	user_id uuid,
	FOREIGN KEY(user_id) REFERENCES users(id),
  PRIMARY KEY(id)
);

INSERT INTO subjects (name, color, user_id) VALUES ('todos', '#FFFFFF', (SELECT id FROM users WHERE email='test@test.com'));

SELECT * FROM subjects;