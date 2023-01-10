CREATE  DATABASE HISTORICAL;

create table historical(person_id INT,lesson_id INT, dateTime DATE, price_paid INT,
CONSTRAINT PK_historical PRIMARY KEY(person_id,lesson,dateTime)
);

--Setting up crossdatabase access thingy i saw on youtube
create EXTENSION postgres_fdw;

--Assuming the otherdatabase is called sound
CREATE SERVER fdw_server FOREIGN DATA WRAPPER postgres_fdw OPTIONS(host 'localhost',dbname 'sound',port '5432');

CREATE USER MAPPING FOR postgres SERVER fdw_server OPTIONS(user 'postgres', password 'postgres');

IMPORT FOREIGN SCHEMA public FROM SERVER fdw_server INTO public;

--Query to run for importing data to the historical table

INSERT INTO historical(person_id, lesson_id, dateTime, price_paid) SELECT r.person_id,r.lesson_id,r.dateTime,r.final_price FROM result r WHERE NOT EXISTS(
SELECT * FROM historical h WHERE r.person_id = h.person_id AND r.lesson_id = h.lesson_id AND r.dateTime = h.dateTime);
