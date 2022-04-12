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


#### LOWER/UPPER Function

The LOWER() function accepts a string argument and returns the lowercase version of that string. UPPER() functions also accepts a string argument although it returns the uppercase version of that string.


**Syntax**

> LOWER
```sql
LOWER(string)
```

>Upper
```sql
UPPER(string)
```
**Example:** In below example you can see email is converted to Upper and Lower case.

```sql
SELECT email, UPPER(email), LOWER(email)
FROM sakila.customer;
```

<br>


#### LTRIM/RTRIM Function

LTRIM() function is used to remove the leading spaces from a string similarly RTRIM() function is used to remove trailing spaces from a string.


**Syntax**

> LTRIM
```sql
LTRIM(string)
```

>RTRIM
```sql
RTRIM(string)
```
**Example 1:** In below example you can see the leading spaces are removed after using LTRIM.

```sql
SELECT LTRIM('               Learn SQL the easy way!              ') AS TrimmedString;
```

**Example 2:** In below example you can see the trailing spaces are removed after using RTRIM.

```sql
SELECT RTRIM('               Learn SQL the easy way!              ') AS TrimmedString;
```

<br>


#### TRIM Function

TRIM() function is used for data clean up purpose. It is used to remove the leading and trailing spaces from a string.

**Syntax**

```sql
TRIM(string)
```

**Example:** In below example you can see extra spaces before and after the string is removed.

```sql
SELECT TRIM('  Learn SQL the easy way!    ') AS TrimmedString;
```

<br>


#### SUBSTRING/SUBSTR Function

The SUBSTRING() or SUBSTR() functions are same and it is used to extracts a substring from a string (starting at any position).

**Syntax**

```sql
SUBSTRING(string, start, length)
```

**Example 1:** Using below example you can extract 5 characters of the string starting from position 1.

```sql
SELECT SUBSTRING('Learn SQL the easy way!',1,5) AS SubString;
```

**Example 2:** Using below example you can extract 10 characters starting from position 3 of description column in sakila.film_text table 

```sql
SELECT description, SUBSTR(description, 3, 10) Example
FROM sakila.film_text;
```

<br>



#### REPLACE Function

The REPLACE() function replaces all occurrences of a substring within a string, with a new substring.
***Note:*** This function performs a case-sensitive replacement.

**Syntax**

```sql
REPLACE(string, from_string, new_string)
```

**Example 1:** Using below example you can all 'e' with 'p' in the string.

```sql
SELECT REPLACE('Learn SQL the easy way!', 'e','p') example;
```

**Example 2:** Using the below example you can all the occurances of 'A' with 'The' in the string. You can also notice that it is case sensitive and replacing only the capital 'A'. 

```sql
SELECT description, Replace(description, 'A', 'The') Example
FROM sakila.film_text;
```

<br>

<br>


### Aggregate Functions

Aggregate functions allow you to perform a calculation on a set of records and return a single value or summarized result set. When using Aggregate function in select statement along with other non-aggregated fields we need to use GROUP BY on the remaining non-aggregated fields

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

#### COUNT/COUNT(DISTINCT) Function

The COUNT() function returns the number of rows that matches a specified criterion. Similarly COUNT(DISTINCT) also returns the number of rows but only the unique/distinct rows.


**Syntax**

```sql
SELECT COUNT(column_name)
FROM table_name
WHERE condition;
```

**Example 1:** Below example counts the numer of records in actor table within sakila db.

```sql
SELECT COUNT(*) 
FROM sakila.actor;
```

**Example 2:** Below example counts the unique last_name in actor table within sakila db. 

```sql
SELECT count(distinct last_name)
FROM sakila.actor;
```

<br>


#### SUM/AVG Function

The SUM() function returns the total sum of a numeric column, while AVG() function returns the average of the numeric column.

**Syntax**

```sql
SELECT SUM/AVG(column_name)
FROM table_name
WHERE condition;
```

**Example 1:** Below example sums the amount of each payment to return total payments from payment table within sakila db.

```sql
SELECT SUM(amount) Total_amount
FROM sakila.payment;
```

**Example 2:** Below example returns the average payment amount handeled by each staff_id from payment table within sakila db.

```sql
SELECT staff_id, AVG(amount) Avg_Amount
FROM sakila.payment
GROUP BY staff_id;
```

<br>


#### MAX/MIN Function

