# SQL Clauses & Operators

In this chapter we will deep dive further into querying data and will learn about SQL Operators and Clauses. We have already used few SQL clauses in our previous examples like WHERE, ORDER BY and LIMIT, here we will use it in conjuction with SQL operators to answer more specific questions.

<br>

## SQL Clauses

Clauses are in-built functions available in SQL, with the help of clauses we can deal with data easily or in simple workds it help us filter and analyze data quickly. When we have large amounts of data stored in the database, we use Clauses to query and get data required by the user. 

Below are some of the SQL Clauses:
- Where Clause
- Like Clause
- Distinct Clause
- Limit Clause
- Order By Clause
- Group By Clause
- Having Clause


<br>

### WHERE Clause

The SQL WHERE clause is used to specify a condition while fetching the data from a single table or by joining multiple tables. Based on the given condition it returns a specific value from the table. WHERE clause should be used to filter the records and fetching only the necessary records.

We have alreday used Where Clause in our previous examples, below is the syntax of Where Clause.

**Syntax**

```sql
SELECT column1, column2, columnN 
FROM table_name
WHERE [condition];
```

**Example**

> Show the name, department id and marks of all the students who scored more than 80 from student table

```sql
SELECT NAME, DEPT_ID, MARKS
FROM dpu_college.student
WHERE MARKS > 80;
```
<br>

**Question 1:** Show all the data from faculty table where DEPT_ID is 'M' and sort the data by NAME in ascending order

<details>
  <summary>Click here to reveal the solution!</summary>

```sql
SELECT *
FROM dpu_college.faculty
WHERE DEPT_ID ='M'
ORDER BY NAME ASC;
```
</details>

<br>

### LIKE Clause

The SQL LIKE clause is used to compare a value to similar values using wildcard operators. There are two wildcards used in conjunction with the LIKE operator in Where Clause.

- The percent sign (%)
- The underscore (\_)

The percent sign represents zero, one or multiple characters. The underscore represents a single number or character.

**Syntax**

```sql
SELECT column1, column2, columnN 
FROM table_name
WHERE column1 LIKE [pattern];
```

**Example**

> Show id, name, department id and marks of all the students from student table whose name starts with 'A'

```sql
SELECT ID, NAME, DEPT_ID, MARKS
FROM dpu_college.student
WHERE NAME LIKE 'A%';
```
<br>

**Question 2:** Show all the data from faculty table where first two letters of name is 'Ma'

<details>
  <summary>Click here to reveal the solution!</summary>

```sql
SELECT *
FROM dpu_college.faculty
WHERE NAME Like 'Ma%';
```
</details>
<br>

**Question 3:** Show all the data from student table where last name of the student is 'Singh'

<details>
  <summary>Click here to reveal the solution!</summary>

```sql
SELECT *
FROM dpu_college.student
WHERE NAME LIKE '%Singh';
```
</details>

<br>

### DISTINCT Clause

The DISTINCT caluse is get only distinct(unique/different) values from the columns of a table. Many  time you will see that some of the columns in the table can contain duplicate values but you would only like to see the unique ones or those which are different from each other, to get such values you will need to use Select Distinct.

**Syntax**

```sql
SELECT DISTINCT column1
FROM table_name;
```

**Example**

> Show the name, department id and marks of all the students who scored more than 80 from student table

```sql
SELECT DISTINCT NAME
FROM dpu_college.student;
```
<br>

**Question 4:** Show all the unique student names and their department from student table where DEPT_ID is 'F'.

<details>
  <summary>Click here to reveal the solution!</summary>

```sql
SELECT DISTINCT NAME, DEPT_ID 
FROM dpu_college.student
WHERE DEPT_ID='F';
```
</details>

<br>

### LIMIT Clause

The LIMIT clause is used to specify the number of records to return. It is is useful when you want to see the data from a large table with more than thousands of records. Returning a large number of records may not be useful every time and can impact performance and operating cost, so its useful to limit the number of records you query from a table.

**Syntax**

```sql
SELECT column_names
FROM table_name
WHERE condition
LIMIT number;
```

**Example**

> Show two records from faculty table

```sql
SELECT * 
FROM dpu_college.faculty
LIMIT 2;
```
<br>

**Question 5:** Show top 5 records from student table where marks is greater than or equal to 70

<details>
  <summary>Click here to reveal the solution!</summary>

```sql
SELECT * 
FROM dpu_college.student
WHERE MARKS >= 70
LIMIT 5;
```
</details>

<br>

### ORDER BY Clause

The ORDER BY Clause is used to sort the records in ascending or descending order. When you use the SELECT statement to query data from a table, the order of rows in the result set is unspecified. To sort the rows in the result set, you add the ORDER BY clause to the SELECT statement.

**Syntax**

```sql
SELECT column_names
FROM table_name
ORDER BY column_name [ASC|DESC];
```

**Example**

> Query faculty table and order the data by the name in ascending order.

```sql
SELECT * 
FROM dpu_college.faculty
ORDER BY NAME ASC;
```
<br>

**Question 6:** Query student table to show top 10 records ordered by their marks in descending order.

<details>
  <summary>Click here to reveal the solution!</summary>

```sql
SELECT * 
FROM dpu_college.student
ORDER BY MARKS DESC
LIMIT 10;
```
</details>

<br>

### GROUP BY Clause

The GROUP BY clause groups a set of rows into a set of summary rows by values of columns or expressions. The GROUP BY clause returns one row for each group. The GROUP BY statement is often used with aggregate functions (COUNT(), MAX(), MIN(), SUM(), AVG()) to group the result-set by one or more columns.

**Syntax**

```sql
SELECT column_names
FROM table_name
GROUP BY column_names;
```

**Example**

> Show number of faculties in each department from faculty table

```sql
SELECT DEPT_ID, count(NAME)
FROM dpu_college.faculty
GROUP BY DEPT_ID;
```
<br>

**Question 7:** Show the number of students in each department who scored more than 60 marks from student table.

<details>
  <summary>Click here to reveal the solution!</summary>

```sql
SELECT DEPT_ID, count(NAME) 
FROM dpu_college.student
WHERE MARKS > 60
GROUP BY DEPT_ID;
```
</details>

<br>

### HAVING Clause

Just Like WHERE clause HAVING caluse is also used to filter the data based on condition, but WHERE condition cannot filter data from aggregate columns. So to filter data from aggregate columns we need to use HAVING clause. Since HAVING clause always comes in picture where we have some kind of aggregation it is always specified after GROUP BY.

**Syntax**

```sql
SELECT column_names
FROM table_name
WHERE condition
GROUP BY column_names
HAVING condition;
```

**Example**

> Show all the departments with count of faculties where count of faculties is 2 or more from faculty table.

```sql
SELECT DEPT_ID, count(NAME)
FROM dpu_college.faculty
GROUP BY DEPT_ID
HAVING count(NAME) >= 2;
```
<br>

**Question 8:** Show all the department where number of student who scored 50 marks or higher is more than 5 from student table.

<details>
  <summary>Click here to reveal the solution!</summary>

```sql
SELECT DEPT_ID, count(NAME) 
FROM dpu_college.student
WHERE MARKS >= 50
GROUP BY DEPT_ID
HAVING count(NAME) > 5;
```
</details>

<br>




<br>

<br>

![image](https://user-images.githubusercontent.com/67796162/159111966-dad2c265-099c-47df-b016-552bb5572d4b.png)


