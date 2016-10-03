CREATE TABLE users(
	u_id CHAR(20) NOT NULL,
	password CHAR(20) NOT NULL,
	username CHAR(15) NOT NULL,
	email CHAR(30) NOT NULL,
	realname CHAR(20) NOT NULL,
	PRIMARY KEY (u_id)
);

CREATE TABLE students(
	s_id CHAR(20) NOT NULL REFERENCES users(u_id),
	major CHAR(20) NOT NULL,
	chass_of int NOT NULL,
	college CHAR(10) NOT NULL,
	room_no CHAR(10) NOT NULL,
	PRIMARY KEY(s_id)
);

CREATE TABLE faculty(
	f_id CHAR(20) NOT NULL REFERENCES users(u_id),
	position CHAR(10) NOT NULL,
	field CHAR(20) NOT NULL,
	PRIMARY KEY(f_id)
);

CREATE TABLE location(
	l_id CHAR(20) NOT NULL,
	PRIMARY KEY (l_id)
);

CREATE TABLE on_campus(
	on_id CHAR(20) NOT NULL REFERENCES location(l_id),
	max_people  int NOT NULL,
	l_name CHAR(10) NOT NULL,
	PRIMARY KEY (on_id)
);

CREATE TABLE off_campus(
	off_id CHAR(20) NOT NULL REFERENCES location(l_id),
	address CHAR(40) NOT NULL,
	PRIMARY KEY (off_id)
);

CREATE TABLE event(
	e_id CHAR(20) NOT NULL,
	name CHAR(20) NOT NULL,
	e_time CHAR(20) NOT NULL,
	discription CHAR(100),
	PRIMARY KEY (e_id)
);

CREATE TABLE study(
	st_id CHAR(20) NOT NULL REFERENCES event(e_id),
	course CHAR(20) NOT NULL,
	PRIMARY KEY (st_id)
);

CREATE TABLE create(
	u_id CHAR(20) NOT NULL,
	e_id CHAR(20) NOT NULL,
	FOREIGN KEY u_id NOT NULL REFERENCES users(u_id),
	FOREIGN KEY e_id NOT NULL REFERENCES event(e_id),
	PRIMARY KEY (e_id)
);

CREATE TABLE join(
	u_id CHAR(20) NOT NULL,
	e_id CHAR(20) NOT NULL,
	FOREIGN KEY u_id NOT NULL REFERENCES users(u_id),
	FOREIGN KEY e_id NOT NULL REFERENCES event(e_id),
	PRIMARY KEY (e_id, u_id)	
);

CREATE TABLE take_place_in(
	l_id CHAR(20) NOT NULL,
	e_id CHAR(20) NOT NULL,
	FOREIGN KEY l_id NOT NULL REFERENCES users(l_id),
	FOREIGN KEY e_id NOT NULL REFERENCES event(e_id)
);