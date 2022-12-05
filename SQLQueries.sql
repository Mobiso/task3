--Total lessons per month at specified year
SELECT EXTRACT(MONTH FROM datetime) AS month,COUNT(*) FROM booking WHERE EXTRACT(YEAR FROM datetime) = ‘year’ GROUP BY EXTRACT(MONTH FROM datetime);


--Total number of Individual lessons 
SELECT EXTRACT(MONTH FROM datetime) AS month, COUNT(*) FROM booking WHERE lesson_id NOT IN (SELECT DISTINCT lesson_id FROM group_lesson) GROUP BY EXTRACT(MONTH FROM datetime);

--Total number of Group lessons per month
SELECT EXTRACT(MONTH FROM datetime) AS month, COUNT(*) FROM booking WHERE lesson_id NOT IN (SELECT DISTINCT lesson_id FROM group_lesson_genres) AND lesson_id IN (SELECT lesson_id FROM group_lesson) GROUP BY EXTRACT(MONTH FROM datetime);

--Total number of Ensembles per month
SELECT EXTRACT(MONTH FROM datetime) AS month, COUNT(*) FROM booking WHERE lesson_id IN (SELECT DISTINCT lesson_id FROM group_lesson_genres) GROUP BY EXTRACT(MONTH FROM datetime);



--Show how many students have X amount of siblings

CREATE VIEW sibling_amount AS SELECT CASE
WHEN p1.sibling_id IS NULL THEN(SELECT COUNT(sibling_id) FROM student WHERE sibling_id = p1.person_id)
WHEN p1.sibling_id IS NOT NULL THEN(SELECT COUNT(sibling_id) FROM student WHERE p1.sibling_id = sibling_id)
END AS siblings
FROM student p1;

SELECT siblings AS "Has x siblings", COUNT(*) AS amount FROM sibling_amount GROUP BY siblings;

--Show all instructors who has given more than 2 lessons a month
SELECT person_id, COUNT(person_id) FROM person_booking b WHERE b.person_id IN (SELECT p.person_id FROM person p LEFT JOIN student s ON p.person_id = s.person_id LEFT JOIN applies_to a ON p.person_id = a.person_id WHERE a.person_id IS NULL AND s.person_id IS NULL) AND lesson_id IN (SELECT lesson_id FROM booking WHERE EXTRACT(MONTH FROM datetime) = '11' AND EXTRACT(YEAR FROM datetime) = '2022') GROUP BY (b.person_id) HAVING COUNT(person_id) > 2 ORDER BY COUNT(b.person_id);


--Show next weeks ensambles

CREATE VIEW next_week_ensambles AS (SELECT booking.datetime,booking.lesson_id,booking.room_id,group_lesson_genres.genre_id FROM booking INNER JOIN group_lesson_genres ON booking.lesson_id = group_lesson_genres.lesson_id WHERE EXTRACT(week from CURRENT_DATE) +1 = EXTRACT(week from booking.datetime) ORDER BY datetime,genre_id);

CREATE VIEW maxStudents AS (SELECT maxStudents,lesson_id FROM group_lesson); --Not really needed as a view but i realized it too late

CREATE VIEW view_ensambles_bookings AS (SELECT *, CASE
WHEN (SELECT COUNT(*) FROM person_booking WHERE person_booking.lesson_id = nw.lesson_id AND person_booking.room_id = nw.room_id AND person_booking.datetime = nw.datetime AND person_booking.person_id IN (SELECT person_id FROM student)) < (SELECT maxStudents FROM maxStudents 
WHERE lesson_id = nw.lesson_id) -2 THEN 'More than 2 seats left'

WHEN (SELECT COUNT(*) FROM person_booking WHERE person_booking.lesson_id = nw.lesson_id AND person_booking.room_id = nw.room_id AND person_booking.datetime = nw.datetime AND person_booking.person_id IN (SELECT person_id FROM student)) = (SELECT maxStudents FROM maxStudents WHERE lesson_id = nw.lesson_id) THEN 'Full'

ELSE '1-2 seats left'

END AS "seats left" FROM next_week_ensambles nw);

SELECT * FROM view_ensambles_bookings; --This is the query to run when the views are created

