# SQL Functions Continued..

In this chapter we will continue on the SQL functions from last chapter onwards. 


In previous chapters we have already discussed Flow Control, String, Agreegate and Mathematical functins. now let's continue with the below remaining functions.

- Date & Time Functions
- Window Functions


### Date & Time Functions

[Click here](https://dev.mysql.com/doc/refman/8.0/en/date-and-time-functions.html) to get the list of all MySQL date and time functions.

| Name			| Description |
|-----------|-------------|
| CURDATE		| Returns the current date. |
| SYSDATE		| Returns the current date. |
| NOW			| Returns the current date and time at which the statement executed. |
| DATE    | Returns the DATE part out from a datetime expression. |
| TIME    | Returns the TIME part out from a datetime expression. |
| YEAR		| Return the year for a specified date |
| MONTH		| Returns an integer that represents a month of a specified date. |
| DAY			| Gets the day of the month of a specified date. |
| WEEK		| Returns a week number of a date. |
| DAYNAME		| Gets the name of a weekday for a specified date. |
| MONTHNAME		| Gets the name of the month for a specified date. |
| EXTRACT		| Extracts a part of a date. |
| DATEDIFF	| Calculates the number of days between two DATE values. |
| DATE_ADD	| Adds a time value to date value. |
| DATE_SUB	| Subtracts a time value from a date value. |


<br>


#### CURDATE

In MySQL the CURDATE() returns the current date in 'YYYY-MM-DD' format or 'YYYYMMDD' format depending on whether numeric or string is used in the function. CURRENT_DATE and CURRENT_DATE() are the synonym of CURDATE().

**Syntax**

```sql
CURDATE()
```
<br>

**Example:** Show today's date using MySQL

```sql
SELECT CURDATE();
```
<br>

**Question 1**: From payment table in Sakila DB query payment_id, amount, payment_date and today's date.

<details>
 <Summary>Click here to reveal the solution!</Summary>

```sql
SELECT payment_id, amount, payment_date, curdate()
FROM sakila.payment;
```
</details>


<br>



#### SYSDATE/NOW

SYSDATE() function is used to get the current date and time value. It returns the current date and time in YYYY-MM-DD HH:MM:SS or YYYYMMDDHHMMSS.uuuuuu format depending on the context of the function.

Similar to SYSDATE() function NOW() also returns the current date and time in YYYY-MM-DD HH:MM:SS or YYYYMMDDHHMMSS.uuuuuu format. Although there is a small difference in terms of how it return the value.  

SYSDATE() returns the time at which it executes and NOW() returns the time it began to execute.

**Syntax**

> SYSDATE
```sql
SYSDATE()
```

> SYSDATE
```sql
SYSDATE()
```

<br>

**Example:** Show current date and time using MySQL.

```sql
SELECT sysdate(), now();
```


**Example:** Since we know that NOW returns the time when the query begins the execution while SYSDATE() returns the time wen it got executed. Let's try to run this query by giving a gap of 10 seconds and see how both of these functions return the value.

```sql
SELECT 
SYSDATE(), SLEEP(10) AS '', SYSDATE(),
NOW(), SLEEP(10) AS '', NOW();
```

<br>


**Question 2**: From payment table in Sakila DB query payment_id, amount, payment_date, today's date and Current_time.

<details>
 <Summary>Click here to reveal the solution!</Summary>

```sql
ELECT payment_id, amount, payment_date, curdate(), sysdate(), now()
FROM sakila.payment;
```
</details>


<br>


#### DATE/TIME

SQL DATE() function returns the DATE part out from a datetime expression, while TIME() function returns the time part from the datetime expression.

**Syntax**

> DATE
```sql
DATE(Expression)
```

> TIME
```sql
TIME(Expression)
```
<br>

**Example:** Show payment_id, amount, date of payment and time of payment from payment table in Sakila DB.

```sql
SELECT payment_id, 
amount, 
payment_date, 
DATE(payment_date) as Payment_Date, 
TIME(payment_date) as Payment_Time
FROM sakila.payment;
```
<br>




#### YEAR/MONTH/DAY/WEEK

YEAR() returns the year for a given date. The return value is in the range of 1000 to 9999 or 0 for 'zero' date.

MONTH() returns the MONTH for the date within a range of 1 to 12 ( January to December). It Returns 0 when MONTH part for the date is 0.

DAY() returns the day of the month for a specified date. The day returned will be within the range of 1 to 31. If the given date is ‘0000-00-00’, the function will return 0. The DAYOFMONTH() is the synonym of DAY().

WEEK() returns the week number for a given date. The argument allows the user to specify whether the week starts on Sunday or Monday and whether the return value should be in the range from 0 to 53 or from 1 to 53. If no argument is included with the function, it returns the default week format.

**Syntax**

> YEAR
```sql
YEAR(DateExpression)
```

> MONTH
```sql
MONTH(DateExpression)
```

> DAY
```sql
DAY(DateExpression)
```

> WEEK
```sql
WEEK(DateExpression, Mode);
```
<br>

**Example:** Show payment_id, amount, payment_date and extract Year,Month, day and week number separately from the payment_date field from payment table in Sakila DB.

```sql
SELECT payment_id, 
amount, 
payment_date, 
YEAR(payment_date) as Payment_Year, 
MONTH(payment_date) as Payment_Month,
DAY(payment_date) as Payment_Day,
WEEK(payment_date) as Week_Number
FROM sakila.payment;
```
<br>


#### DAYNAME/MONTHNAME

DAYNAME() returns the name of the week day of a date specified in the argument.

MONTHNAME() returns the full name of the month for a given date. The return value is within the range of 1 to 12 ( January to December). It Returns NULL when month part for the date is 0 or more than 12

**Syntax**

> DAYNAME
```sql
DAYNAME(DateExpression)
```

> MONTHNAME
```sql
MONTHNAME(DateExpression)
```

<br>

**Example:** Show payment_id, amount, payment_date and show Year,Month Name, day and Weekday Name from the payment_date field from payment table in Sakila DB.

```sql
SELECT payment_id, 
amount, 
payment_date, 
YEAR(payment_date) as Payment_Year, 
MONTHNAME(payment_date) as Payment_Month,
DAY(payment_date) as Payment_Day,
DAYNAME(payment_date) as Payment_Weekday
FROM sakila.payment;
```

<br>


#### EXTRACT

EXTRACT() function in MySQL is related to a DATE and DATETIME function. It is used to extract a portion of the DATE and DATETIME values.

The EXTRACT() function requires two arguments unit and date. The unit is the interval that you want to extract from the date. The following are the valid intervals for the unit argument.
- DAY
- DAY_HOUR
- DAY_MICROSECOND
- DAY_MINUTE
- DAY_SECOND
- HOUR
- HOUR_MICROSECOND
- HOUR_MINUTE
- HOUR_SECOND
- MICROSECOND
- MINUTE
- MINUTE_MICROSECOND
- MINUTE_SECOND
- MONTH
- QUARTER
- SECOND
- SECOND_MICROSECOND
- WEEK
- YEAR
- YEAR_MONTH


**Syntax**

```sql
EXTRACT(unit FROM DateExpression)
```

<br>

**Example:** Show payment_id, amount, payment_date and extract Year, Quarter, Month, Week, day and Weekday Name from the payment_date field from payment table in Sakila DB.

```sql
SELECT payment_id, 
amount, 
payment_date, 
EXTRACT(YEAR FROM payment_date) as Payment_Year,
EXTRACT(QUARTER FROM payment_date) as Payment_Quarter, 
EXTRACT(MONTH FROM payment_date) as Payment_Month,
EXTRACT(WEEK FROM payment_date) as Payment_Week,
EXTRACT(DAY FROM payment_date) as Payment_Day,
DAYNAME(payment_date) as Payment_Weekday
FROM sakila.payment;
```
<br>




























### Window Functions

[Click here](https://dev.mysql.com/doc/refman/8.0/en/window-function-descriptions.html) to get the list of all MySQL window functions.
| Name			| Description |
|-----------|-------------|
| ROW_NUMBER()	| Number of current row within its partition |
| RANK()			| Rank of current row within its partition, with gaps |
| DENSE_RANK()	| Rank of current row within its partition, without gaps |
| FIRST_VALUE()	| Value of argument from first row of window frame |
| LAST_VALUE()	| Value of argument from last row of window frame |
| LEAD()			| Value of argument from row leading current row within partition |
| LAG()			| Value of argument from row lagging current row within partition |


<br>





