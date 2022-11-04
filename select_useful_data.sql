SELECT s.name AS student_name, s.email AS student_email, s.phone AS student_phone,
       s.date_of_birth AS student_date_of_birth, s.year_of_study AS student_year_of_study,
       g_o_s.name AS group_name, c.name AS course_name, c.description AS course_description, 
       c.study_hours AS course_study_hours, s_c.gpa AS students_gpa,
       l.topic AS lesson_topic, l.date_start AS lesson_start, l.date_end AS lesson_end,
       s_l.presence AS students_presence, h.title AS hw_title, h.description AS hw_description,
       h.grade AS hw_grade, t.name AS teacher_name, t.email AS teacher_email, t.phone AS teacher_phone,
       t.date_of_birth AS teacher_date_of_birth, t.rank AS teacher_rank, 
       t.experience_years AS teacher_experience_years, f.name AS faculty_name, d.name AS dean_name,
       d.email AS dean_email, d.phone AS dean_phone, d.date_of_birth AS dean_date_of_birth
  FROM dean AS d
       JOIN faculty AS f               USING(dean_id)
       JOIN group_of_students AS g_o_s USING(faculty_id)
       JOIN teacher           AS t     USING(faculty_id)
       JOIN student           AS s     USING(group_of_students_id)
       JOIN student_lesson    AS s_l   USING(student_id)
       JOIN homework          AS h     USING(student_id, lesson_id)
       JOIN lesson            AS l     USING(lesson_id)
       JOIN course            AS c     USING(course_id)
       JOIN student_course    as s_c   USING(student_id, course_id)
 ORDER BY student_year_of_study ASC, student_name ASC, students_gpa DESC, course_study_hours DESC;
 