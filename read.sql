SELECT * FROM user_base;

SELECT COUNT(*) FROM user_base;

SELECT COUNT(*) FROM user_list;

SELECT user_base.first_name AS Name, 
			user_base.last_name AS Surname, 
      school.school_name AS School,
     	course.course_name AS Course,
      role.role_title AS Role
      
FROM user_base

JOIN user_list
	ON user_list.user_id = user_base.user_id
  
JOIN course
	ON user_list.course_id = course.course_id
  
JOIN school
	ON user_list.school_id = school.school_id
  
JOIN role
	ON user_list.role_id = role.role_id ;