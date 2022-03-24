# SQL Operators & Joins

In this chapter we will deep dive further into querying data and will learn about SQL Operators & Joins. We have already used few SQL clauses in our previous chapter like WHERE, ORDER BY and LIMIT, etc here we will use it in conjuction with SQL operators and joins to answer more specific questions.

<br>

## SQL Operators

An SQL operator is a special word or character used to perform tasks. These tasks can be anything from complex comparisons, to basic arithmetic operations. Think of an SQL operator as similar to how the different buttons on a calculator function.

SQL operators are primarily used within the WHERE clause of an SQL statement. This is the part of the statement that is used to filter data by a specific condition.

There are mainly 4 types of SQL operators as below:
- Arithmetic operators
- Comparison operators
- Logical operators
- Bitwise operator


### Arithmetic Operators 

Arithmetic operators are used for mathematical operations on numerical data, such as adding or subtracting.

> For Example, consider a = 10 and b = 20

| Operator | Description | Example |
|----------|-------------|---------|
| + |	Add- Adds values on either side of the operator | a + b will give 30 |
| -	| Subtract- Subtracts right hand operand from left hand operand | a - b will give -10 |
| * |	Multiply- Multiplies values on either side of the operator | a * b will give 200 |
| / |	Divide- Divides left hand operand by right hand operand | b / a will give 2 |
| % |	Modulo- Divides left hand operand by right hand operand and returns remainder | b % a will give 0 |

<br>

### Comparison Operators 

A comparison operator is used to compare two values and test whether they are the same.

> For Example, consider a = 10 and b = 20

| Operator | Description | Example |
|----------|-------------|---------|
| = |	Checks if the values of two operands are equal or not, if yes then condition becomes true. | (a = b) is not true |
| != | Checks if the values of two operands are equal or not, if values are not equal then condition becomes true. | (a != b) is true |
| <> |	Checks if the values of two operands are equal or not, if values are not equal then condition becomes true. | (a <> b) is true |
| > |	Checks if the value of left operand is greater than the value of right operand, if yes then condition becomes true. | (a > b) is not true |
| < |	Checks if the value of left operand is less than the value of right operand, if yes then condition becomes true. | (a < b) is true |
| >= | Checks if the value of left operand is greater than or equal to the value of right operand, if yes then condition becomes true. | (a >= b) is not true |
| <= | Checks if the value of left operand is less than or equal to the value of right operand, if yes then condition becomes true. | (a <= b) is true |
| !< | Checks if the value of left operand is not less than the value of right operand, if yes then condition becomes true. | (a !< b) is false |
| !> | Checks if the value of left operand is not greater than the value of right operand, if yes then condition becomes true. | (a !> b) is true |

<br>

### Logical Operators 

Logical operators are those that return true or false, such as the AND operator, which returns true when both expressions are met.

| Operator | Description |
|----------|-------------|
| BETWEEN | It is used to search within a set of values, by the minimum value and maximum value provided. |
| EXISTS | It is used to search for the presence of a row in a table which satisfies a certain condition specified in the query. |
| OR | It is used to combine multiple conditions in a statement by using the WHERE clause. |
| AND | It allows the existence of multiple conditions in an SQL statement’s WHERE clause. |
| NOT | It reverses the meaning of the logical operator with which it is used. (Examples: NOT EXISTS, NOT BETWEEN, NOT IN, etc.) |
| IN | It is used to compare a value in a list of literal values. |
| ALL | It compares a value to all values in another set of values. |
| ANY | It compares a value to any value in the list according to the condition specified. |
| LIKE | It uses wildcard operators to compare a value to similar values. |
| IS NULL | It compares a value with a NULL value. |
| UNIQUE | It searches for every row of a specified table for uniqueness (no duplicates). |

<br>

### Bitwise Operators

A bitwise operator performs bit manipulation between two expressions of the integer data type. Bitwise operators convert the integers into binary bits and then perform the AND (& symbol), OR (|, ^) or NOT (~) operation on each individual bit, before finally converting the binary result back into an integer.

