CREATE DATABASE universitydb;
use universitydb;


-- Deparments (deparment_id pk,department_name)
-- professors(professor_id pk,first_name,last_name,email,phone, deparment_id fk)
-- students (student_id pk,first_name,last_name,date_of_birth,Gender,email,phone,department_id fk)
-- courses(course_id pk,course_name,course_unit,deparment_id fk,processor_id fk)
-- Enrolments(encrollment _id pk,enrollment_date,grade,student_id fk, course_id fk)

create table Departments(
department_id int primary key auto_increment,
department_name varchar(50)not null unique);

create table professors(
professor_id int primary key auto_increment,
first_name varchar (20),
last_name varchar (20),
email varchar (50) unique,
phone varchar(20),
department_id INT,
foreign key (department_id)references departments (department_id)
);

create  table students(
student_id int primary key auto_increment,
first_name varchar(50),
last_name varchar (50),
date_of_birth date,
gender enum('male','female','other'),
email varchar (100) unique,
phone varchar(20),
department_id int,
foreign key (department_id)references departments (department_id)
);

create table courses(
course_id int primary key auto_increment,
course_name varchar(100),
course_unit int check(course_unit between 1 and 4),
department_id int,
professor_id int,
foreign key (department_id)references departments (department_id),
foreign key (professor_id)references professors(professor_id)
);

create table enrollments (
enrollment_id int primary key auto_increment,
enrollment_date date,
student_id int,
course_id int,
grade char (2)check (grade in ('A','B','C','D','E','F')),
foreign key (student_id)references students(student_id),
foreign key (course_id)references courses(course_id)
);
 

-- insert into table
insert into departments(department_name)
values
('computer science'),
('sociology'),
('mathematics'),
('biochemistry'),
('pharmacy');

select 

CREATE DATABASE universitydb;
use universitydb;


-- Deparments (deparment_id pk,department_name)
-- professors(professor_id pk,first_name,last_name,email,phone, deparment_id fk)
-- students (student_id pk,first_name,last_name,date_of_birth,Gender,email,phone,department_id fk)
-- courses(course_id pk,course_name,course_unit,deparment_id fk,processor_id fk)
-- Enrolments(encrollment _id pk,enrollment_date,grade,student_id fk, course_id fk)

create table Departments(
department_id int primary key auto_increment,
department_name varchar(50)not null unique);

create table professors(
professor_id int primary key auto_increment,
first_name varchar (20),
last_name varchar (20),
email varchar (50) unique,
phone varchar(20),
department_id INT,
foreign key (department_id)references departments (department_id)
);

create  table students(
student_id int primary key auto_increment,
first_name varchar(50),
last_name varchar (50),
date_of_birth date,
gender enum('male','female','other'),
email varchar (100) unique,
phone varchar(20),
department_id int,
foreign key (department_id)references departments (department_id)
);

create table courses(
course_id int primary key auto_increment,
course_name varchar(100),
course_unit int check(course_unit between 1 and 4),
department_id int,
professor_id int,
foreign key (department_id)references departments (department_id),
foreign key (professor_id)references professors(professor_id)
);

create table enrollments (
enrollment_id int primary key auto_increment,
enrollment_date date,
student_id int,
course_id int,
grade char (2)check (grade in ('A','B','C','D','E','F')),
foreign key (student_id)references students(student_id),
foreign key (course_id)references courses(course_id)
);
 
-- insert into tables
insert into departments (departments_name)
values
('computer science'),
('sociology'),
('mathematis'),
('biochemistry'),
('pharmacy');

select * from departments; 

-- insert into professors table
insert into professors (first_name,last_name, email,phone, department_id)
values
('joan','john','joan@gmail.com','234-090-1212',1),
('bolaji','smith','bolaji@gmail.com','234433-1111',2),
('folake','bolaji','folake@gmail.com','233-343-7777',3),
('jessica','tochukwu','jess@gmail.com','233-343-434',4),
('tobi','tamara','tamarachi@gmail.com','234-334-2244',5);

select * from professors;

-- insert into  students
insert into students (first_name,last_name,date_of_birth,gender,email,phone,department_id)
values
('tolu','seyi','2001-02-02','male','tolu@gmail.com','234-0000-4444',1),
('ella','kolawole','1999-04-02','female','ella@gmail.com','234-2222-7777',2),
('jerry','ibrahim','1999-10-10','male','jerry@gmail.com','234-222-8889',3),
('tayo','bolaji','2000-10-11','male','tayo@gmail.com','234-435-9999',4),
('perry','jackson','2002-03-04','female','perry@gmail.com','234-888-4444',5);

select * from students;


-- insert from tables
insert into courses (course_name,course_unit,department_id,professor_id)
values
('introduction to programming',3,1,1),
('sociology inrto', 4,2,2),
('calculus i',4,3,3),
('intro to organic chem',3,4,4),
('psychology of medicine',3,5,5);


select * from courses;


insert into enrollments (student_id,course_id,enrollment_date, grade)
values
(1,1,'2025-01-15','A'),
(2,2,'2025-01-15','B'),
(3,3,'2025-01-15','C'),
(4,4,'2025-01-15','A'),
(5,5,'2025-01-15','B');

select * from enrollments;

select * from students;
select first_name,last_name
from students;
select last_name as surname
from students;


alter table enrollments
add column course_id int;


select count(*) from students;

select count(*)as total_student 
from students;


select * 
from students 
where gender='female';


select * 
from students
where department_id =1;


select *
from students
where date_of_birth > '2001-01-01';


select  distinct department_id
from students;


select * 
from students
where last_name = 'bolaji';




select count(*) from students;

select department_id, count(student_id)
from students
group by department_id;



select * 
from students
order by  last_name desc;




select * from courses;


select * 
from courses
where course_unit>3; 


select * 
from courses
where department_id =2;

select department_id, 
count(course_id)
from courses
group by department_id;


select  distinct professor_id
from courses;


select * 
from courses
order by  course_name desc;


select * from professors;


select * 
from professors
where professor_id =3;



select count(*)as total_professors 
from professors;


select * 
from professors
where professor_id>2;



select *from enrollments;


select * 
from enrollments
where grade = 'A';



 -- joins
 -- inner join return rows
 
 
 select students.student_id,students.first_name,students.last_name,courses.course_name
 from students
 inner join enrollments on enrollments.student_id =students.student_id
 inner join courses on enrollments.course_id=courses.course_id;
 
 
 
select  s .student_id,s.first_name,s.last_name,c.course_name
 from students s
 inner join enrollments e on e.student_id =s.student_id
 inner join courses c on e.course_id=c.course_id;










