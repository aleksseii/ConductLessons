INSERT INTO teacher(faculty_id, name, email, phone, date_of_birth, experience_years, rank)
VALUES 
    (1, 'teacher 1', 'teacher1@gmail.com', '+88888888888','1992-12-12', 8, 'assistant professor'),
    (2, 'teacher 2', 'teacher2@gmail.com', '+77777777777','1982-11-11', 12, 'professor');
    
    
INSERT INTO lesson(teacher_id, course_id, date_start, date_end, topic)
VALUES (1, 1, '2022-11-04 16:20:00', '2022-11-04 17:50:00', 'Guice DI'),
       (2, 2, '2022-11-04 18:00:00', '2022-11-04 19:30:00', 'DB JDBC');
       
       
INSERT INTO student(group_of_students_id, name, email, phone, date_of_birth, year_of_study)
VALUES
    (1, '1-st student', 'student#1@gmail.com', '+00000000000', '2004-01-31', 2),
    (2, '2-nd student', 'student#2@gmail.com', '+22222222222', '2002-02-28', 4),
    (3, '3-rd student', 'student#3@gmail.com', '+33333333333', '2002-12-29', 3),
    (4, '4-th student', 'student#4@gmail.com', '+44444444444', '2003-12-29', 2),
    (1, '5-th student', 'student#5@gmail.com', '+55555555555', '2003-01-02', 3),
    (2, '6-th student', 'student#6@gmail.com', '+66666666666', '2001-11-21', 4),
    (3, '7-th student', 'student#7@gmail.com', '+67676767676', '2002-06-21', 3),
    (4, 'worst student', 'student#worst@gmail.com', '+10101010101', '2004-01-24', 2);


INSERT INTO student_lesson(student_id, lesson_id, presence)
VALUES (1, 1, TRUE),
       (1, 2, TRUE),
       (2, 1, TRUE),
       (2, 2, FALSE),
       (3, 1, FALSE),
       (3, 2, TRUE),
       (4, 1, FALSE),
       (4, 2, FALSE),
       (5, 1, TRUE),
       (5, 2, TRUE),
       (6, 1, TRUE),
       (6, 2, FALSE),
       (7, 1, FALSE),
       (7, 2, TRUE),
       (8, 1, FALSE),
       (8, 2, FALSE);
       

INSERT INTO homework(student_id, lesson_id, grade, title, description)
VALUES (1, 1, 5, 'hw 1', 'complete hw 1'),
       (1, 2, 5, 'hw 2', 'complete hw 2'),
       (2, 1, 4, 'hw 1', 'complete hw 1'),
       (2, 2, 4, 'hw 2', 'complete hw 2'),
       (3, 1, 3, 'hw 1', 'complete hw 1'),
       (3, 2, 3, 'hw 2', 'complete hw 2'),
       (4, 1, 2, 'hw 1', 'complete hw 1'),
       (4, 2, 2, 'hw 2', 'complete hw 2'),
       (5, 1, 5, 'hw 1', 'complete hw 1'),
       (5, 2, 5, 'hw 2', 'complete hw 2'),
       (6, 1, 4, 'hw 1', 'complete hw 1'),
       (6, 2, 4, 'hw 2', 'complete hw 2'),
       (7, 1, 3, 'hw 1', 'complete hw 1'),
       (7, 2, 3, 'hw 2', 'complete hw 2'),
       (8, 1, 2, 'hw 1', 'complete hw 1'),
       (8, 2, 2, 'hw 2', 'complete hw 2');
       
       
INSERT INTO student_course(student_id, course_id, gpa)
VALUES (1, 1, 5.0),
       (1, 2, 5.0),
       (2, 1, 4.0),
       (2, 2, 4.0),
       (3, 1, 3.0),
       (3, 2, 3.0),
       (4, 1, 2.0),
       (4, 2, 2.0),
       (5, 1, 5.0),
       (5, 2, 5.0),
       (6, 1, 4.0),
       (6, 2, 4.0),
       (7, 1, 3.0),
       (7, 2, 3.0),
       (8, 1, 2.0),
       (8, 2, 2.0);