| Operator | Description | Example |
|----------|-------------|---------|
| & | Bitwise AND | (1 & 0) is 0 |
| \| | Bitwise OR | (1 \| 0) is 1 |
| ^ | Bitwise exclusive OR | (1 ^ 0) is 1 |


<br>


## SQL Joins

Joins are used in SELECT statement to retrieve data from multiple tables. It is performed whenever you need to fetch records from two or more tables based on a key matching column in both the tables.

There are 4 types of Join in MySQL
- Inner Join
- Left Outer Join
- Right Outer Join
- Cross Join
- Self Join

<br>

> For practice purpose we will use dpu_college database created in previous chapter, if you don't have the database available in your environment then [click here](https://github.com/cbpspratap/SQLTraining/blob/main/Chapter%205/Create%20dpu_college%20db%20script.sql) to access the sql script and run the complete code in your sql environemnt to create the required database and tables.

<br>

### Inner Join

INNER JOIN clause combines each row from the first table with every row from the second table, keeping only the rows in which the join condition evaluates to true.
In simple terms it brings only the matching records from both the table based on the join condition.

**Visual Representation**

![inner-join](https://user-images.githubusercontent.com/67796162/159785588-4e556ad6-cc20-46fe-9b3e-a2fe80cb9c30.png)


**Syntax**

```sql
SELECT columns
FROM table1 
INNER JOIN table2
ON table1.column = table2.column;
```
**Example**
 
Let's say we have below two tables:
 
![image](https://user-images.githubusercontent.com/67796162/159982496-241af8c0-20a7-4405-aac8-3c692b5d4395.png)

The Inner join of above two tables on Dept_ID column will show only matching records from both the tables as below.

![image](https://user-images.githubusercontent.com/67796162/159985969-eea1bf45-8f6f-4b44-b89f-1b335a7688f5.png)

**Question 1:** Query the name of all the faculties who belong to a department along with full name of department they are in(_To achieve this, inner join the faculty table with dept table_)

<details>
 <Summary>Click here to reveal the solution!</Summary>
 
 ```sql
SELECT
f.NAME, f.DEPT_ID, d.ID, d.NAME
FROM dpu_college.faculty f
INNER JOIN dpu_college.dept d 
ON f.DEPT_ID=d.ID;
 ```
 </details>

<br>

### Left Join

LEFT JOIN clause returns all rows from the left table and matching rows from the right table if there is no matching row in the right table then it will return NULL.

**Visual Representation**

![left-join](https://user-images.githubusercontent.com/67796162/159981994-ce125ecc-711d-4555-b20d-370d72e91774.png)


**Syntax**

```sql
SELECT columns
FROM table1 
LEFT JOIN table2
ON table1.column = table2.column;
```
**Example**
 
Let's say we have below two tables:
 
![image](https://user-images.githubusercontent.com/67796162/159982466-8809321e-fc41-4520-9b07-af390cedd873.png)

The Left join of above two tables on Dept_ID column will show all the records from student table and matching data from department table as below.

![image](https://user-images.githubusercontent.com/67796162/159985163-67a3bf5d-2dae-4579-a184-88fa4aa6641e.png)

**Question 2:** Query the name of all the faculties along with full name of department they are in(_To achieve this, left join the faculty table with dept table_)

<details>
 <Summary>Click here to reveal the solution!</Summary>
 
 ```sql
SELECT
f.NAME, f.DEPT_ID, d.ID, d.NAME
FROM dpu_college.faculty f
LEFT JOIN dpu_college.dept d 
ON f.DEPT_ID=d.ID;
 ```
 </details>

<br>

### Right Join

Similar to LEFT JOIN, RIGHT JOIN clause returns all rows from the right table and matching rows from the left table if there is no matching row in the left table then it will return NULL.

**Visual Representation**

![right-join](https://user-images.githubusercontent.com/67796162/159983812-7c4d2fb2-9f18-4cf3-b69e-4b791d267681.png)


**Syntax**

```sql
SELECT columns
FROM table1 
RIGHT JOIN table2
ON table1.column = table2.column;
```
**Example**
 
Let's say we have below two tables:
 
![image](https://user-images.githubusercontent.com/67796162/159982466-8809321e-fc41-4520-9b07-af390cedd873.png)

The Right join of above two tables on Dept_ID column will show all the records from department table and matching data from student table as below.

![image](https://user-images.githubusercontent.com/67796162/159985445-bb921e03-0fab-4438-8767-021bf20f0d57.png)

**Question 3:** Query the ID, name of all the departments along with faculties related to those department(_To achieve this, right join the faculty table with dept table_)

<details>
 <Summary>Click here to reveal the solution!</Summary>
 
 ```sql
SELECT
f.NAME, f.DEPT_ID, d.ID, d.NAME
FROM dpu_college.faculty f
RIGHT JOIN dpu_college.dept d 
ON f.DEPT_ID=d.ID;
 ```
 </details>

<br>

### Cross Join

CROSS JOIN combines every row of the first table with every row of the second table, it returns a result set that includes the combination of every row in both tables. In simple words it is cartesian product of both the tables.

Notice in the below syntax, that unlike other join types like INNER JOIN, LEFT JOIN or RIGHT JOIN the CROSS JOIN does not have a join condition.

**Syntax**

```sql
SELECT columns
FROM table1 
CROSS JOIN table2;
```
**Example**
 
Let's say we have below two tables:
 
![image](https://user-images.githubusercontent.com/67796162/159987610-6507c770-86d7-4344-8523-cb8b020de586.png)

The Cross join of above two tables will create a cartesian product of both the tables and will show every combination of records from both the tables as below.

![image](https://user-images.githubusercontent.com/67796162/159987670-f3d5df1c-baf1-488c-b550-f2038927e42e.png)

**Question 4:** For a survey, every student need to meet with each of the faculty, to assist this create a list of all student and faculty combination(_To achieve this, cross join the student table with faculty table_)

<details>
 <Summary>Click here to reveal the solution!</Summary>
 
 ```sql
SELECT
s.NAME, s.DEPT_ID, s.marks, f.NAME, f.DEPT_ID
FROM dpu_college.student s
CROSS JOIN dpu_college.faculty f;
 ```
 </details>

<br>

### Self Join

A self-join is a join type in which a table is joined to itself using either INNER JOIN or LEFT JOIN clause. When you reference a table twice in a query, you have to use the table aliases.

The self-join is mostly useful when you need to query hierarchical data or compare rows within the same table.

**Syntax**

```sql
SELECT columns
FROM table1 A
LEFT/INNER JOIN table1 B
ON A.column1 = B.column2;;
```
**Example**
 
Let's say we have below tables which contains employee details and you need to find the manager name of each employee(_for reference you can see the hierarchy map of the employees_):
 
![image](https://user-images.githubusercontent.com/67796162/159992131-1cb4f2ca-b9fd-4116-a0e1-6d524ecc1860.png)

We need to do a self join using LEFT JOIN on the two aliases of this table with join condition as MGR_ID from first alias equals to EMP_ID from second alias of this table.

![image](https://user-images.githubusercontent.com/67796162/159994019-b3f241e8-9e29-41c5-81b0-0f3769191a19.png)

**Question 5:** Based on the data in above picture write a query to bring EMP_ID, NAME and MGR_NAME of each employee.

<details>
 <Summary>To create the employee table in SQL emvironment copy the below code and run it.</Summary>
 
 ```sql
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
 
 ```
 </details>
 

**Solution:**
 
 ```sql
SELECT A.EMP_ID, A.NAME, B.NAME 
FROM company.emp A
LEFT JOIN company.emp B
ON A.MGR_ID=B.EMP_ID;
 ```

<br>


**WooHooo!** In this chapter you learned SQL operators and Joins. Keep practicing to make sure you are able to grasp the concept.

You can go to below sites to practice SQL scenario based questions.
- [Hackerrank](https://www.hackerrank.com/domains/sql)
- [Sqlzoo](https://sqlzoo.net/wiki/SQL_Tutorial)
- [leetcode](https://leetcode.com/problemset/database/?sorting=W3sic29ydE9yZGVyIjoiQVNDRU5ESU5HIiwib3JkZXJCeSI6IkRJRkZJQ1VMVFkifV0%3D&difficulty=EASY&page=1)

### Happy Learning!!

