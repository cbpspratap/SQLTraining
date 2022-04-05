# SQL Operators & Functions

In this chapter we will learn about SQL Operators and Functions which can be used to query the table along with calculations and manipulation in the data while querying it using Select Statement. These are very useful for our day to day operations in SQL.

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
- Control Flow Functions and Expressions
- String Functions
- Aggregate Functions
- Math/Numeric Functions
- Date Functions
- Window Functions


### Control Flow Functions and Expressions

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

