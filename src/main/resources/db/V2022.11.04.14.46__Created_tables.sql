CREATE TABLE dean(
    dean_id          SERIAL         NOT NULL,
    name             VARCHAR(50)    NOT NULL,
    email            VARCHAR(50)    NOT NULL,
    phone            VARCHAR(50)    NOT NULL,
    date_of_birth    DATE           NOT NULL,
    
    CONSTRAINT dean_pk PRIMARY KEY(dean_id)
);


CREATE TABLE faculty(
    faculty_id    SERIAL         NOT NULL,
    name          VARCHAR(50)    NOT NULL,
    dean_id       INT
        REFERENCES dean(dean_id)
        ON UPDATE CASCADE
        ON DELETE SET NULL,
        
    CONSTRAINT faculty_pk PRIMARY KEY(faculty_id)
);


CREATE TABLE teacher(
    teacher_id          SERIAL         NOT NULL,
    name                VARCHAR(50)    NOT NULL,
    email               VARCHAR(50)    NOT NULL,
    phone               VARCHAR(50)    NOT NULL,
    date_of_birth       DATE           NOT NULL,
    rank                VARCHAR(50)    NOT NULL,
    experience_years    INT            NOT NULL DEFAULT 0
        CONSTRAINT non_negative_years
        CHECK (experience_years >= 0),
    faculty_id          INT
        REFERENCES faculty(faculty_id)
        ON UPDATE CASCADE
        ON DELETE SET NULL,
        
    CONSTRAINT teacher_pk PRIMARY KEY(teacher_id)
);


CREATE TABLE group_of_students(
    group_of_students_id    SERIAL         NOT NULL,
    name                    VARCHAR(50)    NOT NULL,
    faculty_id              INT
        REFERENCES faculty(faculty_id)
        ON UPDATE CASCADE
        ON DELETE SET NULL,
        
    CONSTRAINT group_of_students_pk PRIMARY KEY(group_of_students_id)
);


CREATE TABLE student(
    student_id              SERIAL         NOT NULL,
    name                    VARCHAR(50)    NOT NULL,
    email                   VARCHAR(50)    NOT NULL,
    phone                   VARCHAR(50)    NOT NULL,
    date_of_birth           DATE           NOT NULL,
    year_of_study           INT            NOT NULL DEFAULT 1
        CONSTRAINT positive_year
        CHECK (year_of_study > 0),
    group_of_students_id    INT
        REFERENCES group_of_students(group_of_students_id)
        ON UPDATE CASCADE
        ON DELETE SET NULL,
        
    CONSTRAINT student_pk PRIMARY KEY(student_id)
);


CREATE TABLE course(
    course_id      SERIAL         NOT NULL,
    name           VARCHAR(50)    NOT NULL,
    description    VARCHAR(50)    NOT NULL,
    study_hours    INT            NOT NULL
        CONSTRAINT positive_hours
        CHECK (study_hours > 0),
        
    CONSTRAINT course_pk PRIMARY KEY(course_id)
);


CREATE TABLE lesson(
    lesson_id     SERIAL         NOT NULL,
    date_start    TIMESTAMP,
    date_end      TIMESTAMP,
    topic         VARCHAR(50)    NOT NULL,
    teacher_id    INT            NOT NULL
        REFERENCES teacher(teacher_id)
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    course_id     INT            NOT NULL
        REFERENCES course(course_id)
        ON UPDATE CASCADE
        ON DELETE CASCADE,
        
    CONSTRAINT lesson_pk PRIMARY KEY(lesson_id)
);


CREATE TABLE student_lesson(
    presence      BOOLEAN        NOT NULL,
    student_id    INT            NOT NULL
        REFERENCES student(student_id)
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    lesson_id     INT            NOT NULL
        REFERENCES lesson(lesson_id)
        ON UPDATE CASCADE
        ON DELETE CASCADE,
        
    CONSTRAINT student_lesson_pk PRIMARY KEY(student_id, lesson_id)
);


CREATE TABLE homework(
    grade          INT            NOT NULL,
    title          VARCHAR(50)    NOT NULL,
    description    VARCHAR(50)    NOT NULL,
    student_id     INT            NOT NULL
        REFERENCES student(student_id)
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    lesson_id     INT            NOT NULL
        REFERENCES lesson(lesson_id)
        ON UPDATE CASCADE
        ON DELETE CASCADE,
        
    CONSTRAINT homework_pk PRIMARY KEY(student_id, lesson_id)
);


CREATE TABLE student_course(
    gpa            DECIMAL(18, 0)    NOT NULL,
    student_id     INT               NOT NULL
        REFERENCES student(student_id)
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    course_id     INT               NOT NULL
        REFERENCES course(course_id)
        ON UPDATE CASCADE
        ON DELETE CASCADE,
        
    CONSTRAINT student_course_pk PRIMARY KEY(student_id, course_id)
);
