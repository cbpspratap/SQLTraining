# Understand Data Types, Create Table & Load Data

In this chapter we will first undertsand the basic data types in SQL and then get into a bit of hands-on SQL coding. We will write basic SQL statements and will observe the output or the result and then will try to understand the working of a SQL statement.


## Data Types in SQL

As seen in the previous chapter where we ceated tables and defined the data types of each column. While creating a table its important to identify and define the right data type for each of the columns. The data type is a guideline for SQL to understand what type of data is expected inside of each column, and it also identifies how SQL will interact with the stored data.

Here we will see some basic data types which required for our function knowledge of SQL and are widely used.

**String Data Types**

  A string data type can hold anything from plain text to binary data such as images or files. Strings can be compared and searched based on pattern matching by using the LIKE operator, regular expression, and full-text search.

  | Data type |	Description |
  |-----------|-------------|
  |CHAR(size)	|A FIXED length string (can contain letters, numbers, and special characters). The size parameter specifies the string length in characters, it can be from 0 to 255. Default is 1|
  |VARCHAR(size) |A VARIABLE length string (can contain letters, numbers, and special characters). The size parameter specifies the maximum string length in characters, it can be from 0 to 65535|
  |BINARY(size)	|Equal to CHAR(), but stores binary byte strings. The size parameter specifies the column length in bytes. Default is 1|
  |VARBINARY(size)	|Equal to VARCHAR(), but stores binary byte strings. The size parameter specifies the maximum column length in bytes.|

<br>

**Numeric Data Types**

  MySQL has several data types which is used to store those values containing data of numeric nature. These types include the exact numeric data types (INTEGER, SMALLINT, DECIMAL, and NUMERIC), as well as the approximate numeric data types (FLOAT, REAL, and DOUBLE). 

  | Data type |	Description |
  |-----------|-------------|
  |SMALLINT |	It is a small integer that can be signed or unsigned. If signed, the allowable range is from -32768 to 32767. If unsigned, the allowable range is from 0 to 65535.|
  |INT |It is a normal-sized integer that can be signed or unsigned. If signed, the allowable range is from -2147483648 to 2147483647. If unsigned, the allowable range is from 0 to 4294967295.|
  |BIGINT |It is a large integer that can be signed or unsigned. If signed, the allowable range is from -9223372036854775808 to 9223372036854775807. If unsigned, the allowable range is from 0 to 18446744073709551615.|
  |DECIMAL(size, d) |An exact fixed-point number. The total number of digits is specified in size. The number of digits after the decimal point is specified in the d parameter. The maximum number for size is 65. The maximum number for d is 30. The default value for size is 10. The default value for d is 0.|
  |FLOAT(size, d) |A floating point number. The total number of digits is specified in size. The number of digits after the decimal point is specified in the d parameter.|
  |DOUBLE(size, d) |A floating point number. The total number of digits is specified in size. The number of digits after the decimal point is specified in the d parameter, The difference between float and double is that DOUBLE is used when you want to achieve high accuracy because double has 64 bit (8 bytes) with 16 places accuracy.|
  |BIT(size) |IT is used to store bit values i.e a number containing 0’s and 1’s only. The number of bits per value is specified using the size parameter. The size parameter can hold a value from 1 to 64.|

<br>

**Date & Time Data Types**


Date and Time data types are used to store temporal data, there are 5 data types to store date & time in MySQL.

