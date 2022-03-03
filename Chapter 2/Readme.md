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

**Syntax:** ***CREATE TABLE***

```sql
CREATE TABLE TABLE_NAME (COLUMN_NAME DATATYPES[,....]); 
```

**Example:** Create a Student table with following columns
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

**Syntax:** ***DROP TABLE***

```sql
DROP TABLE table_name;
```

**Example:** Drop the Student table you just created.

```sql
DROP TABLE Student;
```



### DML - Data Manipulation Language:

DML Statements are used to work on the data within the tables or in simple words it helps manipulate data inside table/database. With the help of DML commands, we can insert, delete, change the data inside a table.

| Command  | Description                          |
|----------|--------------------------------------|
| INSERT   | Inserts the data into a table        |
| UPDATE   | Update the existing data in a table  |   
| DELETE   | Delete the data records from a table |

**Syntax:** ***INSERT***

Option 1: Provide the column names in INSERT INTO statement

```sql
INSERT INTO TABLE_NAME  (col1, col2, col3,.... col N)  
VALUES (value1, value2, value3, .... valueN);  
```

Option 2: No need to provide column names and the values will be inserted into columns as per the order they appear in table.

```sql
INSERT INTO TABLE_NAME    
VALUES (value1, value2, value3, .... valueN);
```

**Example:** Insert data into students table

```sql
INSERT INTO Student (StudendId, FirstName, LastName, Address, Mark)
VALUES (001, "Ankit", "Mittal", "Pune", 78),
       (002, "Hitesh", "Mishra", "Bangalore", 83),
       (003, "Deepak", "Singh", "Mumbai", 84),
       (004, "Ashok", "Surendran", "Pune", 77)
       (005, "Abhishek", "Jain", "Mumbai", 65);
```


### DQL - Data Query Language:

DQL statement is used to fetch the data from the database.  With the help of DQL query we can get the data from the database to perform actions or operations like analysing the data. 


| Command | Description                                 |
|---------|---------------------------------------------|
| SELECT  | Retrives data from one or more tables       |

**Syntax:** ***SELECT***

```sql
SELECT column1, column2....columnN
FROM table_name;
```

**Example:** Select FirstName, LastName and Address of all the students from Student Table

```sql
SELECT FirstName, LastName, Address
FROM Student;
```

### DCL - Data Control Language:

DCL commands are used to give rights and permissions on database system.

| Command | Description                                                                |
|---------|----------------------------------------------------------------------------|
| GRANT   | To give user access privileges to a database.                              |
| REVOKE  | To withdraw the user’s access privileges given by using the GRANT command. |



### TCL - Transaction Control Language:

TCL commands are used to control the transaction performed using DML commands to maintain database consistency.

| Command   | Description                                                                                                          |
|-----------|----------------------------------------------------------------------------------------------------------------------|
| COMMIT    | To save the data permanently after a DML command is used                                                             |
| ROLLBACK  | To get the data or restore the data to the last savepoint or last committed state                                    |
| SAVEPOINT | To save the data at a particular point temporarily, so that whenever needed can be rollback to that particular point |




