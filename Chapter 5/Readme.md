# SQL Clauses & Operators

In this chapter we will deep dive further into querying data and will learn about SQL Operators and Clauses. We have already used few SQL clauses in our previous examples like WHERE, ORDER BY and LIMIT, here we will use it in conjuction with SQL operators to answer more specific questions.

<br>

## SQL Clauses

Clauses are in-built functions available in SQL, with the help of clauses we can deal with data easily or in simple workds it help us filter and analyze data quickly. When we have large amounts of data stored in the database, we use Clauses to query and get data required by the user. 

Below are some of the SQL Clauses:
- Where Clause
- Like Clause
- Group By Clause
- Having Clause
- Order By Clause
- Distinct Clause
- Limit Clause

<br>

### Where Clause

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

### Like Clause

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



