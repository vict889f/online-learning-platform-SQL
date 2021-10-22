CREATE TABLE lesson_content (
  lesson_id SERIAL PRIMARY KEY,

  lesson_content_introduction TEXT NOT NULL,
  lesson_content_presentation bytea,
  lesson_content_material bytea,
  lesson_content_exercise bytea
);

CREATE TABLE course (
  course_id SERIAL PRIMARY KEY,

  course_name varchar(150) NOT NULL,
  course_description TEXT NOT NULL
);

CREATE TABLE course_lesson (
  	course_id integer REFERENCES course(course_id) NOT NULL,
  	lesson_id integer REFERENCES lesson_content(lesson_id) NOT NULL
);

CREATE TABLE lesson_overview (
  course_id integer REFERENCES course(course_id),
  lesson_id integer REFERENCES lesson_content(lesson_id),

  lesson_name VARCHAR(150) NOT NULL,
  lesson_overview TEXT NOT NULL
);

CREATE TABLE school (
  school_id SERIAL PRIMARY KEY,

  school_name varchar(150) NOT NULL,
  school_description TEXT NOT NULL
);

CREATE TABLE school_course (
  school_id integer REFERENCES school(school_id),
  course_id integer REFERENCES course(course_id)
);

CREATE TABLE role (
  role_id SERIAL PRIMARY KEY NOT NULL,

  role_title varchar(50) NOT NULL
);

CREATE TABLE role_teacher (
	role_id integer REFERENCES role(role_id),
	
	role_desciption TEXT,
	role_permission varchar(50)
);

CREATE TABLE role_student (
	role_id integer REFERENCES role(role_id),
	
	role_desciption TEXT,
	role_permission varchar(50)
);

CREATE TABLE school_role (
  school_id integer REFERENCES school(school_id) NOT NULL,
  role_id integer REFERENCES role(role_id) NOT NULL
);

CREATE TABLE user_base (
  user_id SERIAL PRIMARY KEY,

  school_id integer UNIQUE REFERENCES school(school_id),
  role_id integer UNIQUE REFERENCES role(role_id),
  course_id integer UNIQUE REFERENCES course(course_id),

  first_name varchar(50) NOT NULL,
  last_name varchar(50) NOT NULL,
  birth_date date NOT NULL,

  email varchar(150) UNIQUE NOT NULL,
  username varchar(50) UNIQUE NOT NULL,
  pw varchar(50) NOT NULL,
  pw_repeat  varchar(50) NOT NULL
);

CREATE TABLE user_list (
  user_id integer REFERENCES user_base(user_id) NOT NULL,
  school_id integer REFERENCES school(school_id) NOT NULL,
  role_id integer REFERENCES role(role_id) NOT NULL,
  course_id integer REFERENCES course(course_id) NOT NULL
);

//NEW

CREATE TABLE (active)user_list (
  user_id integer REFERENCES user_base(user_id) UNIQUE,
  school_id integer REFERENCES school(school_id) ,
  role_id integer REFERENCES role(role_id),
  course_id integer REFERENCES course(course_id) 
);