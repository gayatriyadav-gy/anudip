Q. Create a database with the name StudentManagementSystem. 

Create a table with named Student with attributes

: ● StudentID (Primary Key) ● FirstName ● LastName ● DateOfBirth ● Gender ● Email ● Phone

Insert 5 Records in students table
show databases;
+---------------------------+
| Database                  |
+---------------------------+
| aggregation               |
| e_commerce                |
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
14 rows in set (0.00 sec)

mysql> use StudentManagementSystem;
Database changed
mysql> create table Student3(student_id varchar(10)not null primary key,first_name varchar(20)not null,last_name varchar(10)not null,DateofBirth Date not null,Gender varchar(10)not null,Email varchar(10)not null,phone varchar(10)not null);
Query OK, 0 rows affected (0.03 sec)

mysql> desc Student3;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| student_id  | varchar(10) | NO   | PRI | NULL    |       |
| first_name  | varchar(20) | NO   |     | NULL    |       |
| last_name   | varchar(10) | NO   |     | NULL    |       |
| DateofBirth | date        | NO   |     | NULL    |       |
| Gender      | varchar(10) | NO   |     | NULL    |       |
| Email       | varchar(10) | NO   |     | NULL    |       |
| phone       | varchar(10) | NO   |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
7 rows in set (0.00 sec)


mysql> Insert into Student3 values('S101','gayatri','yadav','2005-02-02','female','g@mail.com','2354678584');
Query OK, 1 row affected (0.02 sec)

mysql> Insert into Student3 values('S102','gauri','singh','2005-03-22','female','h@mail.com','23546584');
Query OK, 1 row affected (0.01 sec)

mysql> Insert into Student3 values('S103','bhumi','nag','2005-04-5','female','y@mail.com','2873546584');
Query OK, 1 row affected (0.01 sec)

mysql> Insert into Student3 values('S104','laxmi','verma','2005-08-5','female','d@mail.com','287398584');
Query OK, 1 row affected (0.01 sec)

mysql> Select *from Student3;
+------------+------------+-----------+-------------+--------+------------+------------+
| student_id | first_name | last_name | DateofBirth | Gender | Email      | phone      |
+------------+------------+-----------+-------------+--------+------------+------------+
| S101       | gayatri    | yadav     | 2005-02-02  | female | g@mail.com | 2354678584 |
| S102       | gauri      | singh     | 2005-03-22  | female | h@mail.com | 23546584   |
| S103       | bhumi      | nag       | 2005-04-05  | female | y@mail.com | 2873546584 |
| S104       | laxmi      | verma     | 2005-08-05  | female | d@mail.com | 287398584  |
+------------+------------+-----------+-------------+--------+------------+------------+
4 rows in set (0.00 sec)

mysql>

