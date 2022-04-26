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

**Example 4:** Using the student table in dpu_college db, find the maximum average marks of departments and Maximum marks of all the students.

```sql
SELECT MAX(max_marks), MAX(Avg_Dept_Marks)
FROM(SELECT 
		DEPT_ID, 
		MAX(MARKS) max_marks, 
		AVG(MARKS) Avg_Dept_Marks
	FROM DPU_COLLEGE.STUDENT
    GROUP BY DEPT_ID) stdnt;
```

<br>


### Subquery in SELECT Clause

When you want to create a column in your query but the column has to be queried saperately either from same table or anothet table. 

**Example 5:** Using the above employee table, find the first_name, last_name, salary, average salary and maximum salary of all the employees.

Click [here](https://www.db-fiddle.com/f/jd9fQokX2RcnLwJeGvYoQQ/1) to go to db-fiddle to access this dataset.

```sql
SELECT first_name, 
last_name, 
salary, 
(SELECT MAX(salary) FROM employee) as Max_salary,
(SELECT AVG(salary) FROM employee) as Avg_salary
FROM employee;
```


<br>


### Correlated Subqueries

A correlated subquery in MySQL is a subquery that depends on the outer query. It uses the data from the outer query or contains a reference to a parent query that also appears in the outer query. MySQL evaluates it once from each row in the outer query.


<br>
<br>

## CTE(Common Table Expression)

A common table expression (called CTE for short) is a query which we create before writing the main query. Then, we can simply use it as a regular table inside our code. 

This is similar to ***Subquery in From Clause***, where the main query runs of top of the result of subquery. In CTE instead of inner subquery you can use the temporary table expression which is created using WITH expression.

We can define CTEs by adding a ***WITH*** clause directly before SELECT, INSERT, UPDATE, DELETE, or MERGE statement. The WITH clause can include one or more CTEs separated by commas.

**Syntax:**

```sql
WITH
expression_name AS
(CTE query definition)

SELECT expression_A, expression_B, ...
FROM expression_name;
```

<br>

Let's write a query for the same question in Example 4 using CTE.

**Example 6:** Using the student table in dpu_college db, find the maximum average marks of departments and Maximum marks of all the students. 

```sql
WITH STDNT AS(
		SELECT 
		DEPT_ID, 
		MAX(MARKS) max_marks, 
		AVG(MARKS) Avg_Dept_Marks
		FROM DPU_COLLEGE.STUDENT
        GROUP BY DEPT_ID)

SELECT MAX(max_marks), MAX(Avg_Dept_Marks)
FROM STDNT;
```



**Example 7:** Using the student table in dpu_college db, write a query to find the name and marks of highest scorer from each department. 

```sql
WITH CTE AS(
SELECT dept_id, MAX(marks) max_marks
FROM dpu_college.student
GROUP BY dept_id
)
SELECT s.name, c.dept_id, max_marks as marks
FROM dpu_college.student s
INNER JOIN CTE c ON s.dept_id=c.dept_id AND s.marks=c.max_marks;
```


## Temporary Table

A temporary table is a special type of table that allows you to store a temporary result set, which you can reuse several times in a single session. The most important thing that should be known for temporary tables is that they will be deleted when the current client session terminates.

You can use Temporary tables in multiple use cases, it can be used similar to normal table or it can be used the way we use CTE. The major difference between CTE and Temporary table is that the scope of CTE is limited to the query in which CTE is used, while Temporary table can be reused in multiple tables till the time session is not closed.

**Syntax:**

> Option 1: to Create new table
```sql
CREATE TEMPORARY TABLE table_name (  
   column_1, column_2, ..., table_constraints  
);  
```

> Option 2: To copy the structure of exisitng table
```sql
CREATE TEMPORARY TABLE temp_table_name as (  
   SELECT columns_1, Column_2,.
   FROM original_table_name
   LIMIT 0);  
```

> Option 3: To create a table with data using another query
```sql
CREATE TEMPORARY TABLE temp_table_name as (  
   SELECT columns_1, Column_2,.
   FROM original_table_name
   );  
```

Let's use the question in example 7 and rewrite the query using Temporary table instead of CTE

**Example 8:** Using the student table in dpu_college db, write a query to find the name and marks of highest scorer from each department. 

```sql
CREATE TEMPORARY TABLE dept_marks AS(
SELECT dept_id, MAX(marks) max_marks
FROM dpu_college.student
GROUP BY dept_id);

SELECT s.name, d.dept_id, max_marks as marks
FROM dpu_college.student s
INNER JOIN dept_marks d ON s.dept_id=d.dept_id AND s.marks=d.max_marks;
```






<br>

**Bonus Question 1**: Use Sakila DB to query rental_id, inventory_id, film_name, customer name, staff name, rental_date, return_date and rental_duration. 

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

<br>

**Bonus Question 2**: Use Sakila DB to find the name of movie for which the rental cost was highest and show the full name of all the customers who rented it.

**_Hint:_** 
1. In a subquery first find out the rental cost(_Rental Cost= Amount/No of times rented_) along with the movie name of each movies and rank by rental cost
2. Find the movie name which has highest rental cost
3. Find the name of customers and rental details by applying filter on movie name.

<details>
 <Summary>Click here to reveal the solution!</Summary>

```sql
SELECT f.title, 
	c.first_name, 
	c.last_name, 
	r.rental_date, 
	r.return_date
FROM sakila.rental r
LEFT JOIN sakila.customer c ON c.customer_id=r.customer_id
LEFT JOIN sakila.inventory i ON r.inventory_id=i.inventory_id
LEFT JOIN sakila.film_text f ON i.film_id=f.film_id
WHERE f.title IN( 
	SELECT Film FROM(
		SELECT 
		f.title Film, 
		COUNT(r.rental_id) No_of_Times_Rented,
		SUM(p.amount) Amount,
		SUM(p.amount)/COUNT(r.rental_id) Rental_cost,
		DENSE_RANK() OVER(ORDER BY sum(p.amount)/count(r.rental_id) DESC) RNK
		FROM sakila.payment p
		LEFT JOIN sakila.rental r ON P.rental_id=r.rental_id
		LEFT JOIN sakila.inventory i ON r.inventory_id=i.inventory_id
		LEFT JOIN sakila.film_text f ON i.film_id=f.film_id
		GROUP BY f.title ) a
		WHERE RNK=1);
```
</details>











