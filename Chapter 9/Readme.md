# Subquery, CTE & Temporary Table

In previous chapters we learnt how to join multiple tables, use functions to perform specific task and agregate data. Today we will dive deep into understanding and querying tables by nesting them. 

There are many a times when we want to use the output of current query to use again to further write query on top of it. That's when Subquery, CTE or Temporary Table comes in picture, these functions keep the output of current query in memory temporarly to be used in another query. Let's go and learn each of these and use it in our examples.

<br>


## Subquery

A subquery is a query nested within another query and embedded with SELECT, INSERT, UPDATE or DELETE statement. Also, a subquery can be nested within another subquery.

A subquery can be used anywhere that expression like in "A SELECT clause" or "A FROM clause" or "A WHERE clause", and it must be closed in parentheses.

A MySQL subquery is called an inner query while the query that contains the subquery is called an outer query.

<img src="https://user-images.githubusercontent.com/67796162/163706175-42b6f489-0a5c-4f04-888f-b4983bf4f7fe.png" width="800" height="371" />



















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


