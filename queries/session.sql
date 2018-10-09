CREATE TABLE IF NOT EXISTS sessions (
	id uuid DEFAULT uuid_generate_v4(),
	date_start timestamp with time zone,
	date_end timestamp with time zone,
	subject_id uuid,
	user_id uuid,
	FOREIGN KEY(user_id) REFERENCES users(id),
	FOREIGN KEY(subject_id) REFERENCES subjects(id),
	PRIMARY KEY(id)
);

INSERT INTO sessions (date_start, date_end, subject_id, user_id) VALUES ('22/09/2018 15:18:30', '22/09/2018 15:18:35', (SELECT id FROM subjects LIMIT 1), (SELECT id FROM users LIMIT 1));

SELECT * FROM sessions;