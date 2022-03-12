/*
--For training Purpose--
Script to create dpu_college database and tables within it.
DB Name: dpu_college
Tables:	1. student
		2. dept
		3. faculty
*/

--Creates 'dpu_college' database in your sql instance
CREATE DATABASE dpu_college;

--Creates 'student' table under dpu_college database
CREATE TABLE dpu_college.student(
  ID int,
  NAME varchar(50),
  DEPT_ID char(1),
  MARKS int
  );
  
--Creates 'dept' table under dpu_college database
CREATE TABLE dpu_college.dept(
  ID char(1),
  NAME varchar(50)
  );
  
--Creates 'faculty' table under dpu_college database
CREATE TABLE dpu_college.faculty(
  ID char(2),
  NAME varchar(50),
  DEPT_ID char(1)
  );
  
 
--Inserts data into 'student' table under dpu_college database
INSERT INTO dpu_college.student (ID, NAME, DEPT_ID, MARKS)
VALUES(1,'Hitesh Mishra','F',68),
(2,'Pari Sharma','H',96),
(3,'Ankit Gupta','M',74),
(4,'Sanket Kumar','F',54),
(5,'Priti Singh','M',93),
(6,'Ganesh Murthy','I',93),
(7,'Hari Prasad','H',64),
(8,'Alka Desai','F',57),
(9,'Shashwat Jain','H',62),
(10,'Nagma Khan','F',67),
(11,'Salma Siddqui','M',58),
(12,'Eric Brown','H',95),
(13,'Jagan Mohan','H',95),
(14,'Sardar Khan','M',66),
(15,'Deepak Singh','I',70),
(16,'Ashok Kumar','B',91),
(17,'Mayuri Shetty','M',85),
(18,'Vijay Garg','M',50),
(19,'Priyanka Aahuja','F',69),
(20,'Anakhdeep Kaur','B',89);

--Insert data into 'dept' table under dpu_college database
INSERT INTO dpu_college.dept (ID, NAME)
VALUES('F','Finance'),
('H','HR'),
('M','Marketing'),
('I','IB'),
('B','BA');

--Insert data into 'faculty' table under dpu_college database:**
INSERT INTO dpu_college.faculty (ID, NAME, DEPT_ID)
VALUES('f1','Vishnu Kissara','M'),
('f2','Manoj Muguvali','F'),
('f3','Sachin Dutta','H'),
('f4','Suhas Prabhu','M'),
('f5','Parikshit Khandivali','I'),
('f6','John Jacobs','M'),
('f7','Peter Macclister','F'),
('f8','Vibhu Tandon','B');
