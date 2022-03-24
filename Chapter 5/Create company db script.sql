/*
##For training Purpose##
Script to create company database and tables within it.
DB Name: company
Tables:	1. emp
*/

##Drop any existing database with name 'company'
DROP DATABASE IF EXISTS company;

##Creates 'company' database in your sql instance
CREATE DATABASE company;

##Creates 'emp' table under 'company' database
CREATE TABLE company.emp(
  EMP_ID int,
  NAME varchar(50) NOT NULL,
  MGR_ID int,
  PRIMARY KEY(EMP_ID)
  );

##Insert data into 'emp' table under 'company' database
INSERT INTO company.emp (EMP_ID, NAME, MGR_ID)
VALUES(101, 'Amit', 102),
(102, 'David', 103),
(103,'Shital', null),
(104,'Neeraja', 102),
(105,'Eric', 106),
(106,'Gaurav', 103),
(107,'Nitesh',106);
