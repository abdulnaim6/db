-- 1
SELECT 
    students.name AS student_name, 
    classes.name AS class_name, 
    teachers.name AS teacher_name
FROM 
    students
JOIN 
    classes ON students.class_id = classes.id
JOIN 
    teachers ON classes.teacher_id = teachers.id;


-- 2
SELECT 
    teachers.name AS teacher_name, 
    GROUP_CONCAT(classes.name SEPARATOR ', ') AS classes
FROM 
    teachers
JOIN 
    classes ON teachers.id = classes.teacher_id
GROUP BY 
    teachers.name;

-- 3
CREATE VIEW student_class_teacher_view AS
SELECT 
    students.name AS student_name, 
    classes.name AS class_name, 
    teachers.name AS teacher_name
FROM 
    students
JOIN 
    classes ON students.class_id = classes.id
JOIN 
    teachers ON classes.teacher_id = teachers.id;
