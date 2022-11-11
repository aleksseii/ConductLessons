INSERT INTO dean(name, email, phone, date_of_birth)
VALUES ('best dean ever', 'best.dean@gmail.com', '+99999999999', '1970-01-01'),
       ('worst dean ever', 'worst.dean@gmail.com', '+11111111111', '1969-02-02');

       
INSERT INTO faculty(name, dean_id)

SELECT 'best faculty', dean_id
  FROM dean
 WHERE dean.name LIKE '%best%'
 UNION
SELECT 'worst faculty', dean_id
  FROM dean
 WHERE dean.name LIKE '%worst%';
 
 
INSERT INTO group_of_students(name, faculty_id)
VALUES ('best of the best', 1),
       ('worst of the best', 1),
       ('best of the worst', 2),
       ('worst of the worst', 2);


INSERT INTO course(name, description, study_hours)
VALUES ('course 1', 'best course ever', 500),
       ('course 2', 'worst course ever', 250);
