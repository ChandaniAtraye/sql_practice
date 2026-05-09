
mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| aprilbatch         |
| classicmodels      |
| college            |
| democlauses        |
| democonstraints    |
| demotrigger        |
| demowindowfunction |
| indexdemo          |
| information_schema |
| instagram          |
| joindemo           |
| mysql              |
| new_version_db     |
| performance_schema |
| practiceset        |
| sample             |
| school             |
| student_data       |
| sys                |
| tcl                |
| tcs                |
| time_test          |
| viewdemo           |
+--------------------+
23 rows in set (0.11 sec)

mysql> use tcs;
Database changed
mysql> show tables;
+---------------+
| Tables_in_tcs |
+---------------+
| department    |
| employee      |
+---------------+
2 rows in set (0.02 sec)

mysql> select * from employee;
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
11 rows in set (0.04 sec)

mysql> INSERT INTO EMPLOYEE(eMP_NAME,eMAIL_ID,AGE,SALARY,JOINING_DATE,DEPT_ID)
    -> ^C
mysql> INSERT INTO EMPLOYEE(EMP_NAME,eMAIL_ID,AGE,SALARY,JOINING_DATE,DEPT_ID)
    -> INSERT INTO EMPLOYEE(EMP_NAME,EMAIL_ID,AGE,SALARY,JOINING_DATE,DEPT_ID)
    -> VALUES("MEENA","meena@gmail.com",25,35000,"2025-04-28",1),
    -> ("RAKESH","rakesh@gmail.com",45,35000,"2017-12-20",5),
    -> ("NEHA","neha3@gmail.com",23,40000,"2026-03-01",2),
    -> ("RAKESH","rakesh3@gmail.com",45,35000,"2017-10-20",5);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'INSERT INTO EMPLOYEE(EMP_NAME,EMAIL_ID,AGE,SALARY,JOINING_DATE,DEPT_ID)
