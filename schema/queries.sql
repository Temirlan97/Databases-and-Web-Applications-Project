/* Find the IDs of all students whose major is CS and who lives in C3 */
SELECT students.s_id
FROM students
WHERE students.major = "CS" AND college = "C3"

/*Find the IDs of faculty whose field is "CS"*/
SELECT faculty.f_id
FROM faculty
WHERE faculty.field = "CS"

/* Find the location on campus, which can fit the biggest amount of people */
SELECT on_campus.l_name
FROM on_campus
HAVING on_campus.max_people = MAX(on_campus.max_people)

/* Find all the organizers of the events */
SELECT U.realname
FROM users U JOIN create_event CR
WHERE U.u_id = CR.u_id_fk

/* Return the location names on campus where some event will take place */
SELECT on_campus.l_name
FROM on_campus JOIN take_place_in
WHERE on_campus.on_id = TK.p_l_id

/* Find IDs of all students participating in any event */
SELECT S.s_id
FROM students S JOIN join_event J
WHERE S.s_id = J.u_id_fk

/* Find the average capacity of the locations on campus */
SELECT AVG(max_people)
FROM on_campus

/* Find the locations of all the table-tennis events on campus*/
SELECT OC.l_name
FROM sport S, on_campus OC, take_place_in TK
WHERE S.game_name = "table-tennis" AND S.sp_id = TK.p_e_id AND TK.p_l_id = OC.on_id

/* Find all the study events related with the course "DBWA" */
SELECT S.st_id
FROM study S
WHERE S.course = "DBWA"