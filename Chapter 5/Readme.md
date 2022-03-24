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

The Inner join of above two tables on Dept_ID column will show only matching records from both the tables as below.

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

The Inner join of above two tables on Dept_ID column will show only matching records from both the tables as below.

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









<br>

