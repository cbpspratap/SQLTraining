# Run SQL Statements

In this chapter we will get into a bit of hands-on SQL coding, we will write basic SQL statements and will observe the output or the result and then will try to understand the working of a SQL statement.

We will take a use case where we will create a dpu_college database and within this database we will create 3 tables student, dept and faculty.

  ***DB:*** *dpu_college*

  ***Table:*** *student, dept, faculty*
 
 **1. student**
 <br>
| ID |	NAME | DEPT_ID | MARKS |
|----|-------|---------|-------|
| 1	 | Hitesh Mishra	| F	| 68 |
| 2	 | Pari Sharma	 	| H	| 96 |
| 3	 | Ankit Gupta	 	| M	| 74 |
| 4	 | Sanket Kumar	 	| F	| 54 |
| 5	 | Priti Singh	 	| M	| 93 |
| 6	 | Ganesh Murthy	| I	| 93 |
| 7	 | Hari Prasad	 	| H	| 68 |
| 8	 | Alka Desai	 	| F	| 56 |
| 9	 | Shashwat Jain	| H	| 76 |
| 10 | Nagma Khan	 	| F	| 71 |
| 11 | Salma Siddqui	| M	| 51 |
| 12 | Eric Brown	 	| H	| 61 |
| 13 | Jagan Mohan	 	| H	| 78 |
| 14 | Sardar Khan	 	| M	| 76 |
| 15 | Deepak Singh	 	| I	| 66 |
| 16 | Ashok Kumar	 	| B	| 89 |
| 17 | Mayuri Shetty	| M	| 97 |
| 18 | Vijay Garg	 	| M	| 54 |
| 19 | Priyanka Aahuja 	| F	| 82 |
| 20 | Anakhdeep Kaur	| B	| 62 |


**2. dept**

| ID |	NAME |
|----|-------|
| F	| Finance   |
| H	| HR        |
| M	| Marketing |
| I	| IB        |
| B	| BA        |

**3. faculty**

| ID |	NAME | DEPT_ID |
|----|-------|---------|
| f1 |	Vishnu Kissara	 		| M	|
| f2 |	Manoj Muguvali	 		| F	|
| f3 |	Sachin Dutta	 		| H	|
| f4 |	Suhas Prabhu	 		| M	|
| f5 |	Parikshit Khandivali	| I	|
| f6 |	John Jacobs	 			| M	|
| f7 |	Peter Macclister		| F	|
| f8 |	Vibhu Tandon	 		| B	|

### Create  Database

To create *dpu_college* database(db) we will use CREATE command which is basically a DDL command. Remember that in case of MySQL database is same as schema and it can be used interchangeably.

**Syntax:**

```sql
CREATE DATABASE database_name;
```

**Example:**

```sql
CREATE DATABASE dpu_college;
```

