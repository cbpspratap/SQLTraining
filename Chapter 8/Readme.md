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