| Data type |	Description |
|-----------|-------------|
|DATE |A date. Format: YYYY-MM-DD. The supported range is from '1000-01-01' to '9999-12-31'|
|DATETIME |A date and time combination. Format: YYYY-MM-DD hh:mm:ss. The supported range is from '1000-01-01 00:00:00' to '9999-12-31 23:59:59'. Adding DEFAULT and ON UPDATE in the column definition to get automatic initialization and updating to the current date and time|
|TIMESTAMP |A timestamp. TIMESTAMP values are stored as the number of seconds since the Unix epoch ('1970-01-01 00:00:00' UTC). Format: YYYY-MM-DD hh:mm:ss. The supported range is from '1970-01-01 00:00:01' UTC to '2038-01-09 03:14:07' UTC. Automatic initialization and updating to the current date and time can be specified using DEFAULT CURRENT_TIMESTAMP and ON UPDATE CURRENT_TIMESTAMP in the column definition|
|TIME |A time. Format: hh:mm:ss. The supported range is from '-838:59:59' to '838:59:59'|
|YEAR |A year in four-digit format. Values allowed in four-digit format: 1901 to 2155, and 0000|

<br>

## Time to do Hands-on

We will take a use case where we will create a dpu_college database and within this database we will create 3 tables student, dept and faculty. Then we will try to analyze the data using SQL.

  ***DB:*** *dpu_college*

  ***Table:*** *student, dept, faculty*
 
  **1. student**
 <br>
| ID |	NAME | DEPT_ID | MARKS |
|----|-------|---------|-------|
| 1	 | Hitesh Mishra	| F	| 68 |
| 2	 | Pari Sharma	 	| H	| 96 |
| 3	 | Ankit Gupta	 	| M	| 74 |
| 4	 | Sanket Kumar	 	| F	| 54 |
| 5	 | Priti Singh	 	| M	| 93 |
| 6	 | Ganesh Murthy	| I	| 93 |
| 7	 | Hari Prasad	 	| H	| 68 |
| 8	 | Alka Desai	 	| F	| 56 |
| 9	 | Shashwat Jain	| H	| 76 |
| 10 | Nagma Khan	 	| F	| 71 |
| 11 | Salma Siddqui	| M	| 51 |
| 12 | Eric Brown	 	| H	| 61 |
| 13 | Jagan Mohan	 	| H	| 78 |
| 14 | Sardar Khan	 	| M	| 76 |
| 15 | Deepak Singh	 	| I	| 66 |
| 16 | Ashok Kumar	 	| B	| 89 |
| 17 | Mayuri Shetty	| M	| 97 |
| 18 | Vijay Garg	 	| M	| 54 |
| 19 | Priyanka Aahuja 	| F	| 82 |
| 20 | Anakhdeep Kaur	| B	| 62 |


 **2. dept**

| ID |	NAME |
|----|-------|
| F	| Finance   |
| H	| HR        |
| M	| Marketing |
| I	| IB        |
| B	| BA        |

 **3. faculty**

| ID |	NAME | DEPT_ID |
|----|-------|---------|
| f1 |	Vishnu Kissara	 		| M	|
| f2 |	Manoj Muguvali	 		| F	|
| f3 |	Sachin Dutta	 		| H	|
| f4 |	Suhas Prabhu	 		| M	|
| f5 |	Parikshit Khandivali	| I	|
| f6 |	John Jacobs	 			| M	|
| f7 |	Peter Macclister		| F	|
| f8 |	Vibhu Tandon	 		| B	|

## Time to do some hands-on

 ### Create  Database

To create *dpu_college* database(db) we will use CREATE command which is basically a DDL command. Remember that in case of MySQL database is same as schema and it can be used interchangeably.

**Syntax:**

```sql
CREATE DATABASE database_name;
```

**Create 'dpu_college' database:**

```sql
CREATE DATABASE dpu_college;
```

 ### Create  Tables
 
Here we need to create 3 tables under dpu_college database. For this we will use CREATE TABLE command and you can see in below syntax, database_name followed by dot followed by table name is written. This syntax signifies that the table will be created within the database mentioned.
 
 **Syntax:**

```sql
CREATE TABLE database_name.table_name;
```

**Create 'student' table under dpu_college database:**

```sql
CREATE TABLE dpu_college.student(
  ID int,
  NAME varchar(50) NOT NULL,
  DEPT_ID char(1),
  MARKS int,
  PRIMARY KEY(ID)
  );
```

