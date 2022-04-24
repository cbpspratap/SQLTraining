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










