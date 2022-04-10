# SQL Operators & Functions

In this chapter we will learn about SQL Operators and Functions which can be used to query the table along with calculations and manipulation in the data while querying it using Select Statement. These are very useful for our day to day operations in SQL.

[Click here](https://dev.mysql.com/doc/refman/8.0/en/built-in-function-reference.html) to get the list of all Built-In Operators and Functions from MySQL Reference Manual.

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

## SQL Functions

SQL can do much more than just store and retrieve data can, it can also perform manipulations on the data before retrieving it. That’s where SQL Functions come in. Functions are built-in pieces of code that perform some operations and then return a result. Some of the functions accept parameters toperform required operations while others may not.


The built-in SQL functions are divided in below major categories, we will go through the some of the important ones from each categories.
- Flow Control Functions and Expressions
- String Functions
- Aggregate Functions
- Mathematical Functions
- Date & Time Functions
- Window Functions


### Flow Control Functions and Expressions

[Click here](https://dev.mysql.com/doc/refman/8.0/en/flow-control-functions.html) to get the list of all MySQL flow control functions.

| Name | Description |
|------|-------------|
| CASE | Returns the corresponding result in THEN branch if the condition in the WHEN branch is satisfied, otherwise, return the result in the ELSE branch. |
| IF | Returns a value based on a given condition. |
| IFNULL | Returns the first argument if it is not NULL , otherwise returns the second argument. |
| NULLIF | Returns NULL if the first argument is equal to the second argument, otherwise, returns the first argument. |
| COALESCE | Returns the first non-NULL arguments, which is very handy for substitution ofNULL. |
| ISNULL | Returns 1(TRUE) if the argument is NULL, otherwise, return zero(FALSE). |

<br>

#### CASE Function/Statement

The CASE function/statement has the functionality of an IF-THEN-ELSE statement by allowing you to evaluate conditions and return a value when the first condition is met.


**Syntax**

```sql
CASE
   WHEN condition_1 THEN result_1
   WHEN condition_2 THEN result_2
   ...
   WHEN condition_n THEN result_n
   ELSE result
END
```
<br>

**Example:** Query Name, Marks and Marks Category from student table, with Marks Category defined as marks greater then 80 as 'High Marks', between 60 to 80 as 'Average Marks' and below 60 as 'Low Marks'.


```sql
SELECT NAME, MARKS,
CASE 
	WHEN MARKS >= 80 THEN 'High Marks'
	WHEN MARKS >= 60 AND MARKS < 80 THEN 'Average Marks'
	WHEN MARKS < 60 THEN 'Low Marks'
	ELSE 'No Data'
END AS Marks_Category
FROM dpu_college.student;
```
<br>

**Question 1**: Query Name, Dept_ID, and Dept_Group of students where Dept_ID F & B are 'Group 1', Dept_ID H & I are 'Group 2', Dept_ID M, P & D are 'Group 3' anything else is 'No Group and order the data by Dept_group.

<details>
 <Summary>Click here to reveal the solution!</Summary>

```sql
SELECT Name, DEPT_ID,
CASE 
	 WHEN DEPT_ID IN( 'F', 'B') THEN 'Group 1'
    WHEN DEPT_ID IN( 'H', 'I') THEN 'Group 2'
    WHEN DEPT_ID IN( 'M', 'P', 'D') THEN 'Group 3'
    ELSE 'No Group'
END AS Dept_Group
FROM dpu_college.student
ORDER BY Dept_Group;
```
</details>


<br>


#### IF Function

The IF() function is used for validating a condition. The IF() function returns a value if the condition is TRUE and another value if the condition is FALSE.


**Syntax**

```sql
IF(condition, true_value, false_value)
```
<br>

**Example:** Query Name, Marks and Result from student table, with Result defined as marks greater then 50 as 'Pass' othewise 'Fail'.


```sql
SELECT NAME, 
MARKS, 
IF(MARKS>50, 'Pass', 'Fail') AS Result
FROM dpu_college.student;
```
<br>

**Question 2**: Query Name, Dept_ID, and Dept_Group of students where Dept_ID F, B & H are 'Group 1', Dept_ID M, P, D & I are 'Group 2' anything else is 'No Group and order the data by Dept_group.

<details>
 <Summary>Click here to reveal the solution!</Summary>

```sql
SELECT Name, DEPT_ID,
IF(DEPT_ID IN( 'F', 'B', 'H'), 'Group 1', 
		IF(DEPT_ID IN( 'M', 'P', 'D', 'I'), 'Group 2', 
				'No Group')) AS Dept_Group
FROM dpu_college.student
ORDER BY Dept_Group;
```
</details>


<br>


#### IFNULL Function

The IFNULL function returns an alternate value if an expression or the value in the field is NULL.

**Syntax**

```sql
IFNULL( expression, value_if_null )
```
<br>

**Example:** Query Name, Marks from student table and return any Marks with Null value as 0.


```sql
SELECT NAME, 
IFNULL(MARKS, 0) AS MARKS
FROM dpu_college.student;
```
<br>

**Question 3**: Query Name, Dept from Faculty table with Dept_ID Null called as 'Admin'.

<details>
 <Summary>Click here to reveal the solution!</Summary>

```sql
SELECT NAME, 
IFNULL(DEPT_ID, 'Admin') as Dept
FROM dpu_college.faculty;
```
</details>


<br>


#### NULLIF Function

The NULLIF function returns NULL if the first argument is equal to the second argument, otherwise it returns the first argument.

**Syntax**

```sql
NULLIF( expression1, expression2 )
```
<br>

**Example:** Consider below example of student table, in which after exam paper recheck some of the students marks got updated and now we need to show only the updated marks in the result sheet. Write a query to find the ID, NAME, DEPT and Updated marks of those students whose marks got updated. 

| ID | NAME | DEPT |	Org_Marks | Updated_Marks |
|----|------|---------|-----------|---------------|
| 1	| Hitesh Mishra	| F	| 68	| 72 |
| 2	| Pari Sharma	| H	| 96	| 96 |
| 3	| Ankit Gupta	| M	| 74	| 74 |
| 4	| Sanket Kumar	| I	| 54	| 64 |
| 5	| Priti Singh	| B	| 93	| 93 |


```sql
SELECT ID, NAME, DEPT, 
NULLIF( Updated_Marks, Org_Marks) AS Update_Marks
FROM student;
```


<br>


#### COALESCE Function

The COALESCE() function is used to return the first non-null value in a specified series of expressions. If this function evaluates all values of the list are null, or it does not find any non-null value, then it returns NULL.

**Syntax**

```sql
COALESCE( expression1, expression2, ... expression_n )
```
<br>

**Example:** In below example you can see it will evaluate to Apple, because its the first non-null value in the COALESCE function.

```sql
SELECT COALESCE(NULL, NULL, 'Apple', 'Orange', NULL);   
```

> **Output:** Apple

<br>

**Question 3**: We have a Employee table below, you need to query Emp_id, Name, Designation and Contact Number. Contact Number should be Mobile, in case Mobile is not avaiable then office, if office is also not available then Phone otherwise print Not Available.

Click [here](https://www.db-fiddle.com/f/cMYx31HPaxu2iWVjznAcSd/0) to run the query in db-fiddle

| Emp_id | Name    | Designation | Phone       | Mobile      | Office      |
| ------ | ------- | ----------- | ----------- | ----------- | ----------- |
| 1      | Peter   | Engineer    | 101-101-101 | 111-111-111 | 100-100-100 |
| 2      | Joseph  | Developer   | 201-201-201 | 222-222-222 |             |
| 3      | John    | Leader      | 301-301-301 |             | 300-300-300 |
| 4      | Stephen | Scientist   | 401-401-401 | 444-444-444 | 400-400-400 |
| 5      | Suzi    | Carpenter   |             | 555-555-555 | 500-500-500 |
| 6      | Bob     | Actor       | 601-601-601 | 666-666-666 | 600-600-600 |
| 7      | Donald  | Engineer    |             |             |             |

<details>
 <Summary>Click here to reveal the solution!</Summary>

```sql
SELECT Emp_id, Name, Designation, 
COALESCE(mobile, Office, Phone, 'Not Available') as Contact_Number
FROM employee; 
```
</details>


<br>



