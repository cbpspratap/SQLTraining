# SQL Functions

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


### Date & Time Functions

[Click here](https://dev.mysql.com/doc/refman/8.0/en/date-and-time-functions.html) to get the list of all MySQL date and time functions.

| Name			| Description |
|-----------|-------------|
| CURDATE		| Returns the current date. |
| SYSDATE		| Returns the current date. |
| NOW			| Returns the current date and time at which the statement executed. |
| YEAR		| Return the year for a specified date |
| MONTH		| Returns an integer that represents a month of a specified date. |
| WEEK		| Returns a week number of a date. |
| DAY			| Gets the day of the month of a specified date. |
| DAYNAME		| Gets the name of a weekday for a specified date. |
| EXTRACT		| Extracts a part of a date. |
| DATEDIFF	| Calculates the number of days between two DATE values. |
| DATE_ADD	| Adds a time value to date value. |
| DATE_SUB	| Subtracts a time value from a date value. |


<br>





