# SQL Functions

In this chapter we will continue on the SQL functions from last chapter onwards. 

We will use Sakila database in todays class, if you dont have sakila db available in your db then click [here](https://downloads.mysql.com/docs/sakila-db.zip) to download and follow the below steps to setup the dbin your Mysql Server. [Link](https://downloads.mysql.com/docs/sakila-db.zip)
1. Open ***sakila-schema.sql*** file and copy the entire content of the file to MySQL workbench and run it.(_this step is to create required schema_)
2. Open ***sakila-data.sql*** file and copy the entire content of the file to MySQL workbench and run it.(_this step is to insert data into the tables_)

<br>

In previous chapter we have already discussed Flow Control Functions, now let's continue with the remaining functions.


- String Functions
- Aggregate Functions
- Mathematical Functions
- Date & Time Functions
- Window Functions


### String Functions

[Click here](https://dev.mysql.com/doc/refman/8.0/en/string-functions.html) to get the list of all MySQL string functions.

| Name			| Description |
|-----------|-------------|
| CONCAT		| Concatenate two or more strings into a single string |
| LENGTH		| Get the length of a string in bytes and in characters |
| LEFT			| Get a specified number of leftmost characters from a string |
| RIGHT			| Get a specified number of rightmost characters from a string |
| LOWER			| Convert a string to lowercase |
| UPPER			| Convert a string to uppercase |
| TRIM			| Remove unwanted characters from a string |
| LTRIM			| Remove all leading spaces from a string |
| RTRIM			| Remove all trailing spaces from a string |
| SUBSTRING		| Extract a substring starting from a position with a specific length. |
| REPLACE		| Search and replace a substring in a string |

<br>

#### CONCAT

The CONCAT() function joins or adds two or more expressions together. If a numeric argument is given then it is converted to its equivalent string form.

**Syntax**

```sql
CONCAT(expression1, expression2, expression3,...)
```
<br>

**Example:** The Actor table in Sakila DB contains actor_id, first_name and last_name of the actor. Write a query to return actor_id and full name of the actor by joining the first_name and last_name.


```sql
SELECT actor_id, 
CONCAT(first_name,' ', last_name) as Full_Name
FROM sakila.actor;
```
<br>

**Question 1**: From Address table in Sakila DB query address_id, Full address and phone. Full address is the concatenation of address, address2, district,and postal_code fields.

<details>
 <Summary>Click here to reveal the solution!</Summary>

```sql
SELECT address_id, 
CONCAT(address, ' ', address2, ' ', district, ' ',postal_code) as Full_Address,
phone
FROM sakila.address;
```
</details>


<br>


#### LENGTH

The LENGTH() function returns the length of a string (in bytes).

**Syntax**

```sql
LENGTH(string)
```
<br>

**Example:** Below query returns the length of the string "An Example", which is 10 characters.


```sql
SELECT LENGTH("An Example") AS LengthOfString;
```
<br>

> **Output:** 10


**Question 2**: From Category table in Sakila DB query the name of each categories along with the length of each names.

<details>
 <Summary>Click here to reveal the solution!</Summary>

```sql
SELECT name, LENGTH(name)
FROM sakila.category;
```
</details>


<br>


#### LEFT/RIGHT Function

The LEFT() function extracts a number of characters from a string (starting from left). Similarly The RIGHT() function extracts a number of characters from a string (starting from right).

**Syntax**

> LEFT
```sql
LEFT(string, number_of_chars)
```

>RIGHT
```sql
RIGHT(string, number_of_chars)
```

<br>


**Example:** Below query returns the first 3 characters of the string "SQLTraining" as from_left and last 8 characters of the string as from_right.


```sql
SELECT LEFT("SQLTraining",3) AS from_left,
RIGHT("SQLTraining",8) AS from_right;
```
<br>

> **Output:** 

|from_left|from_right|
|---------|----------|
|SQL|Training|



**Question 3**: From Actor table in Sakila DB query the first_name, last_name and first 4 character of the last_update column as YearofUpdate.

<details>
 <Summary>Click here to reveal the solution!</Summary>

```sql
SELECT first_name, last_name,
LEFT(last_update,4) AS YEARofUpdate
FROM sakila.actor;
```
</details>


<br>







































### Aggregate Functions

Aggregate functions allow you to perform a calculation on a set of records and return a single value or summarized result set.

[Click here](https://dev.mysql.com/doc/refman/8.0/en/aggregate-functions.html) to get the list of all MySQL aggregate functions.

| Name			| Description |
|-----------|-------------|
| COUNT()		| Return a count of the number of rows returned |
| COUNT(DISTINCT)	| Return the count of a number of different values |
| SUM()	| Return the sum |
| AVG()	| Return the average value of the argument |
| MAX()	| Return the maximum value |
| MIN()	| Return the minimum value |
| STDDEV()	| Return the population standard deviation |
| VARIANCE()	| Return the population standard variance |


<br>


### Mathematical Functions

[Click here](https://dev.mysql.com/doc/refman/8.0/en/mathematical-functions.html) to get the list of all MySQL mathematical functions.

| Name			| Description |
|-----------|-------------|
| ABS()		| Return the absolute value |
| TRUNCATE()| Truncate to specified number of decimal places |
| CEIL()	| Returns the smallest integer value that is greater than or equal to the number. |
| CEILING()	| Returns the smallest integer value that is greater than or equal to the number. |
| FLOOR()	| Returns the largest integer value that is equal to or less than the number. |
| POW()		| Return the argument raised to the specified power |
| POWER()	| Return the argument raised to the specified power |
| SQRT()	| Return the square root of the argument |
| MOD()		| Return the remainder |
| PI()		| Return the value of pi |
| DEGREES()	| Convert radians to degrees |
| RADIANS()	| Return argument converted to radians |
| EXP()		| Returns e raised to the power of number (or enumber). |
| SIN()		| Return the sine of the argument |
| COS()		| Return the cosine |
| TAN()		| Return the tangent of the argument |
| LOG10()	| Return the base-10 logarithm of the argument |
| RAND()	| Return a random floating-point value |


<br>