VALUES("' at line 2
mysql> INSERT INTO EMPLOYEE(EMP_NAME,EMAIL_ID,AGE,SALARY,JOINING_DATE,DEPT_ID)
    -> VALUES("MEENA","meena@gmail.com",25,35000,"2025-04-28",1);
Query OK, 1 row affected (0.46 sec)

mysql> INSERT INTO EMPLOYEE(EMP_NAME,EMAIL_ID,AGE,SALARY,JOINING_DATE,DEPT_ID)
    -> VALUES("RAKESH","rakesh@gmail.com",45,35000,"2017-12-20",5),
    -> ("NEHA","neha3@gmail.com",23,40000,"2026-03-01",2);
Query OK, 2 rows affected (0.31 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> INSERT INTO EMPLOYEE(EMP_NAME,EMAIL_ID,AGE,SALARY,JOINING_DATE,DEPT_ID)
    -> VALUES("RAKESH","rakesh3@gmail.com",45,35000,"2017-10-20",5);
Query OK, 1 row affected (0.01 sec)

mysql> select * from employee;
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
|    112 | MEENA    | meena@gmail.com   |   25 |  35000 | 2025-04-28   |       1 | NULL         |
|    113 | RAKESH   | rakesh@gmail.com  |   45 |  35000 | 2017-12-20   |       5 | NULL         |
|    114 | NEHA     | neha3@gmail.com   |   23 |  40000 | 2026-03-01   |       2 | NULL         |
|    115 | RAKESH   | rakesh3@gmail.com |   45 |  35000 | 2017-10-20   |       5 | NULL         |
+--------+----------+-------------------+------+--------+--------------+---------+--------------+
15 rows in set (0.00 sec)

mysql> UPDATE EMPLOYEE SET COMPANY_NAME = "TCS" WHERE COMPANY_NAME = NULL;
Query OK, 0 rows affected (0.04 sec)
Rows matched: 0  Changed: 0  Warnings: 0

mysql> select * from employee;
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
|    112 | MEENA    | meena@gmail.com   |   25 |  35000 | 2025-04-28   |       1 | NULL         |
|    113 | RAKESH   | rakesh@gmail.com  |   45 |  35000 | 2017-12-20   |       5 | NULL         |
|    114 | NEHA     | neha3@gmail.com   |   23 |  40000 | 2026-03-01   |       2 | NULL         |
|    115 | RAKESH   | rakesh3@gmail.com |   45 |  35000 | 2017-10-20   |       5 | NULL         |
+--------+----------+-------------------+------+--------+--------------+---------+--------------+
15 rows in set (0.00 sec)

mysql> UPDATE EMPLOYEE SET COMPANY_NAME = TCS WHERE COMPANY_NAME = NULL;
ERROR 1054 (42S22): Unknown column 'TCS' in 'field list'
mysql> UPDATE EMPLOYEE SET COMPANY_NAME = "TCS" WHERE COMPANY_NAME IS NULL;
Query OK, 5 rows affected (0.08 sec)
Rows matched: 5  Changed: 5  Warnings: 0

mysql> select * from employee;
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
|    111 | RAM      | ra@gmail.com      |   23 |  60000 | 2025-03-23   |       5 | TCS          |
|    112 | MEENA    | meena@gmail.com   |   25 |  35000 | 2025-04-28   |       1 | TCS          |
|    113 | RAKESH   | rakesh@gmail.com  |   45 |  35000 | 2017-12-20   |       5 | TCS          |
|    114 | NEHA     | neha3@gmail.com   |   23 |  40000 | 2026-03-01   |       2 | TCS          |
|    115 | RAKESH   | rakesh3@gmail.com |   45 |  35000 | 2017-10-20   |       5 | TCS          |
+--------+----------+-------------------+------+--------+--------------+---------+--------------+
15 rows in set (0.00 sec)

mysql> INSERT INTO EMPLOYEE(EMP_NAME,EMAIL_ID,AGE,SALARY,JOINING_DATE,DEPT_ID)
    -> VALUES("RAHUL",NULL,45,35000,"2024-12-20",6);
Query OK, 1 row affected (0.09 sec)

mysql> select * from employee;
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
|    111 | RAM      | ra@gmail.com      |   23 |  60000 | 2025-03-23   |       5 | TCS          |
|    112 | MEENA    | meena@gmail.com   |   25 |  35000 | 2025-04-28   |       1 | TCS          |
|    113 | RAKESH   | rakesh@gmail.com  |   45 |  35000 | 2017-12-20   |       5 | TCS          |
|    114 | NEHA     | neha3@gmail.com   |   23 |  40000 | 2026-03-01   |       2 | TCS          |
|    115 | RAKESH   | rakesh3@gmail.com |   45 |  35000 | 2017-10-20   |       5 | TCS          |
|    116 | RAHUL    | NULL              |   45 |  35000 | 2024-12-20   |       6 | NULL         |
+--------+----------+-------------------+------+--------+--------------+---------+--------------+
16 rows in set (0.00 sec)

mysql> ALTER TABLE EMPLOYEE ADD CONSTRAINTS COMPANY_NAME DEFAULT "TCS";
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'COMPANY_NAME DEFAULT "TCS"' at line 1
mysql> ALTER TABLE EMPLOYEE ADD CONSTRAINTS COMPANY_NAME SET DEFAULT "TCS";
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'COMPANY_NAME SET DEFAULT "TCS"' at line 1
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
8 rows in set (0.37 sec)

mysql> ALTER TABLE EMPLOYEE MODIFY COMPANY_NAME CHAR(3) DEFAULT 'TCS';
Query OK, 16 rows affected (0.82 sec)
Records: 16  Duplicates: 0  Warnings: 0

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
| COMPANY_NAME | char(3)     | YES  |     | TCS     |                |
+--------------+-------------+------+-----+---------+----------------+
8 rows in set (0.00 sec)

mysql> select * from employee;
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
|    111 | RAM      | ra@gmail.com      |   23 |  60000 | 2025-03-23   |       5 | TCS          |
|    112 | MEENA    | meena@gmail.com   |   25 |  35000 | 2025-04-28   |       1 | TCS          |
|    113 | RAKESH   | rakesh@gmail.com  |   45 |  35000 | 2017-12-20   |       5 | TCS          |
|    114 | NEHA     | neha3@gmail.com   |   23 |  40000 | 2026-03-01   |       2 | TCS          |
|    115 | RAKESH   | rakesh3@gmail.com |   45 |  35000 | 2017-10-20   |       5 | TCS          |
|    116 | RAHUL    | NULL              |   45 |  35000 | 2024-12-20   |       6 | NULL         |
+--------+----------+-------------------+------+--------+--------------+---------+--------------+
16 rows in set (0.00 sec)

mysql> UPDATE EMPLOYEE SET COMPANY_NAME = 'TCS' WHERE EMP_ID = 116;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from employee;
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
|    111 | RAM      | ra@gmail.com      |   23 |  60000 | 2025-03-23   |       5 | TCS          |
|    112 | MEENA    | meena@gmail.com   |   25 |  35000 | 2025-04-28   |       1 | TCS          |
|    113 | RAKESH   | rakesh@gmail.com  |   45 |  35000 | 2017-12-20   |       5 | TCS          |
|    114 | NEHA     | neha3@gmail.com   |   23 |  40000 | 2026-03-01   |       2 | TCS          |
|    115 | RAKESH   | rakesh3@gmail.com |   45 |  35000 | 2017-10-20   |       5 | TCS          |
|    116 | RAHUL    | NULL              |   45 |  35000 | 2024-12-20   |       6 | TCS          |
+--------+----------+-------------------+------+--------+--------------+---------+--------------+
16 rows in set (0.00 sec)

mysql> INSERT INTO EMPLOYEE(EMP_NAME,EMAIL_ID,AGE,SALARY,JOINING_DATE,DEPT_ID)
    -> VALUES("RIYA","riya@gmail.com",22,35000,"2025-02-01",2),
    -> ("RIYA","riya2@gmail.com",45,35000,"2025-01-25",2),
    -> ("DEEPA","deepa2@gmail.com",38,35000,"2019-11-30",5);
Query OK, 3 rows affected (0.31 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> select * from employee;
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
|    111 | RAM      | ra@gmail.com      |   23 |  60000 | 2025-03-23   |       5 | TCS          |
|    112 | MEENA    | meena@gmail.com   |   25 |  35000 | 2025-04-28   |       1 | TCS          |
|    113 | RAKESH   | rakesh@gmail.com  |   45 |  35000 | 2017-12-20   |       5 | TCS          |
|    114 | NEHA     | neha3@gmail.com   |   23 |  40000 | 2026-03-01   |       2 | TCS          |
|    115 | RAKESH   | rakesh3@gmail.com |   45 |  35000 | 2017-10-20   |       5 | TCS          |
|    116 | RAHUL    | NULL              |   45 |  35000 | 2024-12-20   |       6 | TCS          |
|    117 | RIYA     | riya@gmail.com    |   22 |  35000 | 2025-02-01   |       2 | TCS          |
|    118 | RIYA     | riya2@gmail.com   |   45 |  35000 | 2025-01-25   |       2 | TCS          |
|    119 | DEEPA    | deepa2@gmail.com  |   38 |  35000 | 2019-11-30   |       5 | TCS          |
+--------+----------+-------------------+------+--------+--------------+---------+--------------+
19 rows in set (0.00 sec)

mysql> INSERT INTO EMPLOYEE(EMP_NAME,EMAIL_ID,AGE,SALARY,JOINING_DATE,DEPT_ID)
    -> VALUES("SANJAY","sanjay@gmail.com",41,80000,"2018-08-09",4),
    -> ("DEEPA","deepa@gmail.com",38,35000,"2019-04-11",5);
Query OK, 2 rows affected (0.01 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> select * from employee;
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
|    111 | RAM      | ra@gmail.com      |   23 |  60000 | 2025-03-23   |       5 | TCS          |
|    112 | MEENA    | meena@gmail.com   |   25 |  35000 | 2025-04-28   |       1 | TCS          |
|    113 | RAKESH   | rakesh@gmail.com  |   45 |  35000 | 2017-12-20   |       5 | TCS          |
|    114 | NEHA     | neha3@gmail.com   |   23 |  40000 | 2026-03-01   |       2 | TCS          |
|    115 | RAKESH   | rakesh3@gmail.com |   45 |  35000 | 2017-10-20   |       5 | TCS          |
|    116 | RAHUL    | NULL              |   45 |  35000 | 2024-12-20   |       6 | TCS          |
|    117 | RIYA     | riya@gmail.com    |   22 |  35000 | 2025-02-01   |       2 | TCS          |
|    118 | RIYA     | riya2@gmail.com   |   45 |  35000 | 2025-01-25   |       2 | TCS          |
|    119 | DEEPA    | deepa2@gmail.com  |   38 |  35000 | 2019-11-30   |       5 | TCS          |
|    120 | SANJAY   | sanjay@gmail.com  |   41 |  80000 | 2018-08-09   |       4 | TCS          |
|    121 | DEEPA    | deepa@gmail.com   |   38 |  35000 | 2019-04-11   |       5 | TCS          |
+--------+----------+-------------------+------+--------+--------------+---------+--------------+
21 rows in set (0.00 sec)

mysql> UPDATE EMPLOYEE SET AGE = 28 ,SALARY = 55000 WHERE EMP_ID =114;
Query OK, 1 row affected (0.05 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> UPDATE EMPLOYEE SET AGE = 33 , SALARY = 89000 WHERE EMP_ID = 113;
Query OK, 1 row affected (0.05 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> UPDATE EMPLOYEE SET AGE = 33 , SALARY = 12000 WHERE EMP_ID = 115;
Query OK, 1 row affected (0.01 sec)
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
|    111 | RAM      | ra@gmail.com      |   23 |  60000 | 2025-03-23   |       5 | TCS          |
|    112 | MEENA    | meena@gmail.com   |   25 |  35000 | 2025-04-28   |       1 | TCS          |
|    113 | RAKESH   | rakesh@gmail.com  |   33 |  89000 | 2017-12-20   |       5 | TCS          |
|    114 | NEHA     | neha3@gmail.com   |   28 |  55000 | 2026-03-01   |       2 | TCS          |
|    115 | RAKESH   | rakesh3@gmail.com |   33 |  12000 | 2017-10-20   |       5 | TCS          |
|    116 | RAHUL    | NULL              |   45 |  35000 | 2024-12-20   |       6 | TCS          |
|    117 | RIYA     | riya@gmail.com    |   22 |  35000 | 2025-02-01   |       2 | TCS          |
|    118 | RIYA     | riya2@gmail.com   |   45 |  35000 | 2025-01-25   |       2 | TCS          |
|    119 | DEEPA    | deepa2@gmail.com  |   38 |  35000 | 2019-11-30   |       5 | TCS          |
|    120 | SANJAY   | sanjay@gmail.com  |   41 |  80000 | 2018-08-09   |       4 | TCS          |
|    121 | DEEPA    | deepa@gmail.com   |   38 |  35000 | 2019-04-11   |       5 | TCS          |
+--------+----------+-------------------+------+--------+--------------+---------+--------------+
21 rows in set (0.00 sec)

mysql> # CRUD - CREATE , READ ,UPDATE,DELETE
mysql> #FETCH SPECIFIC (SINGLE) COLUMN  FROM TABLE (EMP_NAME)
mysql> SELECT EMP_NAME,AGE,SALARY FROM EMPLOYEE;
+----------+------+--------+
| EMP_NAME | AGE  | SALARY |
+----------+------+--------+
| NEHA     |   23 |  40000 |
| CANI     |   24 |  45000 |
| SURAJ    |   23 |  40000 |
| RAMAN    |   23 |  40000 |
| SAMRAT   |   25 |  40000 |
| RAJAT    |   23 |  35000 |
| RAHUL    |   23 |  20000 |
| RANI     |   26 |  25000 |
| VAIBHAV  |   25 |  40000 |
| ROHIT    |   24 |  30000 |
| RAM      |   23 |  60000 |
| MEENA    |   25 |  35000 |
| RAKESH   |   33 |  89000 |
| NEHA     |   28 |  55000 |
| RAKESH   |   33 |  12000 |
| RAHUL    |   45 |  35000 |
| RIYA     |   22 |  35000 |
| RIYA     |   45 |  35000 |
| DEEPA    |   38 |  35000 |
| SANJAY   |   41 |  80000 |
| DEEPA    |   38 |  35000 |
+----------+------+--------+
21 rows in set (0.00 sec)

mysql> SELECT EMP_NAME DISTINCT,AGE,SALARY FROM EMPLOYEE;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'DISTINCT,AGE,SALARY FROM EMPLOYEE' at line 1
mysql> SELECT DISTINCT EMP_NAME,AGE,SALARY FROM EMPLOYEE;
+----------+------+--------+
| EMP_NAME | AGE  | SALARY |
+----------+------+--------+
| NEHA     |   23 |  40000 |
| CANI     |   24 |  45000 |
| SURAJ    |   23 |  40000 |
| RAMAN    |   23 |  40000 |
| SAMRAT   |   25 |  40000 |
| RAJAT    |   23 |  35000 |
| RAHUL    |   23 |  20000 |
| RANI     |   26 |  25000 |
| VAIBHAV  |   25 |  40000 |
| ROHIT    |   24 |  30000 |
| RAM      |   23 |  60000 |
| MEENA    |   25 |  35000 |
| RAKESH   |   33 |  89000 |
| NEHA     |   28 |  55000 |
| RAKESH   |   33 |  12000 |
| RAHUL    |   45 |  35000 |
| RIYA     |   22 |  35000 |
| RIYA     |   45 |  35000 |
| DEEPA    |   38 |  35000 |
| SANJAY   |   41 |  80000 |
+----------+------+--------+
20 rows in set (0.01 sec)

mysql> SELECT DISTINCT EMP_NAME FROM EMPLOYEE;
+----------+
| EMP_NAME |
+----------+
| NEHA     |
| CANI     |
| SURAJ    |
| RAMAN    |
| SAMRAT   |
| RAJAT    |
| RAHUL    |
| RANI     |
| VAIBHAV  |
| ROHIT    |
| RAM      |
| MEENA    |
| RAKESH   |
| RIYA     |
| DEEPA    |
| SANJAY   |
+----------+
16 rows in set (0.00 sec)

mysql> # ALIAS - TEMPORARY NAME
mysql> SELECT EMP_NAME AS FIRST_NAME FROM EMPLOYEE;
+------------+
| FIRST_NAME |
+------------+
| NEHA       |
| CANI       |
| SURAJ      |
| RAMAN      |
| SAMRAT     |
| RAJAT      |
| RAHUL      |
| RANI       |
| VAIBHAV    |
| ROHIT      |
| RAM        |
| MEENA      |
| RAKESH     |
| NEHA       |
| RAKESH     |
| RAHUL      |
| RIYA       |
| RIYA       |
| DEEPA      |
| SANJAY     |
| DEEPA      |
+------------+
21 rows in set (0.00 sec)

mysql> SELECT EMP_NAME AS FIRST_NAME , AGE AS EMP_AGE FROM EMPLOYEE;
+------------+---------+
| FIRST_NAME | EMP_AGE |
+------------+---------+
| NEHA       |      23 |
| CANI       |      24 |
| SURAJ      |      23 |
| RAMAN      |      23 |
| SAMRAT     |      25 |
| RAJAT      |      23 |
| RAHUL      |      23 |
| RANI       |      26 |
| VAIBHAV    |      25 |
| ROHIT      |      24 |
| RAM        |      23 |
| MEENA      |      25 |
| RAKESH     |      33 |
| NEHA       |      28 |
| RAKESH     |      33 |
| RAHUL      |      45 |
| RIYA       |      22 |
| RIYA       |      45 |
| DEEPA      |      38 |
| SANJAY     |      41 |
| DEEPA      |      38 |
+------------+---------+
21 rows in set (0.00 sec)

mysql> SELECT EMP_NAME AS FIRST_NAME , AGE AS EMP_AGE ,JOINING_DATE AS DOJ FROM EMPLOYEE;
+------------+---------+------------+
| FIRST_NAME | EMP_AGE | DOJ        |
+------------+---------+------------+
| NEHA       |      23 | 2026-04-24 |
| CANI       |      24 | 2026-05-28 |
| SURAJ      |      23 | 2026-02-22 |
| RAMAN      |      23 | 2026-02-22 |
| SAMRAT     |      25 | 2025-02-20 |
| RAJAT      |      23 | 2024-02-22 |
| RAHUL      |      23 | 2022-04-22 |
| RANI       |      26 | 2023-04-21 |
| VAIBHAV    |      25 | 2026-02-22 |
| ROHIT      |      24 | 2023-08-15 |
| RAM        |      23 | 2025-03-23 |
| MEENA      |      25 | 2025-04-28 |
| RAKESH     |      33 | 2017-12-20 |
| NEHA       |      28 | 2026-03-01 |
| RAKESH     |      33 | 2017-10-20 |
| RAHUL      |      45 | 2024-12-20 |
| RIYA       |      22 | 2025-02-01 |
| RIYA       |      45 | 2025-01-25 |
| DEEPA      |      38 | 2019-11-30 |
| SANJAY     |      41 | 2018-08-09 |
| DEEPA      |      38 | 2019-04-11 |
+------------+---------+------------+
21 rows in set (0.00 sec)

mysql> # RESTRICTION ON ROW - FIRST 5 RECORDS FROM ROW
mysql> #FOR THIS WE HAVE CLAUSE - COMBINATION OF COMMAND OR RULES (LIMIT,GROUP BY ,HAVING ,WHERE,)
mysql> SELECT * FROM EMPLOYEE LIMIT 5;
+--------+----------+------------------+------+--------+--------------+---------+--------------+
| EMP_ID | EMP_NAME | EMAIL_ID         | AGE  | SALARY | JOINING_DATE | DEPT_ID | COMPANY_NAME |
+--------+----------+------------------+------+--------+--------------+---------+--------------+
|    101 | NEHA     | neha@gmail.com   |   23 |  40000 | 2026-04-24   |       2 | TCS          |
|    102 | CANI     | ca@gmail.com     |   24 |  45000 | 2026-05-28   |       3 | TCS          |
|    103 | SURAJ    | suraj@gmail.com  |   23 |  40000 | 2026-02-22   |       3 | TCS          |
|    104 | RAMAN    | raman@gmail.com  |   23 |  40000 | 2026-02-22   |       3 | TCS          |
|    105 | SAMRAT   | samrat@gmail.com |   25 |  40000 | 2025-02-20   |       4 | TCS          |
+--------+----------+------------------+------+--------+--------------+---------+--------------+
5 rows in set (0.00 sec)

mysql> SELECT * FROM EMPLOYEE LIMIT (8,5);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '(8,5)' at line 1
mysql> SELECT * FROM EMPLOYEE LIMIT 8,5;
+--------+----------+-------------------+------+--------+--------------+---------+--------------+
| EMP_ID | EMP_NAME | EMAIL_ID          | AGE  | SALARY | JOINING_DATE | DEPT_ID | COMPANY_NAME |
+--------+----------+-------------------+------+--------+--------------+---------+--------------+
|    109 | VAIBHAV  | vaibhav@gmail.com |   25 |  40000 | 2026-02-22   |       6 | TCS          |
|    110 | ROHIT    | rohit@gmail.com   |   24 |  30000 | 2023-08-15   |       7 | TCS          |
|    111 | RAM      | ra@gmail.com      |   23 |  60000 | 2025-03-23   |       5 | TCS          |
|    112 | MEENA    | meena@gmail.com   |   25 |  35000 | 2025-04-28   |       1 | TCS          |
|    113 | RAKESH   | rakesh@gmail.com  |   33 |  89000 | 2017-12-20   |       5 | TCS          |
+--------+----------+-------------------+------+--------+--------------+---------+--------------+
5 rows in set (0.00 sec)

mysql> SELECT * FROM EMPLOYEE LIMIT (5);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '(5)' at line 1
mysql> SELECT * FROM EMPLOYEE LIMIT 13,7;
+--------+----------+-------------------+------+--------+--------------+---------+--------------+
| EMP_ID | EMP_NAME | EMAIL_ID          | AGE  | SALARY | JOINING_DATE | DEPT_ID | COMPANY_NAME |
+--------+----------+-------------------+------+--------+--------------+---------+--------------+
|    114 | NEHA     | neha3@gmail.com   |   28 |  55000 | 2026-03-01   |       2 | TCS          |
|    115 | RAKESH   | rakesh3@gmail.com |   33 |  12000 | 2017-10-20   |       5 | TCS          |
|    116 | RAHUL    | NULL              |   45 |  35000 | 2024-12-20   |       6 | TCS          |
|    117 | RIYA     | riya@gmail.com    |   22 |  35000 | 2025-02-01   |       2 | TCS          |
|    118 | RIYA     | riya2@gmail.com   |   45 |  35000 | 2025-01-25   |       2 | TCS          |
|    119 | DEEPA    | deepa2@gmail.com  |   38 |  35000 | 2019-11-30   |       5 | TCS          |
|    120 | SANJAY   | sanjay@gmail.com  |   41 |  80000 | 2018-08-09   |       4 | TCS          |
+--------+----------+-------------------+------+--------+--------------+---------+--------------+
7 rows in set (0.00 sec)

mysql> SELECT COUNT(*) FROM EMPLOYEE;
+----------+
| COUNT(*) |
+----------+
|       21 |
+----------+
1 row in set (0.05 sec)

mysql> SELECT COUNT() FROM EMPLOYEE;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ') FROM EMPLOYEE' at line 1
mysql> SELECT COUNT FROM EMPLOYEE;
ERROR 1054 (42S22): Unknown column 'COUNT' in 'field list'
mysql> SELECT COUNT() FROM EMPLOYEE;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ') FROM EMPLOYEE' at line 1
mysql> SELECT COUNT() ,FROM EMPLOYEE;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ') ,FROM EMPLOYEE' at line 1
mysql> SELECT COUNT(EMP_NAME) FROM EMPLOYEE;
+-----------------+
| COUNT(EMP_NAME) |
+-----------------+
|              21 |
+-----------------+
1 row in set (0.18 sec)

mysql> SELECT COUNT(*) AS T_COUNT_I.NULL FROM EMPLOYEE;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '.NULL FROM EMPLOYEE' at line 1
mysql> SELECT COUNT(*) AS T_COUNT_I_NULL FROM EMPLOYEE;
+----------------+
| T_COUNT_I_NULL |
+----------------+
|             21 |
+----------------+
1 row in set (0.00 sec)

mysql> SELECT COUNT(*) AS "T_COUNT(INCLUDING NULL)" FROM EMPLOYEE;
+-------------------------+
| T_COUNT(INCLUDING NULL) |
+-------------------------+
|                      21 |
+-------------------------+
1 row in set (0.00 sec)

mysql> SELECT COUNT(EMAIL_ID) AS "(T_ROWS EXCLUDING NULL)" FROM EMPLOYEE;
+-------------------------+
| (T_ROWS EXCLUDING NULL) |
+-------------------------+
|                      20 |
+-------------------------+
1 row in set (0.01 sec)

mysql> SELECT COUNT(DISTINCT EMP_NAME) UNIQUE_EMP_NAME FROM EMPLOYEE;
+-----------------+
| UNIQUE_EMP_NAME |
+-----------------+
|              16 |
+-----------------+
1 row in set (0.01 sec)

mysql> # WHERE CLAUSE ==> TO FILTER OUT RECORDS BASED ON CERTAIN CONDITION
mysql> #ARITHMETIC OPERATOR ==> (+,-,*,/,%(MODULUS =>  REMAINDER ).
mysql> COMARISON OPERATOR (<,>,=,<=,>=,!=(<>)).
    -> ^C
mysql> SELECT * FROM EMPLOYEE WHERE EMP_NAME = "NEHA";
+--------+----------+-----------------+------+--------+--------------+---------+--------------+
| EMP_ID | EMP_NAME | EMAIL_ID        | AGE  | SALARY | JOINING_DATE | DEPT_ID | COMPANY_NAME |
+--------+----------+-----------------+------+--------+--------------+---------+--------------+
|    101 | NEHA     | neha@gmail.com  |   23 |  40000 | 2026-04-24   |       2 | TCS          |
|    114 | NEHA     | neha3@gmail.com |   28 |  55000 | 2026-03-01   |       2 | TCS          |
+--------+----------+-----------------+------+--------+--------------+---------+--------------+
2 rows in set (0.00 sec)

mysql> SELECT * FROM EMPLOYEE WHERE EMP_NAME != "NEHA";
+--------+----------+-------------------+------+--------+--------------+---------+--------------+
| EMP_ID | EMP_NAME | EMAIL_ID          | AGE  | SALARY | JOINING_DATE | DEPT_ID | COMPANY_NAME |
+--------+----------+-------------------+------+--------+--------------+---------+--------------+
|    102 | CANI     | ca@gmail.com      |   24 |  45000 | 2026-05-28   |       3 | TCS          |
|    103 | SURAJ    | suraj@gmail.com   |   23 |  40000 | 2026-02-22   |       3 | TCS          |
|    104 | RAMAN    | raman@gmail.com   |   23 |  40000 | 2026-02-22   |       3 | TCS          |
|    105 | SAMRAT   | samrat@gmail.com  |   25 |  40000 | 2025-02-20   |       4 | TCS          |
|    106 | RAJAT    | rajat@gmail.com   |   23 |  35000 | 2024-02-22   |       4 | TCS          |
|    107 | RAHUL    | rahul@gmail.com   |   23 |  20000 | 2022-04-22   |       5 | TCS          |
|    108 | RANI     | rani@gmail.com    |   26 |  25000 | 2023-04-21   |       5 | TCS          |
|    109 | VAIBHAV  | vaibhav@gmail.com |   25 |  40000 | 2026-02-22   |       6 | TCS          |
|    110 | ROHIT    | rohit@gmail.com   |   24 |  30000 | 2023-08-15   |       7 | TCS          |
|    111 | RAM      | ra@gmail.com      |   23 |  60000 | 2025-03-23   |       5 | TCS          |
|    112 | MEENA    | meena@gmail.com   |   25 |  35000 | 2025-04-28   |       1 | TCS          |
|    113 | RAKESH   | rakesh@gmail.com  |   33 |  89000 | 2017-12-20   |       5 | TCS          |
|    115 | RAKESH   | rakesh3@gmail.com |   33 |  12000 | 2017-10-20   |       5 | TCS          |
|    116 | RAHUL    | NULL              |   45 |  35000 | 2024-12-20   |       6 | TCS          |
|    117 | RIYA     | riya@gmail.com    |   22 |  35000 | 2025-02-01   |       2 | TCS          |
|    118 | RIYA     | riya2@gmail.com   |   45 |  35000 | 2025-01-25   |       2 | TCS          |
|    119 | DEEPA    | deepa2@gmail.com  |   38 |  35000 | 2019-11-30   |       5 | TCS          |
|    120 | SANJAY   | sanjay@gmail.com  |   41 |  80000 | 2018-08-09   |       4 | TCS          |
|    121 | DEEPA    | deepa@gmail.com   |   38 |  35000 | 2019-04-11   |       5 | TCS          |
+--------+----------+-------------------+------+--------+--------------+---------+--------------+
19 rows in set (0.00 sec)

mysql> SELECT * FROM EMPLOYEE WHERE SALARY < 35000;
+--------+----------+-------------------+------+--------+--------------+---------+--------------+
| EMP_ID | EMP_NAME | EMAIL_ID          | AGE  | SALARY | JOINING_DATE | DEPT_ID | COMPANY_NAME |
+--------+----------+-------------------+------+--------+--------------+---------+--------------+
|    107 | RAHUL    | rahul@gmail.com   |   23 |  20000 | 2022-04-22   |       5 | TCS          |
|    108 | RANI     | rani@gmail.com    |   26 |  25000 | 2023-04-21   |       5 | TCS          |
|    110 | ROHIT    | rohit@gmail.com   |   24 |  30000 | 2023-08-15   |       7 | TCS          |
|    115 | RAKESH   | rakesh3@gmail.com |   33 |  12000 | 2017-10-20   |       5 | TCS          |
+--------+----------+-------------------+------+--------+--------------+---------+--------------+
4 rows in set (0.00 sec)

mysql> --LOGICAL OPERATOR (AND ,OR ,NOT)
    -> ^C
mysql> -- LOGICAL
mysql> SELECT * FROM EMPLOYEE WHERE SALARY < 35000 AND AGE = 23;
+--------+----------+-----------------+------+--------+--------------+---------+--------------+
| EMP_ID | EMP_NAME | EMAIL_ID        | AGE  | SALARY | JOINING_DATE | DEPT_ID | COMPANY_NAME |
+--------+----------+-----------------+------+--------+--------------+---------+--------------+
|    107 | RAHUL    | rahul@gmail.com |   23 |  20000 | 2022-04-22   |       5 | TCS          |
+--------+----------+-----------------+------+--------+--------------+---------+--------------+
1 row in set (0.00 sec)

mysql> SELECT * FROM EMPLOYEE WHERE SALARY > 35000 AND AGE = 23;
+--------+----------+-----------------+------+--------+--------------+---------+--------------+
| EMP_ID | EMP_NAME | EMAIL_ID        | AGE  | SALARY | JOINING_DATE | DEPT_ID | COMPANY_NAME |
+--------+----------+-----------------+------+--------+--------------+---------+--------------+
|    101 | NEHA     | neha@gmail.com  |   23 |  40000 | 2026-04-24   |       2 | TCS          |
|    103 | SURAJ    | suraj@gmail.com |   23 |  40000 | 2026-02-22   |       3 | TCS          |
|    104 | RAMAN    | raman@gmail.com |   23 |  40000 | 2026-02-22   |       3 | TCS          |
|    111 | RAM      | ra@gmail.com    |   23 |  60000 | 2025-03-23   |       5 | TCS          |
+--------+----------+-----------------+------+--------+--------------+---------+--------------+
4 rows in set (0.00 sec)

mysql> SELECT * FROM EMPLOYEE WHERE SALARY > 35000 OR AGE = 23;
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
|    109 | VAIBHAV  | vaibhav@gmail.com |   25 |  40000 | 2026-02-22   |       6 | TCS          |
|    111 | RAM      | ra@gmail.com      |   23 |  60000 | 2025-03-23   |       5 | TCS          |
|    113 | RAKESH   | rakesh@gmail.com  |   33 |  89000 | 2017-12-20   |       5 | TCS          |
|    114 | NEHA     | neha3@gmail.com   |   28 |  55000 | 2026-03-01   |       2 | TCS          |
|    120 | SANJAY   | sanjay@gmail.com  |   41 |  80000 | 2018-08-09   |       4 | TCS          |
+--------+----------+-------------------+------+--------+--------------+---------+--------------+
12 rows in set (0.00 sec)

mysql> SELECT * FROM EMPLOYEE WHERE EMP_NAME != "DEEPA";
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
|    111 | RAM      | ra@gmail.com      |   23 |  60000 | 2025-03-23   |       5 | TCS          |
|    112 | MEENA    | meena@gmail.com   |   25 |  35000 | 2025-04-28   |       1 | TCS          |
|    113 | RAKESH   | rakesh@gmail.com  |   33 |  89000 | 2017-12-20   |       5 | TCS          |
|    114 | NEHA     | neha3@gmail.com   |   28 |  55000 | 2026-03-01   |       2 | TCS          |
|    115 | RAKESH   | rakesh3@gmail.com |   33 |  12000 | 2017-10-20   |       5 | TCS          |
|    116 | RAHUL    | NULL              |   45 |  35000 | 2024-12-20   |       6 | TCS          |
|    117 | RIYA     | riya@gmail.com    |   22 |  35000 | 2025-02-01   |       2 | TCS          |
|    118 | RIYA     | riya2@gmail.com   |   45 |  35000 | 2025-01-25   |       2 | TCS          |
|    120 | SANJAY   | sanjay@gmail.com  |   41 |  80000 | 2018-08-09   |       4 | TCS          |
+--------+----------+-------------------+------+--------+--------------+---------+--------------+
19 rows in set (0.00 sec)

mysql> SELECT * FROM EMPLOYEE WHERE NOT EMP_NAME = "DEEPA";
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
|    111 | RAM      | ra@gmail.com      |   23 |  60000 | 2025-03-23   |       5 | TCS          |
|    112 | MEENA    | meena@gmail.com   |   25 |  35000 | 2025-04-28   |       1 | TCS          |
|    113 | RAKESH   | rakesh@gmail.com  |   33 |  89000 | 2017-12-20   |       5 | TCS          |
|    114 | NEHA     | neha3@gmail.com   |   28 |  55000 | 2026-03-01   |       2 | TCS          |
|    115 | RAKESH   | rakesh3@gmail.com |   33 |  12000 | 2017-10-20   |       5 | TCS          |
|    116 | RAHUL    | NULL              |   45 |  35000 | 2024-12-20   |       6 | TCS          |
|    117 | RIYA     | riya@gmail.com    |   22 |  35000 | 2025-02-01   |       2 | TCS          |
|    118 | RIYA     | riya2@gmail.com   |   45 |  35000 | 2025-01-25   |       2 | TCS          |
|    120 | SANJAY   | sanjay@gmail.com  |   41 |  80000 | 2018-08-09   |       4 | TCS          |
+--------+----------+-------------------+------+--------+--------------+---------+--------------+
19 rows in set (0.00 sec)

mysql>
