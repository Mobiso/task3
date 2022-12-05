insert into person (personnummer, name, phonenumber, address) values ('2786195209', 'Carlin', '2086902330', '16 Spenser Place');


insert into person (personnummer, name, phonenumber, address) values ('7273513385', 'Viola', '2661880940', '70 Oak Court');


insert into person (personnummer, name, phonenumber, address) values ('0428876404', 'Jakie', '2791213348', '20647 Forest Dale Pass');


insert into person (personnummer, name, phonenumber, address) values ('2000181740', 'Dorothy', '6243890339', '4929 Bunker Hill Drive');


insert into person (personnummer, name, phonenumber, address) values ('0201272067', 'Caro', '4805522428', '5004 Comanche Court');


insert into person (personnummer, name, phonenumber, address) values ('4981723482', 'Drusi', '7112086168', '3 Garrison Way');


insert into person (personnummer, name, phonenumber, address) values ('2796716732', 'Clara', '4348589891', '0414 Manley Junction');


insert into person (personnummer, name, phonenumber, address) values ('1423849655', 'Margot', '5948951281', '15 Bonner Court');


insert into person (personnummer, name, phonenumber, address) values ('6913157118', 'Warren', '7489968710', '7258 Bonner Park');


insert into person (personnummer, name, phonenumber, address) values ('8505358139', 'Ludwig', '5588627863', '235 Rockefeller Avenue');


insert into person (personnummer, name, phonenumber, address) values ('8005358139', 'Dave', '5588627873', '279 Rockefeller Street');
insert into person (personnummer, name, phonenumber, address) values ('8005458139', 'Bob', '5188627873', '300 Rockefeller Street');
insert into person (personnummer, name, phonenumber, address) values ('7005358239', 'Meg', '5188627893', '453 Street');
insert into person (personnummer, name, phonenumber, address) values ('7105356239', 'Gurra', '5188627893', '453 Street');
insert into person (personnummer, name, phonenumber, address) values ('7205456839', 'Jenny', '5188627893', '890 Street');




insert into instrument (type_of_instrument,renting_fee) values ('Guitar',150);


insert into instrument (type_of_instrument,renting_fee) values ('Piano',250);


insert into instrument (type_of_instrument,renting_fee) values ('Bass',150);


insert into instrument (type_of_instrument,renting_fee) values ('Trumpet',80);


insert into skilllevel_and_price (skilllevel, individual_price, group_price, ensamble_price) values ('Beginner', 300, 400, 400);


insert into skilllevel_and_price (skilllevel, individual_price, group_price, ensamble_price) values ('Intermediate', 350, 450, 450);


insert into skilllevel_and_price (skilllevel, individual_price, group_price, ensamble_price) values ('Advanced', 450, 550, 550);


insert into brand (brand) values ('Ibanez');
insert into brand (brand) values ('Yamaha');
insert into brand (brand) values ('Bobby');
insert into brand (brand) values ('Fender');


insert into genre (genre) values ('Metal');
insert into genre (genre) values ('Classical');
insert into genre (genre) values ('Rock');
insert into genre (genre) values ('Mongolian Throat singing');


insert into lesson (duration,skilllevel_id) values (60,1);
insert into lesson (duration,skilllevel_id) values (72,2);
insert into lesson (duration,skilllevel_id) values (120,3);
insert into lesson (duration,skilllevel_id) values (180,2);
insert into lesson (duration,skilllevel_id) values (180,2);


insert into school (max_number_of_students,sibling_discount) values (70,0.8);


insert into student(person_id,sibling_id,contact_id)
values(1,(null),3);
insert into student(person_id,sibling_id,contact_id)
values(2,1,3);
insert into student(person_id,sibling_id,contact_id)
values(4,(null),5);
insert into student(person_id,sibling_id,contact_id)
values(6,(null),8);
insert into student(person_id,sibling_id,contact_id)
values(7,6,8);
insert into student(person_id,sibling_id,contact_id)
values(11,6,8);
insert into student(person_id,sibling_id,contact_id)
values(13,(null),14);
insert into student(person_id,sibling_id,contact_id)
values(14,(null),14);












insert into applies_to(school_id,person_id)
values(1,9);
insert into person_instrument_and_skilllevel(person_id,instrument_id,skilllevel_id)
values(4,1,2);
insert into
person_instrument_and_skilllevel(person_id,instrument_id,skilllevel_id)
values(1,2,2);
insert into
person_instrument_and_skilllevel(person_id,instrument_id,skilllevel_id)
values(2,3,1);
insert into
person_instrument_and_skilllevel(person_id,instrument_id,skilllevel_id)
values(6,3,1);
insert into
person_instrument_and_skilllevel(person_id,instrument_id,skilllevel_id)
values(7,3,3);
insert into
person_instrument_and_skilllevel(person_id,instrument_id,skilllevel_id)
values(10,1,3);
insert into
person_instrument_and_skilllevel(person_id,instrument_id,skilllevel_id)
values(10,2,3);
insert into
person_instrument_and_skilllevel(person_id,instrument_id,skilllevel_id)
values(10,3,3);
insert into
person_instrument_and_skilllevel(person_id,instrument_id,skilllevel_id)
values(10,4,3);
insert into
person_instrument_and_skilllevel(person_id,instrument_id,skilllevel_id)
values(15,3,3);




