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

CREATE TABLE travel(
	tr_id CHAR(20) NOT NULL REFERENCES event(e_id),
	budget int NOT NULL,
	PRIMARY KEY (tr_id) 
);

CREATE TABLE sport(
	sp_id CHAR(20) NOT NULL REFERENCES event(e_id),
	game_name CHAR(20) NOT NULL,
	PRIMARY KEY(sp_id)
);

CREATE TABLE board_game(
	bo_id CHAR(20) NOT NULL REFERENCES event(e_id),
	game_name CHAR(20) NOT NULL,
	PRIMARY KEY(bo_id)
);

CREATE TABLE movie(
	mo_id CHAR(20) NOT NULL REFERENCES event(e_id),
	movie_name CHAR(20) NOT NULL,
	PRIMARY KEY(mo_id)
);

CREATE TABLE party(
	pa_id CHAR(20) NOT NULL REFERENCES reason(e_id),
	reason CHAR(20) NOT NULL,
	PRIMARY KEY(pa_id)
);

CREATE TABLE create_event(
	u_id_fk CHAR(20) NOT NULL,
	e_id_fk CHAR(20) NOT NULL,
	CONSTRAINT c_user_id
      FOREIGN KEY (u_id_fk) 
      REFERENCES users(u_id),
    CONSTRAINT c_event_id
      FOREIGN KEY (e_id_fk) 
      REFERENCES event(e_id)
);

CREATE TABLE join_event(
	u_id_fk CHAR(20) NOT NULL,
	e_id_fk CHAR(20) NOT NULL,
	CONSTRAINT j_user_id
      FOREIGN KEY (u_id_fk) 
      REFERENCES users(u_id),
	CONSTRAINT j_event_id
      FOREIGN KEY (e_id_fk) 
      REFERENCES event(e_id),
	PRIMARY KEY (u_id_fk, e_id_fk)	
);

CREATE TABLE take_place_in(
	p_l_id CHAR(20) NOT NULL,
	p_e_id CHAR(20) NOT NULL,
	CONSTRAINT location_id
	  FOREIGN KEY (p_l_id) 
	  REFERENCES location(l_id),
	CONSTRAINT event_id
	  FOREIGN KEY (p_e_id)
	  REFERENCES event(e_id)
);