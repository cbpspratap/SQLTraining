# SQL Commands

The standard SQL commands to interact with relational databases are CREATE, SELECT, INSERT, UPDATE,
DELETE, DROP and few more. These commands can be classified into groups based on their nature:

![image](https://user-images.githubusercontent.com/67796162/155881340-f5765cfd-7c47-4a2c-a55d-5551d570afca.png)


### DDL - Data Definition Language:

DDL statements are used to build and modify the structure of your tables and other objects in the database. In simple words these are the commands which define the structure of the table/database/schema. When you execute a DDL statement, it takes effect immediately. Below are the DDL commands with the description of the task it performs.

<br>

| Command  | Description                                                                |
|----------|----------------------------------------------------------------------------|
| CREATE   | Creates a new table, a view of a table, or other object in database        |
| ALTER    | Modifies an existing database object, such as a table                      |   
| DROP     | Deletes an entire table, a view of a table or other object in the database.|
| TRUNCATE | Deletes the data inside a table, but not the table itself.                 |
 
<br>

**Example:** Create a Student table with following columns:
- StudentID
- LastName
- FirstName
- Address
- Mark

```sql
CREATE TABLE Student (
    StudendId int,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    Mark int
);
```

### DQL - Data Query Language:

DQL statement is used to fetch the data from the database.  With the help of DQL query we can get the data from the database to perform actions or operations like analysing the data. 


| Command | Description                                 |
|---------|---------------------------------------------|
| SELECT  | Retrives data from one or more tables       |



Command Description
CREATE Creates a new table, a view of a table, or other object in database
ALTER Modifies an existing database object, such as a table.
DROP Deletes an entire table, a view of a table or other object in the database.
DML - Data Manipulation Language:
Command Description
INSERT Creates a record
UPDATE Modifies records
DELETE Deletes records
DCL - Data Control Language:
Command Description
GRANT Gives a privilege to user
REVOKE Takes back privileges granted from user
DQL - Data Query Language:
Command Description
SELECT Retrieves certain records from one or more tables
