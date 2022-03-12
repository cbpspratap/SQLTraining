# Data Type & Querying Table

In this part of SQL training we will learn about the major Data Types and querying tables.

## Data Types in SQL

As seen in the previous when we ceated tables where we defined the data types of each column. While creating a table its important to identify and define the right data type for each of the columns. The data type is a guideline for SQL to understand what type of data is expected inside of each column, and it also identifies how SQL will interact with the stored data.

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

## Querying Table

As of now you have already ran several sql statements and queried multiple tables. So let's get straight into understanding and running SELECT statement along with when and how to use it.

To query a table means extracting data from the table and SQL has a specific DQL command for this task and that's SELECT statement. Select Statement consist of at least 4 parts.
 
<img src="https://user-images.githubusercontent.com/67796162/158032526-4ee208a0-f962-4730-a27d-0617ad0b3e67.png" width="669" height="350" />

To start querying the data, lets use our dpu_college database([click here](https://github.com/cbpspratap/SQLTraining/blob/main/Chapter%204/Create%20dpu_college%20db%20script.sql) to get the sql script to create dpu_college db). You can use [db-fiddle](https://www.db-fiddle.com/) or MySQL Workbench in your local machine to run the queries

### Query Entire Table

**Example:** Show all the data in student table within dpu_college database
> To get the entire data from all the comuns of a table you need to use asterisk(\*) in the SELECT statement

```sql
SELECT * FROM dpu_college.student;
```


**Question 1:** Show all the data in faculty table within dpu_college database

<details>
  <summary>Click here to reveal the solution!</summary>

```sql
SELECT * FROM dpu_college.faculty;
```
</details>
<br>

**Question 2:** Show all the data in dept table within dpu_college database

<details>
  <summary>Click here to reveal the solution!</summary>

```sql
SELECT * FROM dpu_college.dept;
```
</details>
<br>

### Query Limited No of Records

**Example:** Show top 10 records from student table
> To limit the number of records use LIMIT at the end of SELECT statement

```sql
SELECT * FROM dpu_college.student
LIMIT 10;
```

**Question 3:** Show top 5 records from faculty table

<details>
  <summary>Click here to reveal the solution!</summary>

```sql
SELECT * FROM dpu_college.faculty
  LIMIT 5;
```
</details>
<br>

**Question 4:** Show top 2 records from dept table

<details>
  <summary>Click here to reveal the solution!</summary>

```sql
SELECT * FROM dpu_college.dept
  LIMIT 2;
```
</details>


### Query Only Required Columns

**Example:** Show Name and Marks of all the students from student table
> To limit the number of records use LIMIT at the end of SELECT statement

```sql
SELECT NAME, MARKS 
FROM dpu_college.student;
```

**Question 5:** Show Name and DEPT_ID of all the faculties from faculty table and limit the number of records to 5

<details>
  <summary>Click here to reveal the solution!</summary>

```sql
SELECT NAME, DEPT_ID
  FROM dpu_college.faculty
  LIMIT 5;
```
</details>
<br>

**Question 6:** Show Name of 2 departments from dept table

<details>
  <summary>Click here to reveal the solution!</summary>

```sql
SELECT NAME
  FROM dpu_college.dept
  LIMIT 2;
```
</details>








