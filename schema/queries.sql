/* Find the IDs of all students whose major is CS and who lives in C3 */
SELECT students.s_id
FROM students
WHERE students.major = "CS" AND college = "C3"

/*Find the IDs of faculty whose field is "CS"*/
SELECT faculty.f_id
FROM faculty
WHERE faculty.field = "CS"

/* Find the location on campus, which can fit more than 30 */
SELECT l_name, MAX(max_people)
FROM on_campus
GROUP BY l_name
HAVING MAX(max_people) > 30

/* Find the names of the organizers of the events */
SELECT users.realname
FROM event JOIN users
WHERE users.u_id = event.u_id

/* Return the location names on campus where some event will take place */
SELECT on_campus.l_name
FROM on_campus JOIN take_place_in
WHERE on_campus.on_id = take_place_in.p_l_id

/* Find IDs of all students participating in any event */
SELECT students.s_id
FROM students JOIN join_event
WHERE students.s_id = join_event.u_id

/* Find the average capacity of the locations on campus */
SELECT AVG(max_people)
FROM on_campus

/* Find the locations of all the Rowing events on campus*/
SELECT on_campus.l_name
FROM sport, on_campus, take_place_in
WHERE sport.game_name = "table-tennis" AND sport.sp_id = take_place_in.p_e_id AND take_place_in.p_l_id = on_campus.on_id

/* Find all the study events related with the course "DBWA" */
SELECT study.st_id
FROM study
WHERE study.course = "DBWA"