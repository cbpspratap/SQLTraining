# SQL: The Beginning
### Why SQL?

Everyone knows that data is the new oil and on daily basis currently we create roughly 2.5 quintillion bytes of data [*(source)*](https://seedscientific.com/how-much-data-is-created-every-day/#:~:text=Every%20day%2C%20we%20create%20roughly%202.5%20quintillion%20bytes%20of%20data.). Just imagine the scale on which the data is being processed, stored and used. In current marked condition no business can run without data, first they need data to get their website running and then the website/business will start generating data which they again need to store somewhere. And once the data is stored in a database you need SQL to extract meaningful information out of the data.

Without SQL, almost no meaningful online service could exist - from bank to grocerry delivery, everything runs on data. Despite the passage of years, SQL is still the primary computer language when you talk about data. In current job market for data, almost every job requires SQL skills.


### What is SQL?

SQL stand for Structured Query Language. As per Britanica SQL is a computer language designed for eliciting information from databases(it includes database creation, deletion, fetching rows, modifying rows, etc).

In the 1970s computer scientists began developing a standardized way to manipulate databases, and out of that research came SQL. SQL gained popularity when the American National Standards Institute (ANSI) adopted the first SQL standard in 1986. Some large software companies, such as Microsoft Corporation and Oracle Corporation, produced their own versions of SQL, and an open-source version, MySQL, became extremely popular.

### What is Database & DBMS?

A database is an organized collection of data stored and accessed electronically. If you are storing some of your data in Excel that can also be called a database, but in real life scenario the data is really huge and there are specific electronic systems built to store this data. These databases are designed specifically for the purpose of how it will be used. In some cases the data is stored in logical tables(row & column format) and they are called relation database while in some cases it is stored in non-tabular format(key value pair) which is called No SQL Database.

A database management system (or DBMS) is essentially nothing more than a computerized system or software which help manage the database. You can call a DBMS as the interface betwwen human and data, the primary goal of a DBMS is to provide an environment that is both convenient and efficient to use in retrieving and storing data base information and same time maintaining the security of the data.

### What is RDBMS?

RDBMS stand for Relational Database Management System, these are DBMS which are specifically designed to work with relational databases.

### Flavours of RDBMS

There are multiple RDBMS available in market, which you can choose based on your organizations use-case, some of them are commercial products and will require license cost while some are open source. All these RDBMS basically works on SQL but it may differ from product to product in terms of usages and functionalities. 
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
The MySQL development project has made its source code available under the terms of the GNU General Public License. MySQL was owned and sponsored by a single for-profit firm, the Swedish company MySQL AB, later it was was acquired by Oracle as a part of Sun Microsystems acquisition in 2009. For proprietary use, several paid editions are available, and offer additional functionality.
#### Key properties of MySQL: 
  - MySQL is a database management system.
  - MySQL databases are relational.
  - MySQL software is Open Source.
  - The MySQL Database Server is very fast, reliable, scalable, and easy to use.
  - MySQL Server works in client/server or embedded systems.

Now that we know some basics about SQL, its time we setup MySQL environment in our local machine/laptop/personal computer.

# Set-Up MySQL in your Local environment
Please refer to the below link which will download a PPt with detailed instruction on how to setup MySQL in your personal computer.

[Click here to download the PPT with detailed instruction](https://github.com/cbpspratap/SQLTraining/blob/main/Lecture%201/MySQL%20Download%26Installation%20Guide.pptx)
### Downloading MySQL
- Go to [mysql.com](https://www.mysql.com/)
- Click on [downloads](https://www.mysql.com/downloads/)
- Go to the bottom of the page and click on [MySQL Community (GPL) Downloads »](https://dev.mysql.com/downloads/)
- If you are using windown system then click on [MySQL Installer for Windows](https://dev.mysql.com/downloads/installer/)
- You will see two download options on this page one is online installer and another with offline installer
- Download whichever you like, I prefer the offline installer.
![image](https://user-images.githubusercontent.com/67796162/155339623-1bbdad1e-0d41-4d1f-8f40-60df579e31b8.png)


### Installing MySQL
- Once MySQL installer has downloaded, double click to begin instalation
- Allow the windows permission to continue installation
- Select "Developer Default" when asked for Choosing a Setup Type

    ![image](https://user-images.githubusercontent.com/67796162/155340949-950a25af-d8a3-4907-80d9-387834171783.png)
    
- Continue installation by pressing Execute or Next whenever prompted
- When you reach to below screen, leave everything to default and click next

    ![image](https://user-images.githubusercontent.com/67796162/155341695-611ddcc7-3b38-4775-87f1-049a859d4356.png)

- On Authentication Method page select "Use Strong Password Encryption for Authentication (Recomended)" option and click Next
- Create a password under Accounts and Roles for Root User(This is the password you will be using when connecting to MySQL DB) and leave the add user option under MySQL User Accounts as it is unless you want some other user to be created.

    ![image](https://user-images.githubusercontent.com/67796162/155342776-d7a0ba21-41d2-4dac-bf9d-1fc0ace12969.png)

- Under Windows Service leave everything to default and click next and continue with installtion

- After multiple Next, Execute and Next you will reach at below screen, just enter the password you created in previous step and check if Connection succeeded then click next to continue installtion.
- Once you reach below screen, finally the installtion is complete and you can click Finish.

    ![image](https://user-images.githubusercontent.com/67796162/155344000-a461342d-9a94-4d39-adf5-5040629e3fb3.png)

- After you click finish MySQL Workbench and MySQL Shell will open

***And here you go, your system is now ready to do some data munching!!***



### Starting MySQL Workbench
