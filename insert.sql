INSERT INTO lesson_content 
	(lesson_content_introduction)
VALUES 
('This is intro class to relational databases. We will cover basics, like why we use it, where and what kind technologies are there.');

INSERT INTO course 
	(course_name, course_description)
VALUES ('Uncovering Relational Databases', 
'This is course where students will learn about relational databases, where it used and how to follow CRUD. Final assigment is this project.');

INSERT INTO course_lesson 
	(course_id, lesson_id)
VALUES 
	(1, 3);

INSERT INTO lesson_overview 
	(course_id, lesson_id, lesson_name, lesson_overview)
VALUES 
	(1, 4, 'Insert', 'Getting to know Postgre and installing virtual server. Intro to PG admin');

INSERT INTO lesson_overview 
	(course_id, lesson_id, lesson_name, lesson_overview)
VALUES 
	(1, 6, 'Managing DATABASE', 'Student will learn key practical concepts to mutate data, managing indexes and so on.');

INSERT INTO school
	(school_name, school_description)
VALUES 
	('KEA – Copenhagen School of Design and Technology', 'KEA – Copenhagen School of Design and Technology, is a school of higher education in Copenhagen, Denmark. The academy is an independent self-owning institution subordinated to the Ministry of Science, Innovation and Higher Education'
  );

INSERT INTO school_course
VALUES (1, 1);

INSERT INTO role 
	(role_title)
VALUES 
	('Admin'), ('Teacher'), ('Student');

INSERT INTO user_base 
	(school_id, role_id, course_id, first_name, last_name, birth_date, email, username, pw, pw_repeat)
VALUES 
	('1','16','1','Jens','Peter', '1980-03-03', 'b@b.com', 'jens123b', 'password', 'password');

INSERT INTO user_base 
	(school_id, role_id, course_id, first_name, last_name, birth_date, email, username, pw, pw_repeat)
VALUES 
	('2','15','2','Niki','Piki', '2003-09-11', 'nikpik@htomail.com', 'popka123', 'password', 'password');

INSERT INTO user_base 
	(school_id, role_id, course_id, first_name, last_name, birth_date, email, username, pw, pw_repeat)
VALUES 
	('1','15','1','Patric','Swinkin', '2003-09-11', '2winkin1@htomail.com', '2wink', 'password', 'password');

INSERT INTO user_list 
VALUES (19, 1, 15, 1);