**Create 'dept' table under dpu_college database:**

```sql
CREATE TABLE dpu_college.dept(
  ID char(1),
  NAME varchar(50) NOT NULL,
  PRIMARY KEY(ID)
  );
```

**Create 'faculty' table under dpu_college database:**

```sql
CREATE TABLE dpu_college.faculty(
  ID char(2),
  NAME varchar(50) NOT NULL,
  DEPT_ID char(1),
  PRIMARY KEY(ID)
  );
```


***Good Job, you have already created the required tables.***

Let's go ahead and check the database and tables we have created:

```sql
SHOW DATABASES;
```
You can see it shows all the databases available in your SQL environment.

|Database|
|--------|
|dpu_college		|
|information_schema |
|mysql              |
|performance_schema |
|sakila             |
|sys                |
|trading            |
|world              |

You can see dpu_college is one of the databases in the list. Let's go ahead and check the tables within dpu_college database.

```sql
SHOW TABLES FROM dpu_college;
```

Here we have all the tables which we have created few mins back.

|Tables_in_dpu_college|
|---------------------|
|dept	 |	
|faculty |
|student |

Let's go and check few of the tables we have created.

```sql
SELECT * FROM dpu_college.student;
```

```sql
SELECT * FROM dpu_college.dept;
```

```sql
SELECT * FROM dpu_college.faculty;
```

After running each query above you can see there is no data available in tables, it's just the table structure has been created.

If you want to check the structure of the table specifically columns in the table, data types and key attributes, you can use DESC/DESCRIBE command followed by table name to get the details.

```sql
DESC dpu_college.student;
```
| Field | Type | Null | Key | Default | Extra |
|-------|------|------|-----|---------|-------|
|ID			| int			| YES | | | |	
|NAME		| varchar(50)	| YES | | |	|	
|DEPT_ID	| char(1)		| YES | | |	|	
|MARKS		| int			| YES | | |	|	


 ### Insert Data Into The Tables
 
 Since we don't have any data in tables yet, it's time to insert some data into tables.
 
 To insert data into tables we will use INSERT INTO statement which is a DML command.

 **Syntax:**

```sql
INSERT INTO database_name.table_name  (col1, col2, col3,.... col N)  
VALUES (value1, value2, value3, .... valueN),
(value1, value2, value3, .... valueN);
```

**Insert data into 'student' table under dpu_college database:**

```sql
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
```

**Insert data into 'dept' table under dpu_college database:**

```sql
INSERT INTO dpu_college.dept (ID, NAME)
VALUES('F','Finance'),
('H','HR'),
('M','Marketing'),
('I','IB'),
('B','BA');
```

**Insert data into 'faculty' table under dpu_college database:**

```sql
INSERT INTO dpu_college.faculty (ID, NAME, DEPT_ID)
VALUES('f1','Vishnu Kissara','M'),
('f2','Manoj Muguvali','F'),
('f3','Sachin Dutta','H'),
('f4','Suhas Prabhu','M'),
('f5','Parikshit Khandivali','I'),
('f6','John Jacobs','M'),
('f7','Peter Macclister','F'),
('f8','Vibhu Tandon','B');
```

We have inserted data into each of the three tables, now let's go ahead and check data in each of the table. Run below queries to check data within each tables.

**Check data within 'student' table:**

```sql
SELECT * FROM dpu_college.student;
```

**Check data within 'dept' table:**

```sql
SELECT * FROM dpu_college.dept;
```

**Check data within 'faculty' table:**

```sql
SELECT * FROM dpu_college.faculty;
```

_Awesome!_ you can see all the data we have loaded into the tables are available here.

** _You can access the script used to create tables and insert data [here](https://github.com/cbpspratap/SQLTraining/blob/main/Chapter%203/Create%20dpu_college%20db%20script.sql) or go to Chapter 3 folder to access the sql script_

