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


#### DATE_ADD/DATE_SUB

The DATE_ADD() function adds a time/date interval to a date and then returns the date. The ADDDATE() is the synonym of DATE_ADD().

The DATE_SUB() function subtracts a time/date interval from a date and then returns the date. The SUBDATE() is the synonym of DATE_SUB().

The unit here in the argument is same as the unit used in EXTRACT function.

**Syntax**

> DATE_ADD
```sql
DATE_ADD(DateExpression, INTERVAL value unit)
```

> DATE_SUB
```sql
DATE_SUB(DateExpression, INTERVAL value unit)
```

<br>

**Example:** Add 2 months to today's date and return as Postdate and subtract 4 days from today's date and return as Predate:

```sql
SELECT 
DATE_ADD(CURDATE(), INTERVAL 2 MONTH) as Postdate,
DATE_SUB(CURDATE(), INTERVAL 4 DAY) as Predate;
```
<br>


#### DATEDIFF

DATEDIFF() returns the number of days between two dates or datetimes. This function only calculates the date portion from each expression.

**Syntax**

```sql
DATEDIFF(DateExpression1,DateExpression2);
```
<br>

**Example:** Query the number of days since payment_date till now for each payment_id  and amount from payment table in Sakila DB.

```sql
SELECT payment_id, 
amount, 
payment_date, 
DATEDIFF(NOW(),payment_date) No_of_Days_Since_Payment
FROM sakila.payment;
```

<br>

**Question 3**: From rental table in Sakila DB query rental_id, inventory_id, customer_id, rental_date, return_date, and rental_duration. Where rental duration is the difference between return_date and rental_date.

<details>
 <Summary>Click here to reveal the solution!</Summary>

```sql
SELECT rental_id, 
inventory_id, 
customer_id, 
rental_date, 
return_date, 
datediff(return_date,rental_date) Rental_duration
FROM sakila.rental;
```
</details>


<br>

<br>


### Window Functions

A window function in MySQL used to do a calculation across a set of rows that are related to the current row. The current row is that row for which function evaluation occurs.

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


**Syntax:**

```
window_function_name(expression)   
OVER (  
    [partition_defintion]  
    [order_definition]  
)  
```

In this syntax:
- First, specify the window function name followed by an expression.
- Second, specify the OVER clause which has three possible elements: partition definition and order definition. 
- The opening and closing parentheses after the OVER clause are mandatory, even with no expression

<br>

***PARTITION Clause:*** The partition_clause breaks up the rows into chunks or partitions. Two partitions are separated by a partition boundary. The window function is performed within partitions and re-initialized when crossing the partition boundary. You can specify one or more expressions in the PARTITION BY clause. Multiple expressions are separated by commas.

The partition_clause syntax looks like the following:
```
PARTITION BY <expression>[{,<expression>...}]
```

<br>

***ORDER BY Clause:*** The ORDER BY clause specifies how the rows are ordered within a partition. It is possible to order data within a partition on multiple keys, each key is specified by an expression. Multiple expressions are also separated by commas.

The ORDER BY clause syntax looks like the following:
```
ORDER BY <expression> [ASC|DESC], [{,<expression>...}]
```

<br>

<br>

**Let's Understand Window function by below example using our student table in dpu_college db.**

1. Let's find out the ```avg``` marks of students in student table

Below SQL will return ```avg``` marks of all the students:

```sql
SELECT AVG(marks) FROM dpu_college.student;
```
![image](https://user-images.githubusercontent.com/67796162/163669349-e148b8e7-791f-4523-8ecf-2c62c25dd935.png)

2. Here you can see the GROUP BY clause allows you to apply aggregate functions to a subset of rows. 

For example, you may want to calculate the average marks of each department.

```sql
SELECT dept_id, AVG(marks)
FROM dpu_college.student
GROUP BY dept_id;
```
![image](https://user-images.githubusercontent.com/67796162/163669734-47dc5a95-fa3d-4f26-9cd3-90e6adcc5edb.png)


3. In both examples, the aggregate functions reduce the number of rows returned by the query. Like the aggregate functions with the GROUP BY clause, window functions also operate on a subset of rows but they do not reduce the number of rows returned by the query.

For example, the following query returns the marks for each student, along with average marks of the department

```sql
SELECT 
  name, 
  dept_id, 
  marks, 
  AVG(marks) OVER(PARTITION BY dept_id) as Avg_Dept_Marks
FROM dpu_college.student;
```
![image](https://user-images.githubusercontent.com/67796162/163669766-6052adff-23c1-45ec-ab48-264bbea5a69f.png)


4. In this example, the AVG() function works as a window function that operates on a set of rows defined by the contents of the OVER clause. A set of rows to which the AVG() function applies is referred to as a window.

The AVG() window function reports not only the average marks of each department as it does in the query with the GROUP BY clause, but also the result in each row.






