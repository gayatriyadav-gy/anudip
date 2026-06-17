 Q, Consider a simple database  Demo with one tables: Employee Employee Table:

 show databases;
+---------------------------+
| Database                  |
+---------------------------+
| aggregation               |
| e_commerce                |
| ecommerce                 |
| information_schema        |
| joints                    |
| mysql                     |
| performance_schema        |
| sakila                    |
| store_procedure_example   |
| student                   |
| student1                  |
| student_management_system |
| studentmanagementsystem   |
| sys                       |
| world                     |
+---------------------------+
15 rows in set (0.01 sec)

mysql> create database demo;
Query OK, 1 row affected (0.02 sec)

 ● Columns:emp_id (Primary Key), first_name, last_name, age, email 
mysql> desc employee;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| first_name | varchar(50) | NO   | PRI | NULL    |       |
| last_name  | varchar(40) | NO   |     | NULL    |       |
| age        | int         | NO   |     | NULL    |       |
| email      | varchar(30) | NO   |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)



mysql> create table employee(first_name varchar(50)not null primary key,last_name varchar(40)not null,age int(20)not null,email varchar(30)not null);
Query OK, 0 rows affected, 1 warning (0.05 sec)


Task 1: Insert Data Write an SQL INSERT statement to insert data into the Employee table.
mysql> insert into employee('eshika','yadav',19,'eshika123@gmail.com');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''eshika','yadav',19,'eshika123@gmail.com')' at line 1
mysql> insert into employee values('eshika','yadav',19,'eshika123@gmail.com');
Query OK, 1 row affected (0.02 sec)

mysql> insert into employee values('gayatri','yadav',21,'gayatri123@gmail.com');
Query OK, 1 row affected (0.03 sec)

mysql> insert into employee values('bhumi','nag',22,'bhumi34@gmail.com');
Query OK, 1 row affected (0.01 sec)

mysql> insert into employee values('laxmi','verma',29,'rtyy34@gmail.com');
Query OK, 1 row affected (0.03 sec)

mysql> insert into employee values('gauri','singh',39,'gauri34@gmail.com');
Query OK, 1 row affected (0.01 sec)

mysql> insert into employee values('vijay','gupta',39,'guptari34@gmail.com');
Query OK, 1 row affected (0.02 sec)

 mysql> select first_name,last_name from employee;
+------------+-----------+
| first_name | last_name |
+------------+-----------+
| bhumi      | nag       |
| eshika     | yadav     |
| gauri      | singh     |
| gayatri    | yadav     |
| laxmi      | verma     |
| vijay      | gupta     |
+------------+-----------+
6 rows in set (0.00 sec)

Task 2: Retrieving Data Write an SQL SELECT statement to retrieve the first_name and last_name of all employees from the Employee table. 


mysql> select first_name,last_name from employee;
+------------+-----------+
| first_name | last_name |
+------------+-----------+
| bhumi      | nag       |
| eshika     | yadav     |
| gauri      | singh     |
| gayatri    | yadav     |
| laxmi      | verma     |
| vijay      | gupta     |
+------------+-----------+
6 rows in set (0.00 sec)

Task 3: Filtering Data Write an SQL SELECT statement to retrieve the first_name, last_name, and age of employees who are older than 30 years. 

mysql> select first_name,last_name,age from employee where age>30;
+------------+-----------+-----+
| first_name | last_name | age |
+------------+-----------+-----+
| gauri      | singh     |  39 |
| vijay      | gupta     |  39 |
+------------+-----------+-----+
2 rows in set (0.01 sec)
Task 4: Updating Data Write an SQL UPDATE statement to increase the age of employees by 1 year for all employees older than 2
mysql> update employee set age =age +1 where age>2;
Query OK, 6 rows affected (0.01 sec)
Rows matched: 6  Changed: 6  Warnings: 0

mysql> select *from employee;
+------------+-----------+-----+----------------------+
| first_name | last_name | age | email                |
+------------+-----------+-----+----------------------+
| bhumi      | nag       |  23 | bhumi34@gmail.com    |
| eshika     | yadav     |  20 | eshika123@gmail.com  |
| gauri      | singh     |  41 | gauri34@gmail.com    |
| gayatri    | yadav     |  22 | gayatri123@gmail.com |
| laxmi      | verma     |  31 | rtyy34@gmail.com     |
| vijay      | gupta     |  41 | guptari34@gmail.com  |
+------------+-----------+-----+----------------------+
6 rows in set (0.00 sec)






