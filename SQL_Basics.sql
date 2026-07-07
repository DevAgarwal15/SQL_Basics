CREATE DATABASE company;
USE company;
create table professor(
employee_id int primary key,
employee_name varchar(50),
employee_dept varchar(50),
employee_salary int 
);
create table dept(
dept_id int primary key,
student_name varchar(50)
 
);
INSERT INTO professor (employee_id , employee_name ,employee_dept,employee_salary)
values (103 , "dev" , "coding" , 70000),
(104 , "raju" , "teaching" , 100000);

SELECT * from professor;
SELECT * from professor where employee_dept = "coding" and age = 50;

update professor 
set employee_dept = "coding"
where employee_id = 101;

rename table teacher to professor;


-- Deleting row from a table 
delete from professor where employee_id = 104;

-- adding new column to table 

ALTER TABLE professor
ADD age int;
UPDATE professor
SET age = 50
WHERE employee_id = 104;

-- select data order by age;
select * from professor 
order by age;


-- creating employe table 
CREATE TABLE employee (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    location VARCHAR(50),
    salary DECIMAL(10,2),
    experience INT,
    age INT
);
-- inserting value to employee table
INSERT INTO employee (id, name, location, salary, experience, age)
VALUES
(101, 'Amit', 'Delhi', 50000.00, 2, 24),
(102, 'Priya', 'Mumbai', 65000.00, 4, 28),
(103, 'Rahul', 'Bangalore', 80000.00, 6, 31),
(104, 'Sneha', 'Hyderabad', 72000.00, 5, 29),
(105, 'Karan', 'Pune', 55000.00, 3, 26),
(106, 'ayush', 'Chennai', 90000.00, 8, 35),
(107, 'Rohit', 'Kolkata', 45000.00, 1, 23),
(108, 'Anjali', 'Jaipur', 78000.00, 7, 33),
(109, 'Vikas', 'Lucknow', 62000.00, 4, 27),
(110, 'Simran', 'Ahmedabad', 85000.00, 9, 38);

-- displaying the employee table
select * from employee
limit 5;
select * from employee
order by age desc;

-- top 5 salary 
select salary from employee
order by salary desc
limit 5;

-- salary between 40000 and 70000
select * from employee
where salary between 40000 and 70000;

-- where location in delhi , mumbai , pune
select * from employee
where location in ('Delhi','Pune','Mumbai');

-- where location not in delhi , mumbai , pune
select * from employee
where location not in ('Delhi','Pune','Mumbai');

-- name ending from character 'a'
select * from employee
where name like ('%a');

-- name starting from a 
select * from employee
where name like('a%');


-- name containing i 
select * from employee
where name like ('%_i_%');

-- average , minimum and maximum salary of employees
select avg(salary) , max(salary), min(salary) from employee;

-- joins

select * from table1
union 
select * from table2;

select * from table1
union all
select * from table2;



-- joins inner
CREATE TABLE student (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    course_id INT
);
INSERT INTO student VALUES
(1, 'Aman', 101),
(2, 'Priya', 102),
(3, 'Rahul', 103),
(4, 'Sneha', NULL),
(5, 'Rohan', 102);


CREATE TABLE course (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50)
);
INSERT INTO course VALUES
(101, 'Java'),
(102, 'Python'),
(103, 'DBMS'),
(104, 'Machine Learning');

-- inner join
SELECT s.student_name, c.course_name
FROM student s
INNER JOIN course c
ON s.course_id = c.course_id;

-- left join
SELECT s.student_name, c.course_name
FROM student s
LEFT JOIN course c
ON s.course_id = c.course_id;

-- right join 
SELECT s.student_name, c.course_name
FROM student s
RIGHT JOIN course c
ON s.course_id = c.course_id;

-- cross join
SELECT s.student_name, c.course_name
FROM student s
CROSS JOIN course c;