# Subqueries, CTE & Temp Table





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