The MAX() function returns the largest value from the specified column while the MIN() function returns the smallest value from the specified column. 

**Syntax**

```sql
SELECT MAX/MIN(column_name)
FROM table_name
WHERE condition;
```

**Example:** Below example finds the maximum and minimum payment amount from payment table within sakila db.

```sql
SELECT MAX(amount) MAX_Amount, MIN(amount) MIN_Amount
FROM sakila.payment;
```


<br>


#### STDDEV Function

MySQL STDDEV() function returns the population standard deviation of expression. The STDDEV() function is used to calculate statistical information for a specified numeric field in a query. It returns NULL if no matching rows found.

**Syntax**

```sql
STDDEV(expression)
```

**Example:** Click [here](https://www.db-fiddle.com/f/8sw46GWkSgmzGtyZAXQR1/0) to open the example in db-fiddle and find the standard deviation of total_cost.

```sql
SELECT STDDEV(total_cost)             
FROM purchase;
```


<br>


#### VARIANCE Function

VARIANCE() function returns the population standard variance of an expression.

**Syntax**

```sql
VARIANCE(expression)
```

**Example:** Click [here](https://www.db-fiddle.com/f/8sw46GWkSgmzGtyZAXQR1/0) to open the example in db-fiddle and find the variance of total_cost.

```sql
SELECT VARIANCE(total_cost)             
FROM purchase;
```


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


#### ABS Function

The ABS() function returns the absolute (positive) value of a number.

**Syntax**

```sql
ABS(number)
```

**Example:** Below example returns the absolute value 273.15

```sql
SELECT ABS(−273.15);
```


<br>



#### TRUNCATE Function

The TRUNCATE() function truncates a number to the specified number of decimal places.

**Syntax**

```sql
TRUNCATE(number, decimals)
```

**Example:** Below example truncates the value of pi to 2 decimal places and return.

```sql
SELECT TRUNCATE(3.1415929, 2);
```


<br>



#### CEIL/CEILING Function

The CEIL() and CEILING() functions are same, both function returns the smallest integer value that is bigger than or equal to a number.


**Syntax**

> CEIL()
```sql
CEIL(number)
```

>CEILING()
```sql
CEILING(number)
```

**Example:** Below example returns the smallest integer larger than the pi value which is 4.

```sql
SELECT CEIL(3.1415929);
```


<br>



#### FLOOR Function

The FLOOR() function returns the largest integer value that is smaller than or equal to a number.

**Syntax**

```sql
FLOOR(number)
```

**Example:** Below example returns the largest integer smaller than the pi value which is 3.

```sql
SELECT CEIL(3.1415929);
```


<br>


#### POW/POWER Function

The POW() and POWER() function are same both the function returns the value of a number raised to the power of another number.

**Syntax**

>POW()
```sql
POW(x, y)
```

>POWER()
```sql
POWER(x, y)
```

**Example:** Below example returns the cube of 3 which is 27.

```sql
SELECT POW(3,3);
```


<br>



#### SQRT Function

The SQRT() function returns the square root of a number.

**Syntax**

```sql
SQRT(number)
```


**Example:** Below example returns the square root of 64 which is 8.

```sql
SELECT SQRT(64);
```


<br>


#### RAND Function

The RAND() function returns a random number between 0 (inclusive) and 1 (exclusive). Seed is optional in below syntax, if seed is specified, it returns a repeatable sequence of random numbers. If no seed is specified, it returns a completely random number

**Syntax**

```sql
RAND(seed)
```

To create a random decimal number between two values (range), you can use the following formula:

```sql
SELECT RAND()*(b-a)+a;
```

Where a is the smallest number and b is the largest number that you want to generate a random number for.


**Example 1:** In below example we are querying payment table from sakila db to return payment_id, amount and a random number.

```sql
SELECT payment_id, amount, rand(5)
FROM sakila.payment;
```


**Example 2:** Lets use student table from dpu_college db and create a column 'rating' with random number between 5 and 10 with 1 decimal places. Multiply rating column with marks and call it as overall_marks. Return Name, Dept_id, marks, rating, Overall_marks

```sql
SELECT Name, Dept_id, Marks, 
TRUNCATE(rand()*(10-5)+5,1) as Rating, 
marks*TRUNCATE(rand()*(10-5)+5,1) as Overall_marks
FROM dpu_college.student;
```

<br>


