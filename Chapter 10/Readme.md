# The Conclusion

This is the last chapter of this SQL tutorial series, in this chapter we will see some miscellaneous topics and best practices.

Topics:
- SQL View
- Stored Procedure
- Miscellaneous
	- USE command



## SQL Views

A view is a virtual table based on the result-set of an SQL statement. It contains rows and columns, just like a real table. The fields in a view are fields from one or more real tables in the database.

It is operated similarly to the base table but does not contain any data of its own. The View and table have one main difference that the views are definitions built on top of other tables (or views). If any changes occur in the underlying table, the same changes reflected in the View also.

We can create a new view by using the CREATE VIEW and SELECT statement. SELECT statements are used to take data from the source table to make a VIEW.

**Syntax:**

```sql
CREATE [OR REPLACE] VIEW view_name AS    
SELECT columns    
FROM tables    
[WHERE conditions];  
```

**Example:** Let's create a view which contains customers complete details using the data we have in Sakila DB(i.e. customer_id, name, address, zip code, city, country, phone, email and status whether active or not).

To achieve this we will need to use below tables from sakila db to get corresponding fields:

- customer: customer_id, first_name, last_name, email, active
- address: address, postal_code, phone
- city: city
- country: country

```sql
CREATE OR REPLACE VIEW customer_details_vw AS 
	SELECT cu.customer_id AS ID,
		CONCAT(cu.first_name,' ',cu.last_name) AS 'customer name',
		a.address AS address,
		a.postal_code AS 'zip code',
		ci.city AS city,
		co.country AS country,
		a.phone AS phone,
		cu.email AS email,
		IF(cu.active,'active','') AS status
	FROM customer cu 
	JOIN address a ON cu.address_id = a.address_id
	JOIN city ci ON a.city_id = ci.city_id
	JOIN country co ON ci.country_id = co.country_id;
```
<br>

**Benefits of using Views**
- Simplify complex business logics: view helps to simplify the complex business logic written in the SQL queries. Instead of executing the same complex query multiple times, you can create a view from it. This View can be referenced by using a simple SELECT query.
- Improves data security: We can use views to display user-specific contents, this improves the security as user can be restricted from using source table with lot many information which may not be relevant.
- Reduce data distraction: Views do not show the irrelevant column hence they reduce data distraction.
- Preserves the appearance of original table structure: A view can preserve the appearance of the original table structure to minimize disruption to other applications.

<br>

## Stored Procedure

A Stored Procedure is a collection of pre-compiled SQL statements stored inside the database. It is a subroutine or a subprogram in the regular computing language. A stored procedure has a name, a parameter list, and SQL statement(s).

The stored procedure is defined by wraping a SQL statements within the CREATE PROCEDURE statement. The stored procedure may contain a conditional statement like IF or CASE or the Loops. The stored procedure can also execute another stored procedure or a function that modularizes the code.

In MySQL, stored procedure execution is called "calling", and so the statement to execute a stored procedure is simply ***CALL***. CALL takes the name of the stored procedure and any parameters that need to be passed on to it. 

**Syntax:** _CREATE PROCEDURE_
```
CREATE PROCEDURE procedure_name ([parameter_1], [parameter_2], [parameter_3],.. )
BEGIN
SQL Queries..
END
```

In the syntax above:
1. The name of the procedure must be specified after the CREATE PROCEDURE keyword
2. After the name of the procedure, the list of parameters should be specified in the parenthesis. The parameter list must be comma-separated
3. The SQL Queries and code must be written between BEGIN and END keywords

**Syntax:** _CALL PROCEDURE_
```
CALL procedure_name(@parameter1, @parameter2);
```

In the syntax above:
1. The name of the procedure must be specified after the CALL keyword
2. After the name of the procedure, the list of parameters should be specified in the parenthesis. The parameter list must be prefixed with @ and should be comma-separated.

**Example:**

Let's create a stored procedure, which will take film_id as input and will return all the details related to the film. In this example let's try to get the details of film with film_id '9'.

**1.** ***Create Procedure:***

```sql
DELIMITER //

CREATE PROCEDURE sp_GetMovies(sp_film_id int)
BEGIN
    SELECT *
    FROM sakila.film
    WHERE film_id=sp_film_id;
END //

DELIMITER ;
```


**1.** ***Call Procedure:***

```sql
CALL sp_GetMovies(9);
```










