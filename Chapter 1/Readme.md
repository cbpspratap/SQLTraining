# SQL: The Beginning
Welcome to the first chapter of this SQL Training course, in this chapter we will understand the why and what of SQL and then we will setup the SQL environment in our personal computer to start our SQL learning journey.
### Why Learn SQL?
- Getting into Data Field
- Job Opportunities for Data Analyst & Scientist Role  
- competitive Salary

Everyone knows that data is the new oil and on daily basis currently we create roughly 2.5 quintillion bytes of data [*(source)*](https://seedscientific.com/how-much-data-is-created-every-day/#:~:text=Every%20day%2C%20we%20create%20roughly%202.5%20quintillion%20bytes%20of%20data.). Just imagine the scale on which the data is being processed, stored and used. In current marked condition no business can run without data, first they need data to get their website running and then the website/business will start generating data which they again need to store somewhere. And once the data is stored in a database you need SQL to extract meaningful information out of the data.

Without SQL, almost no meaningful online service could exist - from bank to grocery delivery, everything runs on data. Despite the passage of years, SQL is still the primary computer language when you talk about data. In current job market for data, almost every job requires SQL skills.


### What is SQL?

SQL stand for Structured Query Language. As per Britannica SQL is a computer language designed for eliciting information from databases(it includes database creation, deletion, fetching rows, modifying rows, etc.).

In the 1970s computer scientists began developing a standardized way to manipulate databases, and out of that research came SQL. SQL gained popularity when the American National Standards Institute (ANSI) adopted the first SQL standard in 1986. Some large software companies, such as Microsoft Corporation and Oracle Corporation, produced their own versions of SQL, and an open-source version, MySQL, became extremely popular.

### What is Database & DBMS?

A database is an organized collection of data stored and accessed electronically. If you are storing some of your data in Excel that can also be called a database, but in real life scenario the data is really huge and there are specific electronic systems built to store this data. These databases are designed specifically for the purpose of how it will be used. In some cases, the data is stored in logical tables(row & column format) and they are called relation database while in some cases it is stored in non-tabular format(key value pair) which is called No SQL Database.

A database management system (or DBMS) is essentially nothing more than a computerized system or software which help manage the database. You can call a DBMS as the interface between human and data, the primary goal of a DBMS is to provide an environment that is both convenient and efficient to use in retrieving and storing data base information and same time maintaining the security of the data.

### What is RDBMS?

RDBMS stand for Relational Database Management System; these are DBMS which are specifically designed to work with relational databases.

### Flavors of RDBMS

There are multiple RDBMS available in market, which you can choose based on your organizations use-case, some of them are commercial products and will require license cost while some are open source. All these RDBMS basically works on SQL, but it may differ from product to product in terms of usages and functionalities. 
#### Commercial
  - Oracle 
  - SQL Server
  - DB2
  - Teradata 
  - MS Access

#### Open Source
  - MySQL
  - PostgreSQL
  - SQLite
  - Maria DB

### MySQL
MySQL is world’s most popular RDBMS that is open source and free.
The MySQL development project has made its source code available under the terms of the GNU General Public License. MySQL was owned and sponsored by a single for-profit firm, the Swedish company MySQL AB, later it was acquired by Oracle as a part of Sun Microsystems acquisition in 2009. For proprietary use, several paid editions are available, and offer additional functionality.
#### Key properties of MySQL: 
  - MySQL is a database management system.
  - MySQL databases are relational.
  - MySQL software is Open Source.
  - The MySQL Database Server is very fast, reliable, scalable, and easy to use.
  - MySQL Server works in client/server or embedded systems.

Now that we know some basics about SQL, it's time we go to SQL environment and start running few queries. Ohh! wait but we don't have any SQL environment where we can do this.

Don't worry we have multiple option to have access to a SQL environment for our practice. There are multiple online SQL coding platforms available which you can use, below are few:
- [db-fiddle](https://db-fiddle.com/) *(preferred)*
- [sqlfiddle](http://sqlfiddle.com/)

Alternatively, the best option is to setup MySQL environment in our local machine/laptop/personal computer, so that we don't lose our progress.

# Set-Up MySQL in Local Environment
Please refer to the below link which will download a PPT with detailed instruction on how to setup MySQL in your personal computer.

[Click here to download the PPT with detailed instruction](https://github.com/cbpspratap/SQLTraining/blob/main/Chapter%201/MySQL%20Download%26Installation%20Guide.pptx)
### Downloading MySQL
- Go to [mysql.com](https://www.mysql.com/)
- Click on [downloads](https://www.mysql.com/downloads/)
- Go to the bottom of the page and click on [MySQL Community (GPL) Downloads »](https://dev.mysql.com/downloads/)
- If you are using Windows system then click on [MySQL Installer for Windows](https://dev.mysql.com/downloads/installer/)
- You will see two download options on this page one is online installer and another with offline installer
- Download whichever you like, I prefer the offline installer.
   ![image](https://user-images.githubusercontent.com/67796162/155339623-1bbdad1e-0d41-4d1f-8f40-60df579e31b8.png)


### Installing MySQL
- Once MySQL installer has downloaded, double click to begin installation
- Allow the windows permission to continue installation
- Select "Developer Default" when asked for Choosing a Setup Type

    ![image](https://user-images.githubusercontent.com/67796162/155340949-950a25af-d8a3-4907-80d9-387834171783.png)
    
- Continue installation by pressing Execute or Next whenever prompted
- When you reach to below screen, leave everything to default and click next

    ![image](https://user-images.githubusercontent.com/67796162/155341695-611ddcc7-3b38-4775-87f1-049a859d4356.png)

- On Authentication Method page select "Use Strong Password Encryption for Authentication (Recommended)" option and click Next
- Create a password under Accounts and Roles for Root User(This is the password you will be using when connecting to MySQL DB) and leave the add user option under MySQL User Accounts as it is unless you want some other user to be created.

    ![image](https://user-images.githubusercontent.com/67796162/155342776-d7a0ba21-41d2-4dac-bf9d-1fc0ace12969.png)

- Under Windows Service leave everything to default and click next and continue with installation

- After multiple Next, Execute and Next you will reach at below screen, just enter the password you created in previous step and check if Connection succeeded then click next to continue installation.
- Once you reach below screen, finally the installation is complete and you can click Finish.

    ![image](https://user-images.githubusercontent.com/67796162/155344000-a461342d-9a94-4d39-adf5-5040629e3fb3.png)

- After you click finish MySQL Workbench and MySQL Shell will open

***And here you go, your system is now ready to do some data munching!!***


### Starting MySQL Workbench

Now that we have already setup MySQL in our machine, let's get started with running it and how to use it.

- Go to Start Menu and search for MySQL Workbench, you will see something like below. Click and open it

    ![image](https://user-images.githubusercontent.com/67796162/155347890-2a9680fe-725e-45da-ba1a-7918f578e842.png)


- Once you open it you will see something like below, this is the home screen of MySQL Workbench which you will be using to connect to your local MySQL Instance. Double click on the Local Instance under MySQL connections. It will ask you to the password you created earlier, input your password, and click OK

    ![image](https://user-images.githubusercontent.com/67796162/155350915-212024ac-5e3e-4cc8-8f6e-37e587437809.png)

- Now you have connected to your Local MySQL Instance, click on Schemas to see the existing Schemas/Databases which have been provided as sample DB along with installation.

    ![image](https://user-images.githubusercontent.com/67796162/155351685-e2e1c8d3-8cbf-4742-8248-231114a5240b.png)

- You can see the Query window(*the white canvas*), this is where you can write your SQL queries to fetch data from DBs.

**Woo-hoO!** Now that you have you have everything setup it's time, we start running few queries.

Let's run below query to see the output(*copy the SQL code and paste in your MySQL Workbench query window and run using ctlr + enter or click on the flash window*)

```sql
SELECT * FROM sakila.actor
limit 10;
```
![image](https://user-images.githubusercontent.com/67796162/155360407-6af6de54-6e77-462d-89af-759477ce05f6.png)

<br>

| actor_id | first_name | last_name    | last_update         |
|----------|------------|--------------|---------------------|
|        1 | PENELOPE   | GUINESS      | 2006-02-15 04:34:33 |
|        2 | NICK       | WAHLBERG     | 2006-02-15 04:34:33 |
|        3 | ED         | CHASE        | 2006-02-15 04:34:33 |
|        4 | JENNIFER   | DAVIS        | 2006-02-15 04:34:33 |
|        5 | JOHNNY     | LOLLOBRIGIDA | 2006-02-15 04:34:33 |
|        6 | BETTE      | NICHOLSON    | 2006-02-15 04:34:33 |
|        7 | GRACE      | MOSTEL       | 2006-02-15 04:34:33 |
|        8 | MATTHEW    | JOHANSSON    | 2006-02-15 04:34:33 |
|        9 | JOE        | SWANK        | 2006-02-15 04:34:33 |
|       10 | CHRISTIAN  | GABLE        | 2006-02-15 04:34:33 |		

<br>

Wasn't that easy, just in few clicks you have extracted data in front of you.

### Great Job

<img src="https://c.tenor.com/yhn_wHD5FPEAAAAd/great-job-clapping.gif" width="400" height="400" />


#### Congratulations! You have completed 1st chapter of your SQL Learning journey.


