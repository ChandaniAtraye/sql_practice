mysql> INSERT INTO EMPLOYEE(EMP_NAME,EMAIL,AGE,SALARY,JOINING_DATE,DEPT_ID)VALUES("SURAJ","suraj@gmail.com",23,40000,"2026-02-22",3),
    -> ("RAMAN","raman@gmail.com",23,40000,"2026-02-22",3),
    -> ("SAMRAT","samrat@gmail.com",25,40000,"2025-02-20",4),
    -> ("RAJAT","rajat@gmail.com",23,35000,"2024-02-22",4),
    -> ("RAHUL","rahul@gmail.com",23,20000,"2022-04-22",5);
Query OK, 5 rows affected (0.37 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from employee;
+--------+----------+------------------+------+--------+--------------+---------+--------------+
| EMP_ID | EMP_NAME | EMAIL            | AGE  | SALARY | JOINING_DATE | DEPT_ID | COMPANY_NAME |
+--------+----------+------------------+------+--------+--------------+---------+--------------+
|    101 | NEHA     | neha@gmail.com   |   23 |  40000 | 2026-04-24   |       2 | TCS          |
|    102 | CANI     | ca@gmail.com     |   24 |  45000 | 2026-05-28   |       3 | TCS          |
|    103 | SURAJ    | suraj@gmail.com  |   23 |  40000 | 2026-02-22   |       3 | TCS          |
|    104 | RAMAN    | raman@gmail.com  |   23 |  40000 | 2026-02-22   |       3 | TCS          |
|    105 | SAMRAT   | samrat@gmail.com |   25 |  40000 | 2025-02-20   |       4 | TCS          |
|    106 | RAJAT    | rajat@gmail.com  |   23 |  35000 | 2024-02-22   |       4 | TCS          |
|    107 | RAHUL    | rahul@gmail.com  |   23 |  20000 | 2022-04-22   |       5 | TCS          |
+--------+----------+------------------+------+--------+--------------+---------+--------------+
7 rows in set (0.00 sec)

mysql> INSERT INTO EMPLOYEE(EMP_NAME,EMAIL,AGE,SALARY,JOINING_DATE,DEPT_ID)VALUES("RANI","rani@gmail.com",26,25000,"2023-04-21",5),
    -> ("VAIBHAV","vaibhav@gmail.com",25,40000,"2026-02-22",6),
    -> ("ROHIT","rohit@gmail.com",24,30000,"2023-08-15",7);
Query OK, 3 rows affected (0.03 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> select * from employee;
+--------+----------+-------------------+------+--------+--------------+---------+--------------+
| EMP_ID | EMP_NAME | EMAIL             | AGE  | SALARY | JOINING_DATE | DEPT_ID | COMPANY_NAME |
+--------+----------+-------------------+------+--------+--------------+---------+--------------+
|    101 | NEHA     | neha@gmail.com    |   23 |  40000 | 2026-04-24   |       2 | TCS          |
|    102 | CANI     | ca@gmail.com      |   24 |  45000 | 2026-05-28   |       3 | TCS          |
|    103 | SURAJ    | suraj@gmail.com   |   23 |  40000 | 2026-02-22   |       3 | TCS          |
|    104 | RAMAN    | raman@gmail.com   |   23 |  40000 | 2026-02-22   |       3 | TCS          |
|    105 | SAMRAT   | samrat@gmail.com  |   25 |  40000 | 2025-02-20   |       4 | TCS          |
|    106 | RAJAT    | rajat@gmail.com   |   23 |  35000 | 2024-02-22   |       4 | TCS          |
|    107 | RAHUL    | rahul@gmail.com   |   23 |  20000 | 2022-04-22   |       5 | TCS          |
|    108 | RANI     | rani@gmail.com    |   26 |  25000 | 2023-04-21   |       5 | TCS          |
|    109 | VAIBHAV  | vaibhav@gmail.com |   25 |  40000 | 2026-02-22   |       6 | TCS          |
|    110 | ROHIT    | rohit@gmail.com   |   24 |  30000 | 2023-08-15   |       7 | TCS          |
+--------+----------+-------------------+------+--------+--------------+---------+--------------+
10 rows in set (0.00 sec)

mysql> SELECT * FROM DEPARMENT;
ERROR 1146 (42S02): Table 'tcs.deparment' doesn't exist
mysql> SELECT * FROM department;
+---------+---------------+-----------+
| DEPT_ID | DEPT_NAME     | LOCATION  |
+---------+---------------+-----------+
|       1 | HR            | MUMBAI    |
|       2 | IT            | PUNE      |
|       3 | FINANCE       | DELHI     |
|       4 | MARKETING     | BANGLORE  |
|       5 | SALES         | HYDERABAD |
|       6 | NULL          | PUNE      |
|       7 | SALES         | NULL      |
|       8 | IT TECHNICIAN | NASHIK    |
+---------+---------------+-----------+
8 rows in set (0.00 sec)

mysql> DESC DEPARTMENT;
+-----------+-------------+------+-----+---------+----------------+
| Field     | Type        | Null | Key | Default | Extra          |
+-----------+-------------+------+-----+---------+----------------+
| DEPT_ID   | int         | NO   | PRI | NULL    | auto_increment |
| DEPT_NAME | varchar(20) | YES  |     | NULL    |                |
| LOCATION  | varchar(20) | YES  |     | NULL    |                |
+-----------+-------------+------+-----+---------+----------------+
3 rows in set (0.01 sec)

mysql> # CREATE, ,TRUNCATE,ALTER,RENAME,DROP
mysql> ALTER TABLE DEPARTMENT
    -> ADD COLUMN DEPT_MOBILE VARCHAR(20);
Query OK, 0 rows affected (0.53 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> DESC DEPARTMENT;
+-------------+-------------+------+-----+---------+----------------+
| Field       | Type        | Null | Key | Default | Extra          |
+-------------+-------------+------+-----+---------+----------------+
| DEPT_ID     | int         | NO   | PRI | NULL    | auto_increment |
| DEPT_NAME   | varchar(20) | YES  |     | NULL    |                |
| LOCATION    | varchar(20) | YES  |     | NULL    |                |
| DEPT_MOBILE | varchar(20) | YES  |     | NULL    |                |
+-------------+-------------+------+-----+---------+----------------+
4 rows in set (0.00 sec)

mysql> # ALTER TABLE DEPARTMENT DROP COLUMN DEPT_MOBILE;
mysql>  ALTER TABLE DEPARTMENT DROP COLUMN DEPT_MOBILE;
Query OK, 0 rows affected (0.09 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> DESC DEPARTMENT;
+-----------+-------------+------+-----+---------+----------------+
| Field     | Type        | Null | Key | Default | Extra          |
+-----------+-------------+------+-----+---------+----------------+
| DEPT_ID   | int         | NO   | PRI | NULL    | auto_increment |
| DEPT_NAME | varchar(20) | YES  |     | NULL    |                |
| LOCATION  | varchar(20) | YES  |     | NULL    |                |
+-----------+-------------+------+-----+---------+----------------+
3 rows in set (0.00 sec)

mysql> # ADD COLUMN AT FIRST AND IN BETWEEN
mysql> ALTER TABLE DEPARTMENT
    -> ADD COLUMN DEPT_MOB FIRST;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'FIRST' at line 2
mysql> ALTER TABLE DEPARTMENT
    -> ADD COLUMN DEPT_MOB VARCHAR(20) FIRST ;
Query OK, 0 rows affected (0.10 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> DESC DEPARTMENT;
+-----------+-------------+------+-----+---------+----------------+
| Field     | Type        | Null | Key | Default | Extra          |
+-----------+-------------+------+-----+---------+----------------+
| DEPT_MOB  | varchar(20) | YES  |     | NULL    |                |
| DEPT_ID   | int         | NO   | PRI | NULL    | auto_increment |
| DEPT_NAME | varchar(20) | YES  |     | NULL    |                |
| LOCATION  | varchar(20) | YES  |     | NULL    |                |
+-----------+-------------+------+-----+---------+----------------+
4 rows in set (0.00 sec)

mysql>  ALTER TABLE DEPARTMENT DROP COLUMN DEPT_MOB;
Query OK, 0 rows affected (0.07 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> ALTER TABLE DEPARTMENT
    -> ADD COLUMN DEPT_MOB VARCHAR(20) BEFORE LOCATION;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'BEFORE LOCATION' at line 2
mysql> ALTER TABLE DEPARTMENT
    -> ADD COLUMN DEPT_MOB VARCHAR(20) AFTER DEPT_NAME ;
Query OK, 0 rows affected (0.10 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> DESC DEPARTMENT;
+-----------+-------------+------+-----+---------+----------------+
| Field     | Type        | Null | Key | Default | Extra          |
+-----------+-------------+------+-----+---------+----------------+
| DEPT_ID   | int         | NO   | PRI | NULL    | auto_increment |
| DEPT_NAME | varchar(20) | YES  |     | NULL    |                |
| DEPT_MOB  | varchar(20) | YES  |     | NULL    |                |
| LOCATION  | varchar(20) | YES  |     | NULL    |                |
+-----------+-------------+------+-----+---------+----------------+
4 rows in set (0.01 sec)

mysql> DESC EMPLOYEE;
+--------------+-------------+------+-----+---------+----------------+
| Field        | Type        | Null | Key | Default | Extra          |
+--------------+-------------+------+-----+---------+----------------+
| EMP_ID       | int         | NO   | PRI | NULL    | auto_increment |
| EMP_NAME     | varchar(20) | NO   |     | NULL    |                |
| EMAIL        | varchar(20) | YES  | UNI | NULL    |                |
| AGE          | int         | YES  |     | NULL    |                |
| SALARY       | float       | YES  |     | NULL    |                |
| JOINING_DATE | date        | NO   |     | NULL    |                |
| DEPT_ID      | int         | YES  | MUL | NULL    |                |
| COMPANY_NAME | char(3)     | YES  |     | TCS     |                |
+--------------+-------------+------+-----+---------+----------------+
8 rows in set (0.01 sec)

mysql> ALTER TABLE EMPLOYEE
    -> MODIFY COLUMN SALARY INT ;
Query OK, 10 rows affected (0.41 sec)
Records: 10  Duplicates: 0  Warnings: 0

mysql> DESC EMPLOYEE;
+--------------+-------------+------+-----+---------+----------------+
| Field        | Type        | Null | Key | Default | Extra          |
+--------------+-------------+------+-----+---------+----------------+
| EMP_ID       | int         | NO   | PRI | NULL    | auto_increment |
| EMP_NAME     | varchar(20) | NO   |     | NULL    |                |
| EMAIL        | varchar(20) | YES  | UNI | NULL    |                |
| AGE          | int         | YES  |     | NULL    |                |
| SALARY       | int         | YES  |     | NULL    |                |
| JOINING_DATE | date        | NO   |     | NULL    |                |
| DEPT_ID      | int         | YES  | MUL | NULL    |                |
| COMPANY_NAME | char(3)     | YES  |     | TCS     |                |
+--------------+-------------+------+-----+---------+----------------+
8 rows in set (0.00 sec)

mysql> ALTER TABLE EMPLOYEE CHANGE COLUMN EMAIL TO EMAIL_ID VARCHAR(20);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'TO EMAIL_ID VARCHAR(20)' at line 1
mysql> ALTER TABLE EMPLOYEE CHANGE COLUMN EMAIL  EMAIL_ID VARCHAR(20);
Query OK, 0 rows affected (0.10 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> DESC EMPLOYEE;
+--------------+-------------+------+-----+---------+----------------+
| Field        | Type        | Null | Key | Default | Extra          |
+--------------+-------------+------+-----+---------+----------------+
| EMP_ID       | int         | NO   | PRI | NULL    | auto_increment |
| EMP_NAME     | varchar(20) | NO   |     | NULL    |                |
| EMAIL_ID     | varchar(20) | YES  | UNI | NULL    |                |
| AGE          | int         | YES  |     | NULL    |                |
| SALARY       | int         | YES  |     | NULL    |                |
| JOINING_DATE | date        | NO   |     | NULL    |                |
| DEPT_ID      | int         | YES  | MUL | NULL    |                |
| COMPANY_NAME | char(3)     | YES  |     | TCS     |                |
+--------------+-------------+------+-----+---------+----------------+
8 rows in set (0.00 sec)

mysql> # RENAME A TABLE
mysql> #1 . WAY
mysql> ALTER TABLE EMPLOYEE RENAME TO EMP_DETAILS;
Query OK, 0 rows affected (0.11 sec)

mysql> DESC EMP_DETAILS;
+--------------+-------------+------+-----+---------+----------------+
| Field        | Type        | Null | Key | Default | Extra          |
+--------------+-------------+------+-----+---------+----------------+
| EMP_ID       | int         | NO   | PRI | NULL    | auto_increment |
| EMP_NAME     | varchar(20) | NO   |     | NULL    |                |
| EMAIL_ID     | varchar(20) | YES  | UNI | NULL    |                |
| AGE          | int         | YES  |     | NULL    |                |
| SALARY       | int         | YES  |     | NULL    |                |
| JOINING_DATE | date        | NO   |     | NULL    |                |
| DEPT_ID      | int         | YES  | MUL | NULL    |                |
| COMPANY_NAME | char(3)     | YES  |     | TCS     |                |
+--------------+-------------+------+-----+---------+----------------+
8 rows in set (0.00 sec)

mysql> #2.WAY
mysql> RENAME TABLE EMP_DETAILS TO EMPLOYEE;
Query OK, 0 rows affected (0.35 sec)

mysql> DESC EMPLOYEE;
+--------------+-------------+------+-----+---------+----------------+
| Field        | Type        | Null | Key | Default | Extra          |
+--------------+-------------+------+-----+---------+----------------+
| EMP_ID       | int         | NO   | PRI | NULL    | auto_increment |
| EMP_NAME     | varchar(20) | NO   |     | NULL    |                |
| EMAIL_ID     | varchar(20) | YES  | UNI | NULL    |                |
| AGE          | int         | YES  |     | NULL    |                |
| SALARY       | int         | YES  |     | NULL    |                |
| JOINING_DATE | date        | NO   |     | NULL    |                |
| DEPT_ID      | int         | YES  | MUL | NULL    |                |
| COMPANY_NAME | char(3)     | YES  |     | TCS     |                |
+--------------+-------------+------+-----+---------+----------------+
8 rows in set (0.00 sec)

mysql> CREATE TABLE DUMMY(ID INT PRIMARY KEY , NAME VARCHAR(20));
Query OK, 0 rows affected (0.07 sec)

mysql> INSERT INTO DUMMY VALUES(1,"AJYA"),(2,"TINU");
Query OK, 2 rows affected (0.01 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM DUMMY;
+----+------+
| ID | NAME |
+----+------+
|  1 | AJYA |
|  2 | TINU |
+----+------+
2 rows in set (0.00 sec)

mysql> #TRUNCATE
mysql> TRUNCATE TABLE DUMMY;
Query OK, 0 rows affected (0.30 sec)

mysql> SELECT * FROM DUMMY;
Empty set (0.00 sec)

mysql> DESC DUMMY;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| ID    | int         | NO   | PRI | NULL    |       |
| NAME  | varchar(20) | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> INSERT INTO DUMMY VALUES(1,"AJYA"),(2,"TINU");
Query OK, 2 rows affected (0.03 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> #DROP - DELETE WHOLE TABLE
mysql> DROP TABLE DUMMY;
Query OK, 0 rows affected (0.08 sec)

mysql> DESC DUMMY;
ERROR 1146 (42S02): Table 'tcs.dummy' doesn't exist
mysql> SELECT * FROM DUMMY;
ERROR 1146 (42S02): Table 'tcs.dummy' doesn't exist
mysql> ALTER TABLE EMPLOYEE
    -> MODIFY SALARY INT , COMPANY_NAME VARCHAR(5);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'COMPANY_NAME VARCHAR(5)' at line 2
mysql> ALTER TABLE EMPLOYEE MODIFY (SALARY INT , COMPANY_NAME VARCHAR(5));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '(SALARY INT , COMPANY_NAME VARCHAR(5))' at line 1
mysql> ALTER TABLE EMPLOYEE MODIFY SALARY FLOAT , COMPANY_NAME VARCHAR(5));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'COMPANY_NAME VARCHAR(5))' at line 1
mysql> ALTER TABLE EMPLOYEE MODIFY SALARY FLOAT , COMPANY_NAME VARCHAR(5);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'COMPANY_NAME VARCHAR(5)' at line 1
mysql> ALTER TABLE EMPLOYEE MODIFY (SALARY FLOAT , COMPANY_NAME VARCHAR(5));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '(SALARY FLOAT , COMPANY_NAME VARCHAR(5))' at line 1
mysql> ALTER TABLE EMPLOYEE MODIFY SALARY FLOAT  COMPANY_NAME VARCHAR(5);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'COMPANY_NAME VARCHAR(5)' at line 1
mysql> ALTER TABLE EMPLOYEE MODIFY SALARY FLOAT,MODIFY  COMPANY_NAME VARCHAR(5);
Query OK, 10 rows affected (0.30 sec)
Records: 10  Duplicates: 0  Warnings: 0

mysql> DESC EMPLOYEE;
+--------------+-------------+------+-----+---------+----------------+
| Field        | Type        | Null | Key | Default | Extra          |
+--------------+-------------+------+-----+---------+----------------+
| EMP_ID       | int         | NO   | PRI | NULL    | auto_increment |
| EMP_NAME     | varchar(20) | NO   |     | NULL    |                |
| EMAIL_ID     | varchar(20) | YES  | UNI | NULL    |                |
| AGE          | int         | YES  |     | NULL    |                |
| SALARY       | float       | YES  |     | NULL    |                |
| JOINING_DATE | date        | NO   |     | NULL    |                |
| DEPT_ID      | int         | YES  | MUL | NULL    |                |
| COMPANY_NAME | varchar(5)  | YES  |     | NULL    |                |
+--------------+-------------+------+-----+---------+----------------+
8 rows in set (0.04 sec)

mysql> # HOW TO ADD CONSTRAINTS
mysql> # HOW TO ADD PRIMARY KEY CONSTRAINT - ALTER TABLE EMPLOYEE ADD CONSTRAINT PRIMARY KEY(EMP_ID);
mysql> # ALTER TABLE EMPLOYEE ADD CONSTRAINT UNIQUE(EMP_ID); -(UNIQUE CONSTRAINT).
mysql> ALTER TABLE EMPLOYEE ADD CONSTRAINT CHECK(AGE>0);
Query OK, 10 rows affected (0.42 sec)
Records: 10  Duplicates: 0  Warnings: 0

mysql> DESC EMPLOYEE;
+--------------+-------------+------+-----+---------+----------------+
| Field        | Type        | Null | Key | Default | Extra          |
+--------------+-------------+------+-----+---------+----------------+
| EMP_ID       | int         | NO   | PRI | NULL    | auto_increment |
| EMP_NAME     | varchar(20) | NO   |     | NULL    |                |
| EMAIL_ID     | varchar(20) | YES  | UNI | NULL    |                |
| AGE          | int         | YES  |     | NULL    |                |
| SALARY       | float       | YES  |     | NULL    |                |
| JOINING_DATE | date        | NO   |     | NULL    |                |
| DEPT_ID      | int         | YES  | MUL | NULL    |                |
| COMPANY_NAME | varchar(5)  | YES  |     | NULL    |                |
+--------------+-------------+------+-----+---------+----------------+
8 rows in set (0.00 sec)

mysql> INSERT INTO EMPLOYEE (EMP_NAME,EMAIL_ID,AGE,SALARY,JOINING_DATE,DEPT_ID)VALUES("RAM","ra@gmail.com",23,-60000,"2025-3-23",5);
Query OK, 1 row affected (0.04 sec)

mysql> DESC EMPLOYEE;
+--------------+-------------+------+-----+---------+----------------+
| Field        | Type        | Null | Key | Default | Extra          |
+--------------+-------------+------+-----+---------+----------------+
| EMP_ID       | int         | NO   | PRI | NULL    | auto_increment |
| EMP_NAME     | varchar(20) | NO   |     | NULL    |                |
| EMAIL_ID     | varchar(20) | YES  | UNI | NULL    |                |
| AGE          | int         | YES  |     | NULL    |                |
| SALARY       | float       | YES  |     | NULL    |                |
| JOINING_DATE | date        | NO   |     | NULL    |                |
| DEPT_ID      | int         | YES  | MUL | NULL    |                |
| COMPANY_NAME | varchar(5)  | YES  |     | NULL    |                |
+--------------+-------------+------+-----+---------+----------------+
8 rows in set (0.01 sec)

mysql> SELECT * FROM EMPLOYEE;
+--------+----------+-------------------+------+--------+--------------+---------+--------------+
| EMP_ID | EMP_NAME | EMAIL_ID          | AGE  | SALARY | JOINING_DATE | DEPT_ID | COMPANY_NAME |
+--------+----------+-------------------+------+--------+--------------+---------+--------------+
|    101 | NEHA     | neha@gmail.com    |   23 |  40000 | 2026-04-24   |       2 | TCS          |
|    102 | CANI     | ca@gmail.com      |   24 |  45000 | 2026-05-28   |       3 | TCS          |
|    103 | SURAJ    | suraj@gmail.com   |   23 |  40000 | 2026-02-22   |       3 | TCS          |
|    104 | RAMAN    | raman@gmail.com   |   23 |  40000 | 2026-02-22   |       3 | TCS          |
|    105 | SAMRAT   | samrat@gmail.com  |   25 |  40000 | 2025-02-20   |       4 | TCS          |
|    106 | RAJAT    | rajat@gmail.com   |   23 |  35000 | 2024-02-22   |       4 | TCS          |
|    107 | RAHUL    | rahul@gmail.com   |   23 |  20000 | 2022-04-22   |       5 | TCS          |
|    108 | RANI     | rani@gmail.com    |   26 |  25000 | 2023-04-21   |       5 | TCS          |
|    109 | VAIBHAV  | vaibhav@gmail.com |   25 |  40000 | 2026-02-22   |       6 | TCS          |
|    110 | ROHIT    | rohit@gmail.com   |   24 |  30000 | 2023-08-15   |       7 | TCS          |
|    111 | RAM      | ra@gmail.com      |   23 | -60000 | 2025-03-23   |       5 | NULL         |
+--------+----------+-------------------+------+--------+--------------+---------+--------------+
11 rows in set (0.00 sec)

mysql> ALTER TABLE EMPLOYEE ADD CONSTRAINT CHECK(SALARY>0);
ERROR 3819 (HY000): Check constraint 'employee_chk_3' is violated.
mysql> #ALTER TABLE EMPLOYEE ADD CONSTRAINT FK_DEPT_ID FOREIGN KEY(DEPT_ID) REFERENCES DEPARTMENT(DEPT_ID);
mysql> #HOW TO DROP CONSTRAINT



mysql> UPDATE EMPLOYEE SET SALARY = 60000 WHERE EMP_ID = 111;
Query OK, 1 row affected (0.05 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> SELECT * FROM EMPLOYEE;
+--------+----------+-------------------+------+--------+--------------+---------+--------------+
| EMP_ID | EMP_NAME | EMAIL_ID          | AGE  | SALARY | JOINING_DATE | DEPT_ID | COMPANY_NAME |
+--------+----------+-------------------+------+--------+--------------+---------+--------------+
|    101 | NEHA     | neha@gmail.com    |   23 |  40000 | 2026-04-24   |       2 | TCS          |
|    102 | CANI     | ca@gmail.com      |   24 |  45000 | 2026-05-28   |       3 | TCS          |
|    103 | SURAJ    | suraj@gmail.com   |   23 |  40000 | 2026-02-22   |       3 | TCS          |
|    104 | RAMAN    | raman@gmail.com   |   23 |  40000 | 2026-02-22   |       3 | TCS          |
|    105 | SAMRAT   | samrat@gmail.com  |   25 |  40000 | 2025-02-20   |       4 | TCS          |
|    106 | RAJAT    | rajat@gmail.com   |   23 |  35000 | 2024-02-22   |       4 | TCS          |
|    107 | RAHUL    | rahul@gmail.com   |   23 |  20000 | 2022-04-22   |       5 | TCS          |
|    108 | RANI     | rani@gmail.com    |   26 |  25000 | 2023-04-21   |       5 | TCS          |
|    109 | VAIBHAV  | vaibhav@gmail.com |   25 |  40000 | 2026-02-22   |       6 | TCS          |
|    110 | ROHIT    | rohit@gmail.com   |   24 |  30000 | 2023-08-15   |       7 | TCS          |
|    111 | RAM      | ra@gmail.com      |   23 |  60000 | 2025-03-23   |       5 | NULL         |
+--------+----------+-------------------+------+--------+--------------+---------+--------------+
11 rows in set (0.00 sec)

mysql> ALTER TABLE EMPLOYEE ADD CONSTRAINT CHECK(SALARY>0);
Query OK, 11 rows affected (0.33 sec)
Records: 11  Duplicates: 0  Warnings: 0

mysql> INSERT INTO EMPLOYEE (EMP_NAME,EMAIL_ID,AGE,SALARY,JOINING_DATE,DEPT_ID)VALUES("RAM","ra@gmail.com",23,-60000,"2025-3-23",5);
ERROR 3819 (HY000): Check constraint 'employee_chk_3' is violated.
mysql> SELECT* FROM DEPARTMENT;
+---------+---------------+----------+-----------+
| DEPT_ID | DEPT_NAME     | DEPT_MOB | LOCATION  |
+---------+---------------+----------+-----------+
|       1 | HR            | NULL     | MUMBAI    |
|       2 | IT            | NULL     | PUNE      |
|       3 | FINANCE       | NULL     | DELHI     |
|       4 | MARKETING     | NULL     | BANGLORE  |
|       5 | SALES         | NULL     | HYDERABAD |
|       6 | NULL          | NULL     | PUNE      |
|       7 | SALES         | NULL     | NULL      |
|       8 | IT TECHNICIAN | NULL     | NASHIK    |
+---------+---------------+----------+-----------+
8 rows in set (0.01 sec)

mysql> UPDATE DEPARTMENT SET DEPAT_NAME = "OPERATION" WHERE DEPT_ID=7;
ERROR 1054 (42S22): Unknown column 'DEPAT_NAME' in 'field list'
mysql> UPDATE DEPARTMENT SET DEPT_NAME = "OPERATION" WHERE DEPT_ID=7;
Query OK, 1 row affected (0.06 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> SELECT* FROM DEPARTMENT;
+---------+---------------+----------+-----------+
| DEPT_ID | DEPT_NAME     | DEPT_MOB | LOCATION  |
+---------+---------------+----------+-----------+
|       1 | HR            | NULL     | MUMBAI    |
|       2 | IT            | NULL     | PUNE      |
|       3 | FINANCE       | NULL     | DELHI     |
|       4 | MARKETING     | NULL     | BANGLORE  |
|       5 | SALES         | NULL     | HYDERABAD |
|       6 | NULL          | NULL     | PUNE      |
|       7 | OPERATION     | NULL     | NULL      |
|       8 | IT TECHNICIAN | NULL     | NASHIK    |
+---------+---------------+----------+-----------+
8 rows in set (0.00 sec)

mysql> UPDATE DEPARTMENT SET DEPT_NAME = "PLACEMENT", LOCATION = "MUMBAI" WHERE DEPT_ID = 5;
Query OK, 1 row affected (0.02 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> SELECT* FROM DEPARTMENT;
+---------+---------------+----------+----------+
| DEPT_ID | DEPT_NAME     | DEPT_MOB | LOCATION |
+---------+---------------+----------+----------+
|       1 | HR            | NULL     | MUMBAI   |
|       2 | IT            | NULL     | PUNE     |
|       3 | FINANCE       | NULL     | DELHI    |
|       4 | MARKETING     | NULL     | BANGLORE |
|       5 | PLACEMENT     | NULL     | MUMBAI   |
|       6 | NULL          | NULL     | PUNE     |
|       7 | OPERATION     | NULL     | NULL     |
|       8 | IT TECHNICIAN | NULL     | NASHIK   |
+---------+---------------+----------+----------+
8 rows in set (0.00 sec)

mysql> INSERT INTO DEPARTMENT VALUES(9,NULL,NULL);
ERROR 1136 (21S01): Column count doesn't match value count at row 1
mysql> INSERT INTO DEPARTMENT VALUES(9,NULL,NULL,NULL);
Query OK, 1 row affected (0.01 sec)

mysql> UPDATE DEPARTMENT SET LOCATION = "HYD" WHERE DEPT_ID = (7 OR 8);
Query OK, 1 row affected (0.09 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> SELECT* FROM DEPARTMENT;
+---------+---------------+----------+----------+
| DEPT_ID | DEPT_NAME     | DEPT_MOB | LOCATION |
+---------+---------------+----------+----------+
|       1 | HR            | NULL     | HYD      |
|       2 | IT            | NULL     | PUNE     |
|       3 | FINANCE       | NULL     | DELHI    |
|       4 | MARKETING     | NULL     | BANGLORE |
|       5 | PLACEMENT     | NULL     | MUMBAI   |
|       6 | NULL          | NULL     | PUNE     |
|       7 | OPERATION     | NULL     | NULL     |
|       8 | IT TECHNICIAN | NULL     | NASHIK   |
|       9 | NULL          | NULL     | NULL     |
+---------+---------------+----------+----------+
9 rows in set (0.00 sec)

mysql> UPDATE DEPARTMENT SET LOCATION = "HYD" WHERE DEPT_ID = 7 OR DEPT_ID = 8;
Query OK, 2 rows affected (0.01 sec)
Rows matched: 2  Changed: 2  Warnings: 0

mysql> SELECT* FROM DEPARTMENT;
+---------+---------------+----------+----------+
| DEPT_ID | DEPT_NAME     | DEPT_MOB | LOCATION |
+---------+---------------+----------+----------+
|       1 | HR            | NULL     | HYD      |
|       2 | IT            | NULL     | PUNE     |
|       3 | FINANCE       | NULL     | DELHI    |
|       4 | MARKETING     | NULL     | BANGLORE |
|       5 | PLACEMENT     | NULL     | MUMBAI   |
|       6 | NULL          | NULL     | PUNE     |
|       7 | OPERATION     | NULL     | HYD      |
|       8 | IT TECHNICIAN | NULL     | HYD      |
|       9 | NULL          | NULL     | NULL     |
+---------+---------------+----------+----------+
9 rows in set (0.00 sec)

mysql> UPDATE DEPARTMENT SET LOCATION = "HYD" WHERE DEPT_ID IN ('7' OR '9');
Query OK, 0 rows affected (0.00 sec)
Rows matched: 1  Changed: 0  Warnings: 0

mysql> SELECT* FROM DEPARTMENT;
+---------+---------------+----------+----------+
| DEPT_ID | DEPT_NAME     | DEPT_MOB | LOCATION |
+---------+---------------+----------+----------+
|       1 | HR            | NULL     | HYD      |
|       2 | IT            | NULL     | PUNE     |
|       3 | FINANCE       | NULL     | DELHI    |
|       4 | MARKETING     | NULL     | BANGLORE |
|       5 | PLACEMENT     | NULL     | MUMBAI   |
|       6 | NULL          | NULL     | PUNE     |
|       7 | OPERATION     | NULL     | HYD      |
|       8 | IT TECHNICIAN | NULL     | HYD      |
|       9 | NULL          | NULL     | NULL     |
+---------+---------------+----------+----------+
9 rows in set (0.00 sec)

mysql>