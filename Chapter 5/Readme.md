# SQL Operators & Joins

In this chapter we will deep dive further into querying data and will learn about SQL Operators & Joins. We have already used few SQL clauses in our previous chapter like WHERE, ORDER BY and LIMIT, etc here we will use it in conjuction with SQL operators and joins to answer more specific questions.

<br>


## SQL Syntax Order


### SQL Syntax Orders

As you have already practiced in previous chapters how to query a table, here is something which will help you clear your confusion on the order in which SQL keyword are written in SQL syntax.

![image](https://user-images.githubusercontent.com/67796162/159441947-0f7b3a12-2b19-4751-9fd9-5680ba7563db.png)

<br>


### SQL Execution Order

Now when you know the order in which SQL keywords are written, lets see the order in which the SQL keywords are exectued when you ran a select query.


<img src="https://user-images.githubusercontent.com/67796162/159443940-a61b9ba5-c905-4eb4-8b22-1e091b8578b5.png" width="1000" height="756" />


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






<br>
