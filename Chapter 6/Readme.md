# SQL Operators & Functions

In this chapter we will learn about SQL Operators & Functions.

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