insert into instructor_genre(genre_id,person_id)
values(1,10);
insert into instructor_genre(genre_id,person_id)
values(2,10);
insert into instructor_genre(genre_id,person_id)
values(3,10);
insert into instructor_genre(genre_id,person_id)
values(4,10);
insert into instructor_genre(genre_id,person_id)
values(2,15);


insert into lesson_instruments(lesson_id,instrument_id)
values(1,2);
        
insert into lesson_instruments(lesson_id,instrument_id)
values(2,2);


insert into lesson_instruments(lesson_id,instrument_id)
values(2,3);


insert into lesson_instruments(lesson_id,instrument_id)
values(3,2);


insert into lesson_instruments(lesson_id,instrument_id)
values(4,2);


insert into lesson_instruments(lesson_id,instrument_id)
values(4,1);


insert into lesson_instruments(lesson_id,instrument_id)
values(4,3);


insert into group_lesson(lesson_id,minStudents,maxStudents)
values(2,3,5);


insert into group_lesson(lesson_id,minStudents,maxStudents)
values(4,2,8);
insert into group_lesson(lesson_id,minStudents,maxStudents)
values(5,2,8);


insert into group_lesson_genres(lesson_id,genre_id)
values(4,4);


insert into group_lesson_genres(lesson_id,genre_id)
values(5,1);


insert into room(room) values(23);
insert into room(room) values(27);
insert into room(room) values(28);
insert into room(room) values(15);
insert into room(room) values(19);


insert into booking(lesson_id,room_id,dateTime) values(4,1,'2022-11-24');
insert into booking(lesson_id,room_id,dateTime) values(2,5,'2022-11-24');
insert into booking(lesson_id,room_id,dateTime) values(2,5,'2022-1-24');
insert into booking(lesson_id,room_id,dateTime) values(1,4,'2022-11-24');
insert into booking(lesson_id,room_id,dateTime) values(2,3,'2022-11-28');
insert into booking(lesson_id,room_id,dateTime) values(1,5,'2022-12-1');
insert into booking(lesson_id,room_id,dateTime) values(5,3,'2022-12-12');
insert into booking(lesson_id,room_id,dateTime) values(1,5,'2022-05-1');
insert into booking(lesson_id,room_id,dateTime) values(1,5,'2022-07-1');
insert into booking(lesson_id,room_id,dateTime) values(1,5,'2003-12-1');
insert into booking(lesson_id,room_id,dateTime) values(4,1,'2022-12-12');
insert into booking(lesson_id,room_id,dateTime) values(4,1,'2022-12-13');
insert into booking(lesson_id,room_id,dateTime) values(4,1,'2022-12-14');


insert into person_booking(person_id,lesson_id,room_id,datetime)
values(1,4,1,'2022-12-12');
insert into person_booking(person_id,lesson_id,room_id,datetime)
values(15,4,1,'2022-12-12');
insert into person_booking(person_id,lesson_id,room_id,datetime)
values(2,4,1,'2022-12-12');
insert into person_booking(person_id,lesson_id,room_id,datetime)
values(4,4,1,'2022-12-12');
insert into person_booking(person_id,lesson_id,room_id,datetime)
values(6,4,1,'2022-12-12');
insert into person_booking(person_id,lesson_id,room_id,datetime)
values(7,4,1,'2022-12-12');
insert into person_booking(person_id,lesson_id,room_id,datetime)
values(11,4,1,'2022-12-12');
insert into person_booking(person_id,lesson_id,room_id,datetime)
values(13,4,1,'2022-12-12');
insert into person_booking(person_id,lesson_id,room_id,datetime)
values(14,4,1,'2022-12-12');




insert into person_booking(person_id,lesson_id,room_id,datetime)
values(1,4,1,'2022-12-13');
insert into person_booking(person_id,lesson_id,room_id,datetime)
values(15,4,1,'2022-12-13');
insert into person_booking(person_id,lesson_id,room_id,datetime)
values(2,4,1,'2022-12-13');
insert into person_booking(person_id,lesson_id,room_id,datetime)
values(4,4,1,'2022-12-13');




insert into person_booking(person_id,lesson_id,room_id,datetime)
values(1,4,1,'2022-12-14');
insert into person_booking(person_id,lesson_id,room_id,datetime)
values(15,4,1,'2022-12-14');
insert into person_booking(person_id,lesson_id,room_id,datetime)
values(2,4,1,'2022-12-14');
insert into person_booking(person_id,lesson_id,room_id,datetime)
values(4,4,1,'2022-12-14');
insert into person_booking(person_id,lesson_id,room_id,datetime)
values(11,4,1,'2022-12-14');
insert into person_booking(person_id,lesson_id,room_id,datetime)
values(13,4,1,'2022-12-14');
insert into person_booking(person_id,lesson_id,room_id,datetime)
values(14,4,1,'2022-12-14');




















INSERT INTO rentable_instrument(instrument_id, brand_id) VALUES (1,1);


INSERT INTO rental_records(rentable_instrument_id, person_id, date_start, date_end) VALUES (1,1,'2022-12-1','2022-12-4');