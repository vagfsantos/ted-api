CREATE TABLE IF NOT EXISTS session (
	id uuid DEFAULT uuid_generate_v4(),
	date_start timestamp with time zone,
	date_end timestamp with time zone,
	subject_id uuid,
	user_id uuid,
	FOREIGN KEY(user_id) REFERENCES users(id),
	FOREIGN KEY(subject_id) REFERENCES subjects(id)
);