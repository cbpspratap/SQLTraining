# Querying Table

In this part of SQL training we will learn about querying tables.

## Querying Table

As of now you have already ran several sql statements and queried multiple tables. So let's get straight into understanding and running SELECT statement along with when and how to use it.

To query a table means extracting data from the table and SQL has a specific DQL command for this task and that's SELECT statement. Select Statement consist of at least 4 parts.
 
<img src="https://user-images.githubusercontent.com/67796162/158032526-4ee208a0-f962-4730-a27d-0617ad0b3e67.png" width="669" height="350" />

To start querying the data, lets use our dpu_college database([click here](https://github.com/cbpspratap/SQLTraining/blob/main/Chapter%204/Create%20dpu_college%20db%20script.sql) to get the sql script to create dpu_college db). You can use [db-fiddle](https://www.db-fiddle.com/) or MySQL Workbench in your local machine to run the queries

<br>

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

<br>

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

<br>

### Filter Data Based on Where Condition

**Example:** Show Name and Marks of all the students for whom DEPT_ID is 'H' from student table
> To filter out data based on certain condition use WHERE clause after the table name in SELECT statement

```sql
SELECT NAME, MARKS 
FROM dpu_college.student
WHERE DEPT_ID ='H';
```

**Question 7:** Show data from faculty table where DEPT_ID is 'M'

<details>
  <summary>Click here to reveal the solution!</summary>

```sql
SELECT *
FROM dpu_college.faculty
WHERE DEPT_ID ='M';
```
</details>
<br>

### Sort the Data

**Example:** Show data of all the students in descending order by marks from student table
> To order data using a particular column use ORDER BY caluse followed by ASC|DESC(Ascending/Descending) after WHERE clause in SELECT statement

```sql
SELECT *
FROM dpu_college.student
ORDER BY MARKS DESC;
```

**Question 7:** Show data from student table where DEPT_ID is 'M' and order it by Name in ascending order

<details>
  <summary>Click here to reveal the solution!</summary>

```sql
SELECT *
FROM dpu_college.student
WHERE DEPT_ID ='M'
ORDER BY NAME ASC;
```
</details>
<br>




