CREATE TABLE users(
	u_id MEDIUMINT(9) NOT NULL,
	password VARCHAR(100) NOT NULL,
	username VARCHAR(100) NOT NULL,
	email VARCHAR(100) NOT NULL,
	realname VARCHAR(100) NOT NULL,
	PRIMARY KEY (u_id)
);

CREATE TABLE students(
	s_id MEDIUMINT(9) NOT NULL,
	major VARCHAR(100) NOT NULL,
	class_of MEDIUMINT(9) NOT NULL,
	college VARCHAR(100) NOT NULL,
	room_no VARCHAR(100) NOT NULL,
	PRIMARY KEY (s_id),
	CONSTRAINT s_id_fk
      FOREIGN KEY (s_id)
      REFERENCES users(u_id)
);

CREATE TABLE faculty(
	f_id MEDIUMINT(9) NOT NULL,
	position VARCHAR(100) NOT NULL,
	field VARCHAR(100) NOT NULL,
	PRIMARY KEY(f_id),
	CONSTRAINT f_id_fk
      FOREIGN KEY (f_id)
      REFERENCES users(u_id)
);

CREATE TABLE location(
	l_id MEDIUMINT(9) NOT NULL,
	e_id MEDIUMINT(9) REFERENCES event(e_id),
	PRIMARY KEY (l_id)
);

CREATE TABLE on_campus(
	on_id MEDIUMINT(9) NOT NULL REFERENCES location(l_id),
	max_people MEDIUMINT(9) NOT NULL,
	l_name VARCHAR(100) NOT NULL,
	PRIMARY KEY (on_id)
);

CREATE TABLE off_campus(
	off_id MEDIUMINT(9) NOT NULL,
	address CHAR(40) NOT NULL,
	PRIMARY KEY (off_id),
	CONSTRAINT off_id_fk
		FOREIGN KEY (off_id)
		REFERENCES location(l_id)
);

CREATE TABLE event(
	e_id MEDIUMINT(9) NOT NULL,
	u_id MEDIUMINT(9) NOT NULL REFERENCES users(u_id),
	l_id MEDIUMINT(9) REFERENCES location(l_id),
	name VARCHAR(100) NOT NULL,
	e_time VARCHAR(100) NOT NULL,
	discription CHAR(100),
	PRIMARY KEY (e_id)
);

CREATE TABLE study(
	st_id MEDIUMINT(9) NOT NULL,
	course VARCHAR(100) NOT NULL,
	PRIMARY KEY (st_id),
	CONSTRAINT st_id_fk
		FOREIGN  KEY (st_id)
		REFERENCES event(e_id)
);

CREATE TABLE travel(
	tr_id MEDIUMINT(9) NOT NULL,
	budget int NOT NULL,
	PRIMARY KEY (tr_id),
	CONSTRAINT tr_id_fk
		FOREIGN KEY(tr_id)
		REFERENCES event(e_id)
);

CREATE TABLE sport(
	sp_id MEDIUMINT(9) NOT NULL,
	game_name VARCHAR(100) NOT NULL,
	PRIMARY KEY(sp_id),
	CONSTRAINT sp_id_fk
		FOREIGN KEY(sp_id)
		REFERENCES event(e_id)
);

CREATE TABLE board_game(
	bo_id MEDIUMINT(9) NOT NULL,
	game_name VARCHAR(100) NOT NULL,
	PRIMARY KEY(bo_id),
	CONSTRAINT bo_id_fk
		FOREIGN KEY(bo_id)
		REFERENCES event(e_id)
);

CREATE TABLE movie(
	mo_id MEDIUMINT(9) NOT NULL,
	movie_name VARCHAR(100) NOT NULL,
	PRIMARY KEY(mo_id),
	CONSTRAINT mo_id_fk
		FOREIGN KEY(mo_id)
		REFERENCES event(e_id)
);

CREATE TABLE party(
	pa_id MEDIUMINT(9) NOT NULL,
	reason VARCHAR(100) NOT NULL,
	PRIMARY KEY(pa_id),
	CONSTRAINT pa_id_fk
		FOREIGN KEY(pa_id)
		REFERENCES event(e_id)
);

CREATE TABLE join_event(
	u_id MEDIUMINT(9) NOT NULL REFERENCES users(u_id),
	e_id MEDIUMINT(9) NOT NULL REFERENCES event(e_id)
);

CREATE TABLE take_place_in(
	p_l_id MEDIUMINT(9) NOT NULL,
	p_e_id MEDIUMINT(9) NOT NULL,
	CONSTRAINT location_id
	  FOREIGN KEY (p_l_id) 
	  REFERENCES location(l_id),
	CONSTRAINT event_id
	  FOREIGN KEY (p_e_id)
	  REFERENCES event(e_id)
);