DELETE FROM user_base
WHERE user_id = '1';

BEGIN TRANSACTION;

UPDATE lesson_overview
SET lessen_name = 'new lesson name'
WHERE lesson_id = '3';

UPDATE lesson_overview
SET lesson_overview = 'new lesson overview'
WHERE lesson_id = '3';

END;