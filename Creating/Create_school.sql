
CREATE TABLE students(
student_id SERIAL PRIMARY KEY,
first_name VARCHAR(50),
last_name VARCHAR(50),
homeroom_number INTEGER,
phone VARCHAR(50) NOT NULL UNIQUE,
email VARCHAR(50) UNIQUE,
graduation_year DATE	
);


CREATE TABLE teachers(
teacher_id SERIAL PRIMARY KEY,
first_name VARCHAR(50),
last_name VARCHAR(50)	
);


ALTER TABLE teachers
ADD homeroom_number INTEGER;

ALTER TABLE teachers
ADD	department VARCHAR(50); 

ALTER TABLE teachers
ADD	email VARCHAR(50) UNIQUE;

ALTER TABLE teachers
ADD	phone VARCHAR(50) UNIQUE;


INSERT INTO students(first_name,phone,homeroom_number,graduation_year)
VALUES('Mark','777-555-1234',5,'01-01-2035');

INSERT INTO teachers(first_name,last_name,homeroom_number,department,email,phone)
VALUES('Jonas','Salk',5,'Biology','jsalk@school.org','777-555-4321');

