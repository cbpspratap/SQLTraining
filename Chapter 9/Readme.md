# Subquery, CTE & Temporary Table

In previous chapters we learnt how to join multiple tables, use functions to perform specific task and agregate data. Today we will dive deep into understanding and querying tables by nesting them. 

There are many a times when we want to use the output of current query to use again to further write query on top of it. That's when Subquery, CTE or Temporary Table comes in picture, these functions keep the output of current query in memory temporarly to be used in another query. Let's go and learn each of these and use it in our examples.

<br>


## Subquery

A subquery is a query nested within another query and embedded with SELECT, INSERT, UPDATE or DELETE statement. Also, a subquery can be nested within another subquery.

A MySQL subquery is called an inner query while the query that contains the subquery is called an outer query and the subquery must be closed in parentheses.

<img src="https://user-images.githubusercontent.com/67796162/163706376-25254fc6-e262-4cb3-87e7-cfc023b8b253.png" width="800" height="371" />

A subquery may occur in:
- A WHERE clause
- A FROM clause
- A SELECT clause

<br>

Let's use below two tables(**employee and department**) to understand subquery.

**EMPLOYEE:** _sample data_

| EMPLOYEE_ID | FIRST_NAME  | LAST_NAME   | EMAIL    | PHONE_NUMBER       | HIRE_DATE  | JOB_ID     | SALARY   | COMMISSION_PCT | MANAGER_ID | DEPARTMENT_ID |
|-------------|-------------|-------------|----------|--------------------|------------|------------|----------|----------------|------------|---------------|
|         100 | Steven      | King        | SKING    | 515.123.4567       | 2003-06-17 | AD_PRES    | 24000.00 |           0.00 |          0 |            90 |
|         101 | Neena       | Kochhar     | NKOCHHAR | 515.123.4568       | 2005-09-21 | AD_VP      | 17000.00 |           0.00 |        100 |            90 |
|         102 | Lex         | De Haan     | LDEHAAN  | 515.123.4569       | 2001-01-13 | AD_VP      | 17000.00 |           0.00 |        100 |            90 |
|         103 | Alexander   | Hunold      | AHUNOLD  | 590.423.4567       | 2006-01-03 | IT_PROG    |  9000.00 |           0.00 |        102 |            60 |
|         104 | Bruce       | Ernst       | BERNST   | 590.423.4568       | 2007-05-21 | IT_PROG    |  6000.00 |           0.00 |        103 |            60 |
|         105 | David       | Austin      | DAUSTIN  | 590.423.4569       | 2005-06-25 | IT_PROG    |  4800.00 |           0.00 |        103 |            60 |

**DEPARTMENT:** _sample data_

| DEPARTMENT_ID | DEPARTMENT_NAME      | MANAGER_ID | LOCATION_ID |
|---------------|----------------------|------------|-------------|
|            10 | Administration       |        200 |        1700 |
|            20 | Marketing            |        201 |        1800 |
|            30 | Purchasing           |        114 |        1700 |
|            40 | Human Resources      |        203 |        2400 |
|            50 | Shipping             |        121 |        1500 |
|            60 | IT                   |        103 |        1400 |
|            70 | Public Relations     |        204 |        2700 |

<br>


### Subquery in WHERE Clause

Whenever you need to filter data which is not available directly in the tables in those cases you may use Subquery to identify the data point you want to filter and use in where clause.

**Example 1:** Using the above employee table, you need to find those employees who get higher salary than the employee whose ID is 102.

Click [here](https://www.db-fiddle.com/f/jd9fQokX2RcnLwJeGvYoQQ/1) to go to db-fiddle to access this dataset.

```sql
SELECT * 
FROM employee
WHERE salary > (SELECT salary FROM employee
                WHERE employee_id=102);
```

Here,
- First, we have identified the salary of employee with employee_id 102 in the subquery, which return single value output
- secondly, We have used the number from subquery in where clause to filter only those employees data for whom salary is more than the value in subquery.

**Example 2:** Using the above employee and department table, you need to find those employees who earn more than average salary and who work in 'IT' departments..

Click [here](https://www.db-fiddle.com/f/jd9fQokX2RcnLwJeGvYoQQ/1) to go to db-fiddle to access this dataset.


```sql
SELECT *
FROM employee e
INNER JOIN department d ON e.department_id=d.department_id
WHERE salary> (SELECT AVG(salary) 
               FROM employee)
AND d.department_name='IT';
```

<br>


### Subquery in FROM Clause

When you want to query the output of another query, in that case you can use the first query in from clause as subquery/inner query which basically will work like source table for outer query.

**Example 3:** Using the above employee and department table, find the maximum average salary of departments and Maximum salary of all the employees.

Click [here](https://www.db-fiddle.com/f/jd9fQokX2RcnLwJeGvYoQQ/1) to go to db-fiddle to access this dataset.

```sql
SELECT MAX(Avg_salary), 
MAX(max_salary)
FROM (SELECT d.department_name, 
     	AVG(e.salary) Avg_salary, 
     	MAX(e.salary) Max_salary
    	FROM employee e
    	INNER JOIN department d ON e.department_id=d.department_id
    	GROUP BY d.department_name) emp;
```

<br>



### Subquery in SELECT Clause

When you want to create a column in your query but the column has to be queried saperately either from same table or anothet table. 

**Example 3:** Using the above employee table, find the first_name, last_name, salary, average salary and maximum salary of all the employees.

Click [here](https://www.db-fiddle.com/f/jd9fQokX2RcnLwJeGvYoQQ/1) to go to db-fiddle to access this dataset.

```sql
SELECT first_name, 
last_name, 
salary, 
(SELECT MAX(salary) FROM employee) as Max_salary,
(SELECT AVG(salary) FROM employee) as Avg_salary
FROM employee;
```



























**Question 4**: Use Sakila DB to query rental_id, inventory_id, film_name, customer name, staff name, rental_date, return_date and rental_duration. 

**_Hint:_** You need to join multiple tables to get the film name, customer name and staff name.

<details>
 <Summary>Click here to reveal the solution!</Summary>

```sql
SELECT 
r.rental_id, 
r.inventory_id, 
f.title as film_name,
r.customer_id, 
CONCAT(c.first_name, ' ', c.last_name) as customer_name,
CONCAT(s.first_name, ' ', s.last_name) as staff_name,
r.rental_date, 
r.return_date, 
DATEDIFF(r.return_date,r.rental_date) days_rented
FROM sakila.rental r
LEFT JOIN sakila.inventory i ON r.inventory_id=i.inventory_id
LEFT JOIN sakila.film_text f ON i.film_id=f.film_id
LEFT JOIN sakila.customer c ON r.customer_id=c.customer_id
LEFT JOIN sakila.staff s ON r.staff_id=s.staff_id;
```
</details>


