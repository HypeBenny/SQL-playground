CREATE DATABASE KNUST;
USE hypebenny;
CREATE TABLE student(
student_id int primary key auto_increment,
name varchar(50) not null,
hostel varchar(50) default 'day student',
gpa decimal(3,2) not null
);
INSERT INTO student
VALUES(1, 'benny', 'kwapong', 3.23);

ALTER TABLE student
ADD class varchar(50) not null;

UPDATE student
SET class = '1st class'
WHERE student_id = 1;

ALTER TABLE student
DROP COLUMN class




