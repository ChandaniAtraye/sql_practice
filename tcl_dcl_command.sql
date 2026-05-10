

mysql> # TCL - TRANSACTION CONTROL LANGUAGE
mysql> # COMMIT # ROLLBACK # SAVEPOINT
mysql> #COMMIT - USED TO SAVE CHANGES PERMANENTLY
mysql> # ROLLBACK -USED TO UNDO LAST CHANGE
mysql> # SAVEPOINT - USED TO SET A POINT TO ROLLBACK
mysql> START TRANSACTION;
Query OK, 0 rows affected (0.00 sec)

mysql> UPDATE EMPLOYEE SET SALARY= SALARY+5000 WHERE EMP_ID = 101;
Query OK, 1 row affected (0.02 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> SELECT * FROM EMPLOYEE;
+--------+----------+-------------------+------+--------+--------------+---------+--------------+------------+
| EMP_ID | EMP_NAME | EMAIL_ID          | AGE  | SALARY | JOINING_DATE | DEPT_ID | COMPANY_NAME | MOB_NUM    |
+--------+----------+-------------------+------+--------+--------------+---------+--------------+------------+
|    101 | NEHA     | neha@gmail.com    |   23 |  45000 | 2026-04-24   |       2 | TCS          | 6312778903 |
|    102 | CANI     | ca@gmail.com      |   24 |  45000 | 2026-05-28   |       3 | TCS          | 9212778203 |
|    103 | SURAJ    | suraj@gmail.com   |   23 |  45000 | 2026-02-22   |       3 | TCS          | 6312778203 |
|    104 | RAMAN    | raman@gmail.com   |   23 |  40000 | 2026-02-22   |       3 | TCS          | 9212781820 |
|    105 | SAMRAT   | samrat@gmail.com  |   25 |  40000 | 2025-02-20   |       4 | TCS          | 9212234182 |
|    106 | RAJAT    | rajat@gmail.com   |   23 |  35000 | 2024-02-22   |       4 | TCS          | 9232234182 |
|    107 | RAHUL    | rahul@gmail.com   |   23 |  20000 | 2022-04-22   |       5 | TCS          | 9232234322 |
|    108 | RANI     | rani@gmail.com    |   26 |  25000 | 2023-04-21   |       5 | TCS          | 4323234322 |
|    109 | VAIBHAV  | vaibhav@gmail.com |   25 |  40000 | 2026-02-22   |       6 | TCS          | 9223284322 |
|    110 | ROHIT    | rohit@gmail.com   |   24 |  30000 | 2023-08-15   |       7 | TCS          | 9899284322 |
|    111 | RAM      | ra@gmail.com      |   23 |  60000 | 2025-03-23   |       5 | TCS          | 9899289252 |
|    112 | MEENA    | meena@gmail.com   |   25 |  35000 | 2025-04-28   |       1 | TCS          | 9637231325 |
|    113 | RAKESH   | rakesh@gmail.com  |   33 |  89000 | 2017-12-20   |       5 | TCS          | 6738920764 |
|    114 | NEHA     | neha3@gmail.com   |   28 |  55000 | 2026-03-01   |       2 | TCS          | 7574633739 |
|    115 | RAKESH   | rakesh3@gmail.com |   33 |  12000 | 2017-10-20   |       5 | TCS          | 9888787628 |
|    116 | RAHUL    | NULL              |   45 |  35000 | 2024-12-20   |       6 | TCS          | 9888673425 |
|    117 | RIYA     | riya@gmail.com    |   22 |  35000 | 2025-02-01   |       2 | TCS          | 6472149828 |
|    118 | RIYA     | riya2@gmail.com   |   45 |  35000 | 2025-01-25   |       2 | TCS          | 8888149828 |
|    119 | DEEPA    | deepa2@gmail.com  |   38 |  35000 | 2019-11-30   |       5 | TCS          | 9806230223 |
|    120 | SANJAY   | sanjay@gmail.com  |   41 |  80000 | 2018-08-09   |       4 | TCS          | 7574633738 |
|    121 | DEEPA    | deepa@gmail.com   |   38 |  35000 | 2019-04-11   |       5 | TCS          | 9888149828 |
+--------+----------+-------------------+------+--------+--------------+---------+--------------+------------+
21 rows in set (0.00 sec)

mysql> ROLLBACK;
Query OK, 0 rows affected (0.01 sec)

mysql> SELECT * FROM EMPLOYEE;
+--------+----------+-------------------+------+--------+--------------+---------+--------------+------------+
| EMP_ID | EMP_NAME | EMAIL_ID          | AGE  | SALARY | JOINING_DATE | DEPT_ID | COMPANY_NAME | MOB_NUM    |
+--------+----------+-------------------+------+--------+--------------+---------+--------------+------------+
|    101 | NEHA     | neha@gmail.com    |   23 |  40000 | 2026-04-24   |       2 | TCS          | 6312778903 |
|    102 | CANI     | ca@gmail.com      |   24 |  45000 | 2026-05-28   |       3 | TCS          | 9212778203 |
|    103 | SURAJ    | suraj@gmail.com   |   23 |  45000 | 2026-02-22   |       3 | TCS          | 6312778203 |
|    104 | RAMAN    | raman@gmail.com   |   23 |  40000 | 2026-02-22   |       3 | TCS          | 9212781820 |
|    105 | SAMRAT   | samrat@gmail.com  |   25 |  40000 | 2025-02-20   |       4 | TCS          | 9212234182 |
|    106 | RAJAT    | rajat@gmail.com   |   23 |  35000 | 2024-02-22   |       4 | TCS          | 9232234182 |
|    107 | RAHUL    | rahul@gmail.com   |   23 |  20000 | 2022-04-22   |       5 | TCS          | 9232234322 |
|    108 | RANI     | rani@gmail.com    |   26 |  25000 | 2023-04-21   |       5 | TCS          | 4323234322 |
|    109 | VAIBHAV  | vaibhav@gmail.com |   25 |  40000 | 2026-02-22   |       6 | TCS          | 9223284322 |
|    110 | ROHIT    | rohit@gmail.com   |   24 |  30000 | 2023-08-15   |       7 | TCS          | 9899284322 |
|    111 | RAM      | ra@gmail.com      |   23 |  60000 | 2025-03-23   |       5 | TCS          | 9899289252 |
|    112 | MEENA    | meena@gmail.com   |   25 |  35000 | 2025-04-28   |       1 | TCS          | 9637231325 |
|    113 | RAKESH   | rakesh@gmail.com  |   33 |  89000 | 2017-12-20   |       5 | TCS          | 6738920764 |
|    114 | NEHA     | neha3@gmail.com   |   28 |  55000 | 2026-03-01   |       2 | TCS          | 7574633739 |
|    115 | RAKESH   | rakesh3@gmail.com |   33 |  12000 | 2017-10-20   |       5 | TCS          | 9888787628 |
|    116 | RAHUL    | NULL              |   45 |  35000 | 2024-12-20   |       6 | TCS          | 9888673425 |
|    117 | RIYA     | riya@gmail.com    |   22 |  35000 | 2025-02-01   |       2 | TCS          | 6472149828 |
|    118 | RIYA     | riya2@gmail.com   |   45 |  35000 | 2025-01-25   |       2 | TCS          | 8888149828 |
|    119 | DEEPA    | deepa2@gmail.com  |   38 |  35000 | 2019-11-30   |       5 | TCS          | 9806230223 |
|    120 | SANJAY   | sanjay@gmail.com  |   41 |  80000 | 2018-08-09   |       4 | TCS          | 7574633738 |
|    121 | DEEPA    | deepa@gmail.com   |   38 |  35000 | 2019-04-11   |       5 | TCS          | 9888149828 |
+--------+----------+-------------------+------+--------+--------------+---------+--------------+------------+
21 rows in set (0.00 sec)

mysql> UPDATE EMPLOYEE SET SALARY= SALARY+5000 WHERE EMP_ID = 101;
Query OK, 1 row affected (0.02 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> SELECT * FROM EMPLOYEE;
+--------+----------+-------------------+------+--------+--------------+---------+--------------+------------+
| EMP_ID | EMP_NAME | EMAIL_ID          | AGE  | SALARY | JOINING_DATE | DEPT_ID | COMPANY_NAME | MOB_NUM    |
+--------+----------+-------------------+------+--------+--------------+---------+--------------+------------+
|    101 | NEHA     | neha@gmail.com    |   23 |  45000 | 2026-04-24   |       2 | TCS          | 6312778903 |
|    102 | CANI     | ca@gmail.com      |   24 |  45000 | 2026-05-28   |       3 | TCS          | 9212778203 |
|    103 | SURAJ    | suraj@gmail.com   |   23 |  45000 | 2026-02-22   |       3 | TCS          | 6312778203 |
|    104 | RAMAN    | raman@gmail.com   |   23 |  40000 | 2026-02-22   |       3 | TCS          | 9212781820 |
|    105 | SAMRAT   | samrat@gmail.com  |   25 |  40000 | 2025-02-20   |       4 | TCS          | 9212234182 |
|    106 | RAJAT    | rajat@gmail.com   |   23 |  35000 | 2024-02-22   |       4 | TCS          | 9232234182 |
|    107 | RAHUL    | rahul@gmail.com   |   23 |  20000 | 2022-04-22   |       5 | TCS          | 9232234322 |
|    108 | RANI     | rani@gmail.com    |   26 |  25000 | 2023-04-21   |       5 | TCS          | 4323234322 |
|    109 | VAIBHAV  | vaibhav@gmail.com |   25 |  40000 | 2026-02-22   |       6 | TCS          | 9223284322 |
|    110 | ROHIT    | rohit@gmail.com   |   24 |  30000 | 2023-08-15   |       7 | TCS          | 9899284322 |
|    111 | RAM      | ra@gmail.com      |   23 |  60000 | 2025-03-23   |       5 | TCS          | 9899289252 |
|    112 | MEENA    | meena@gmail.com   |   25 |  35000 | 2025-04-28   |       1 | TCS          | 9637231325 |
|    113 | RAKESH   | rakesh@gmail.com  |   33 |  89000 | 2017-12-20   |       5 | TCS          | 6738920764 |
|    114 | NEHA     | neha3@gmail.com   |   28 |  55000 | 2026-03-01   |       2 | TCS          | 7574633739 |
|    115 | RAKESH   | rakesh3@gmail.com |   33 |  12000 | 2017-10-20   |       5 | TCS          | 9888787628 |
|    116 | RAHUL    | NULL              |   45 |  35000 | 2024-12-20   |       6 | TCS          | 9888673425 |
|    117 | RIYA     | riya@gmail.com    |   22 |  35000 | 2025-02-01   |       2 | TCS          | 6472149828 |
|    118 | RIYA     | riya2@gmail.com   |   45 |  35000 | 2025-01-25   |       2 | TCS          | 8888149828 |
|    119 | DEEPA    | deepa2@gmail.com  |   38 |  35000 | 2019-11-30   |       5 | TCS          | 9806230223 |
|    120 | SANJAY   | sanjay@gmail.com  |   41 |  80000 | 2018-08-09   |       4 | TCS          | 7574633738 |
|    121 | DEEPA    | deepa@gmail.com   |   38 |  35000 | 2019-04-11   |       5 | TCS          | 9888149828 |
+--------+----------+-------------------+------+--------+--------------+---------+--------------+------------+
21 rows in set (0.00 sec)

mysql> ROLLBACK;
Query OK, 0 rows affected (0.00 sec)

mysql> SELECT * FROM EMPLOYEE;
+--------+----------+-------------------+------+--------+--------------+---------+--------------+------------+
| EMP_ID | EMP_NAME | EMAIL_ID          | AGE  | SALARY | JOINING_DATE | DEPT_ID | COMPANY_NAME | MOB_NUM    |
+--------+----------+-------------------+------+--------+--------------+---------+--------------+------------+
|    101 | NEHA     | neha@gmail.com    |   23 |  45000 | 2026-04-24   |       2 | TCS          | 6312778903 |
|    102 | CANI     | ca@gmail.com      |   24 |  45000 | 2026-05-28   |       3 | TCS          | 9212778203 |
|    103 | SURAJ    | suraj@gmail.com   |   23 |  45000 | 2026-02-22   |       3 | TCS          | 6312778203 |
|    104 | RAMAN    | raman@gmail.com   |   23 |  40000 | 2026-02-22   |       3 | TCS          | 9212781820 |
|    105 | SAMRAT   | samrat@gmail.com  |   25 |  40000 | 2025-02-20   |       4 | TCS          | 9212234182 |
|    106 | RAJAT    | rajat@gmail.com   |   23 |  35000 | 2024-02-22   |       4 | TCS          | 9232234182 |
|    107 | RAHUL    | rahul@gmail.com   |   23 |  20000 | 2022-04-22   |       5 | TCS          | 9232234322 |
|    108 | RANI     | rani@gmail.com    |   26 |  25000 | 2023-04-21   |       5 | TCS          | 4323234322 |
|    109 | VAIBHAV  | vaibhav@gmail.com |   25 |  40000 | 2026-02-22   |       6 | TCS          | 9223284322 |
|    110 | ROHIT    | rohit@gmail.com   |   24 |  30000 | 2023-08-15   |       7 | TCS          | 9899284322 |
|    111 | RAM      | ra@gmail.com      |   23 |  60000 | 2025-03-23   |       5 | TCS          | 9899289252 |
|    112 | MEENA    | meena@gmail.com   |   25 |  35000 | 2025-04-28   |       1 | TCS          | 9637231325 |
|    113 | RAKESH   | rakesh@gmail.com  |   33 |  89000 | 2017-12-20   |       5 | TCS          | 6738920764 |
|    114 | NEHA     | neha3@gmail.com   |   28 |  55000 | 2026-03-01   |       2 | TCS          | 7574633739 |
|    115 | RAKESH   | rakesh3@gmail.com |   33 |  12000 | 2017-10-20   |       5 | TCS          | 9888787628 |
|    116 | RAHUL    | NULL              |   45 |  35000 | 2024-12-20   |       6 | TCS          | 9888673425 |
|    117 | RIYA     | riya@gmail.com    |   22 |  35000 | 2025-02-01   |       2 | TCS          | 6472149828 |
|    118 | RIYA     | riya2@gmail.com   |   45 |  35000 | 2025-01-25   |       2 | TCS          | 8888149828 |
|    119 | DEEPA    | deepa2@gmail.com  |   38 |  35000 | 2019-11-30   |       5 | TCS          | 9806230223 |
|    120 | SANJAY   | sanjay@gmail.com  |   41 |  80000 | 2018-08-09   |       4 | TCS          | 7574633738 |
|    121 | DEEPA    | deepa@gmail.com   |   38 |  35000 | 2019-04-11   |       5 | TCS          | 9888149828 |
+--------+----------+-------------------+------+--------+--------------+---------+--------------+------------+
21 rows in set (0.00 sec)

mysql> START TRANSACTION;
Query OK, 0 rows affected (0.00 sec)

mysql> UPDATE EMPLOYEE SET SALARY= SALARY+5000 WHERE EMP_ID = 101;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> UPDATE EMPLOYEE SET AGE=42 WHERE EMP_ID = 102;
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> SELECT * FROM EMPLOYEE;
+--------+----------+-------------------+------+--------+--------------+---------+--------------+------------+
| EMP_ID | EMP_NAME | EMAIL_ID          | AGE  | SALARY | JOINING_DATE | DEPT_ID | COMPANY_NAME | MOB_NUM    |
+--------+----------+-------------------+------+--------+--------------+---------+--------------+------------+
|    101 | NEHA     | neha@gmail.com    |   23 |  50000 | 2026-04-24   |       2 | TCS          | 6312778903 |
|    102 | CANI     | ca@gmail.com      |   42 |  45000 | 2026-05-28   |       3 | TCS          | 9212778203 |
|    103 | SURAJ    | suraj@gmail.com   |   23 |  45000 | 2026-02-22   |       3 | TCS          | 6312778203 |
|    104 | RAMAN    | raman@gmail.com   |   23 |  40000 | 2026-02-22   |       3 | TCS          | 9212781820 |
|    105 | SAMRAT   | samrat@gmail.com  |   25 |  40000 | 2025-02-20   |       4 | TCS          | 9212234182 |
|    106 | RAJAT    | rajat@gmail.com   |   23 |  35000 | 2024-02-22   |       4 | TCS          | 9232234182 |
|    107 | RAHUL    | rahul@gmail.com   |   23 |  20000 | 2022-04-22   |       5 | TCS          | 9232234322 |
|    108 | RANI     | rani@gmail.com    |   26 |  25000 | 2023-04-21   |       5 | TCS          | 4323234322 |
|    109 | VAIBHAV  | vaibhav@gmail.com |   25 |  40000 | 2026-02-22   |       6 | TCS          | 9223284322 |
|    110 | ROHIT    | rohit@gmail.com   |   24 |  30000 | 2023-08-15   |       7 | TCS          | 9899284322 |
|    111 | RAM      | ra@gmail.com      |   23 |  60000 | 2025-03-23   |       5 | TCS          | 9899289252 |
|    112 | MEENA    | meena@gmail.com   |   25 |  35000 | 2025-04-28   |       1 | TCS          | 9637231325 |
|    113 | RAKESH   | rakesh@gmail.com  |   33 |  89000 | 2017-12-20   |       5 | TCS          | 6738920764 |
|    114 | NEHA     | neha3@gmail.com   |   28 |  55000 | 2026-03-01   |       2 | TCS          | 7574633739 |
|    115 | RAKESH   | rakesh3@gmail.com |   33 |  12000 | 2017-10-20   |       5 | TCS          | 9888787628 |
|    116 | RAHUL    | NULL              |   45 |  35000 | 2024-12-20   |       6 | TCS          | 9888673425 |
|    117 | RIYA     | riya@gmail.com    |   22 |  35000 | 2025-02-01   |       2 | TCS          | 6472149828 |
|    118 | RIYA     | riya2@gmail.com   |   45 |  35000 | 2025-01-25   |       2 | TCS          | 8888149828 |
|    119 | DEEPA    | deepa2@gmail.com  |   38 |  35000 | 2019-11-30   |       5 | TCS          | 9806230223 |
|    120 | SANJAY   | sanjay@gmail.com  |   41 |  80000 | 2018-08-09   |       4 | TCS          | 7574633738 |
|    121 | DEEPA    | deepa@gmail.com   |   38 |  35000 | 2019-04-11   |       5 | TCS          | 9888149828 |
+--------+----------+-------------------+------+--------+--------------+---------+--------------+------------+
21 rows in set (0.00 sec)

mysql> ROLLBACK;
Query OK, 0 rows affected (0.01 sec)

mysql> SELECT * FROM EMPLOYEE;
+--------+----------+-------------------+------+--------+--------------+---------+--------------+------------+
| EMP_ID | EMP_NAME | EMAIL_ID          | AGE  | SALARY | JOINING_DATE | DEPT_ID | COMPANY_NAME | MOB_NUM    |
+--------+----------+-------------------+------+--------+--------------+---------+--------------+------------+
|    101 | NEHA     | neha@gmail.com    |   23 |  45000 | 2026-04-24   |       2 | TCS          | 6312778903 |
|    102 | CANI     | ca@gmail.com      |   24 |  45000 | 2026-05-28   |       3 | TCS          | 9212778203 |
|    103 | SURAJ    | suraj@gmail.com   |   23 |  45000 | 2026-02-22   |       3 | TCS          | 6312778203 |
|    104 | RAMAN    | raman@gmail.com   |   23 |  40000 | 2026-02-22   |       3 | TCS          | 9212781820 |
|    105 | SAMRAT   | samrat@gmail.com  |   25 |  40000 | 2025-02-20   |       4 | TCS          | 9212234182 |
|    106 | RAJAT    | rajat@gmail.com   |   23 |  35000 | 2024-02-22   |       4 | TCS          | 9232234182 |
|    107 | RAHUL    | rahul@gmail.com   |   23 |  20000 | 2022-04-22   |       5 | TCS          | 9232234322 |
|    108 | RANI     | rani@gmail.com    |   26 |  25000 | 2023-04-21   |       5 | TCS          | 4323234322 |
|    109 | VAIBHAV  | vaibhav@gmail.com |   25 |  40000 | 2026-02-22   |       6 | TCS          | 9223284322 |
|    110 | ROHIT    | rohit@gmail.com   |   24 |  30000 | 2023-08-15   |       7 | TCS          | 9899284322 |
|    111 | RAM      | ra@gmail.com      |   23 |  60000 | 2025-03-23   |       5 | TCS          | 9899289252 |
|    112 | MEENA    | meena@gmail.com   |   25 |  35000 | 2025-04-28   |       1 | TCS          | 9637231325 |
|    113 | RAKESH   | rakesh@gmail.com  |   33 |  89000 | 2017-12-20   |       5 | TCS          | 6738920764 |
|    114 | NEHA     | neha3@gmail.com   |   28 |  55000 | 2026-03-01   |       2 | TCS          | 7574633739 |
|    115 | RAKESH   | rakesh3@gmail.com |   33 |  12000 | 2017-10-20   |       5 | TCS          | 9888787628 |
|    116 | RAHUL    | NULL              |   45 |  35000 | 2024-12-20   |       6 | TCS          | 9888673425 |
|    117 | RIYA     | riya@gmail.com    |   22 |  35000 | 2025-02-01   |       2 | TCS          | 6472149828 |
|    118 | RIYA     | riya2@gmail.com   |   45 |  35000 | 2025-01-25   |       2 | TCS          | 8888149828 |
|    119 | DEEPA    | deepa2@gmail.com  |   38 |  35000 | 2019-11-30   |       5 | TCS          | 9806230223 |
|    120 | SANJAY   | sanjay@gmail.com  |   41 |  80000 | 2018-08-09   |       4 | TCS          | 7574633738 |
|    121 | DEEPA    | deepa@gmail.com   |   38 |  35000 | 2019-04-11   |       5 | TCS          | 9888149828 |
+--------+----------+-------------------+------+--------+--------------+---------+--------------+------------+
21 rows in set (0.00 sec)

mysql> BEGIN;
Query OK, 0 rows affected (0.00 sec)

mysql> INSERT INTO DEPARTMENT (DEPT_ID) VALUES(11);
Query OK, 1 row affected (0.02 sec)

mysql> SAVEPOINT S1;
Query OK, 0 rows affected (0.00 sec)

mysql> UPDATE DEPARTMENT SET DEPT_NAME = "SALES" WHERE DEPT_ID = 9;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> SAVEPOINT S2;
Query OK, 0 rows affected (0.00 sec)

mysql> SELECT * FROM DEPARTMENT;
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
|       9 | SALES         | NULL     | NULL     |
|      10 | NULL          | NULL     | NULL     |
|      11 | NULL          | NULL     | NULL     |
|      20 | NULL          | NULL     | NULL     |
+---------+---------------+----------+----------+
12 rows in set (0.00 sec)

mysql> ROLLBACK TO S1;
Query OK, 0 rows affected (0.00 sec)

mysql> SELECT * FROM DEPARTMENT;
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
|      10 | NULL          | NULL     | NULL     |
|      11 | NULL          | NULL     | NULL     |
|      20 | NULL          | NULL     | NULL     |
+---------+---------------+----------+----------+
12 rows in set (0.00 sec)

mysql> BEGIN;
Query OK, 0 rows affected (0.01 sec)

mysql> ALTER TABLE DEPARTMENT DROP DEPT_MOB;
Query OK, 0 rows affected (0.08 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM DEPARTMENT;
+---------+---------------+----------+
| DEPT_ID | DEPT_NAME     | LOCATION |
+---------+---------------+----------+
|       1 | HR            | HYD      |
|       2 | IT            | PUNE     |
|       3 | FINANCE       | DELHI    |
|       4 | MARKETING     | BANGLORE |
|       5 | PLACEMENT     | MUMBAI   |
|       6 | NULL          | PUNE     |
|       7 | OPERATION     | HYD      |
|       8 | IT TECHNICIAN | HYD      |
|       9 | NULL          | NULL     |
|      10 | NULL          | NULL     |
|      11 | NULL          | NULL     |
|      20 | NULL          | NULL     |
+---------+---------------+----------+
12 rows in set (0.00 sec)

mysql> ROLLBACK;
Query OK, 0 rows affected (0.00 sec)

mysql> SELECT * FROM DEPARTMENT;
+---------+---------------+----------+
| DEPT_ID | DEPT_NAME     | LOCATION |
+---------+---------------+----------+
|       1 | HR            | HYD      |
|       2 | IT            | PUNE     |
|       3 | FINANCE       | DELHI    |
|       4 | MARKETING     | BANGLORE |
|       5 | PLACEMENT     | MUMBAI   |
|       6 | NULL          | PUNE     |
|       7 | OPERATION     | HYD      |
|       8 | IT TECHNICIAN | HYD      |
|       9 | NULL          | NULL     |
|      10 | NULL          | NULL     |
|      11 | NULL          | NULL     |
|      20 | NULL          | NULL     |
+---------+---------------+----------+
12 rows in set (0.00 sec)

mysql> BEGIN;
Query OK, 0 rows affected (0.00 sec)

mysql> UPDATE DEPARTMENT SET DEPT_NAME = "SALES" WHERE DEPT_ID = 9;
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> SELECT * FROM EMPLOYEE;
+--------+----------+-------------------+------+--------+--------------+---------+--------------+------------+
| EMP_ID | EMP_NAME | EMAIL_ID          | AGE  | SALARY | JOINING_DATE | DEPT_ID | COMPANY_NAME | MOB_NUM    |
+--------+----------+-------------------+------+--------+--------------+---------+--------------+------------+
|    101 | NEHA     | neha@gmail.com    |   23 |  45000 | 2026-04-24   |       2 | TCS          | 6312778903 |
|    102 | CANI     | ca@gmail.com      |   24 |  45000 | 2026-05-28   |       3 | TCS          | 9212778203 |
|    103 | SURAJ    | suraj@gmail.com   |   23 |  45000 | 2026-02-22   |       3 | TCS          | 6312778203 |
|    104 | RAMAN    | raman@gmail.com   |   23 |  40000 | 2026-02-22   |       3 | TCS          | 9212781820 |
|    105 | SAMRAT   | samrat@gmail.com  |   25 |  40000 | 2025-02-20   |       4 | TCS          | 9212234182 |
|    106 | RAJAT    | rajat@gmail.com   |   23 |  35000 | 2024-02-22   |       4 | TCS          | 9232234182 |
|    107 | RAHUL    | rahul@gmail.com   |   23 |  20000 | 2022-04-22   |       5 | TCS          | 9232234322 |
|    108 | RANI     | rani@gmail.com    |   26 |  25000 | 2023-04-21   |       5 | TCS          | 4323234322 |
|    109 | VAIBHAV  | vaibhav@gmail.com |   25 |  40000 | 2026-02-22   |       6 | TCS          | 9223284322 |
|    110 | ROHIT    | rohit@gmail.com   |   24 |  30000 | 2023-08-15   |       7 | TCS          | 9899284322 |
|    111 | RAM      | ra@gmail.com      |   23 |  60000 | 2025-03-23   |       5 | TCS          | 9899289252 |
|    112 | MEENA    | meena@gmail.com   |   25 |  35000 | 2025-04-28   |       1 | TCS          | 9637231325 |
|    113 | RAKESH   | rakesh@gmail.com  |   33 |  89000 | 2017-12-20   |       5 | TCS          | 6738920764 |
|    114 | NEHA     | neha3@gmail.com   |   28 |  55000 | 2026-03-01   |       2 | TCS          | 7574633739 |
|    115 | RAKESH   | rakesh3@gmail.com |   33 |  12000 | 2017-10-20   |       5 | TCS          | 9888787628 |
|    116 | RAHUL    | NULL              |   45 |  35000 | 2024-12-20   |       6 | TCS          | 9888673425 |
|    117 | RIYA     | riya@gmail.com    |   22 |  35000 | 2025-02-01   |       2 | TCS          | 6472149828 |
|    118 | RIYA     | riya2@gmail.com   |   45 |  35000 | 2025-01-25   |       2 | TCS          | 8888149828 |
|    119 | DEEPA    | deepa2@gmail.com  |   38 |  35000 | 2019-11-30   |       5 | TCS          | 9806230223 |
|    120 | SANJAY   | sanjay@gmail.com  |   41 |  80000 | 2018-08-09   |       4 | TCS          | 7574633738 |
|    121 | DEEPA    | deepa@gmail.com   |   38 |  35000 | 2019-04-11   |       5 | TCS          | 9888149828 |
+--------+----------+-------------------+------+--------+--------------+---------+--------------+------------+
21 rows in set (0.00 sec)

mysql> SELECT * FROM DEPARTMENT;
+---------+---------------+----------+
| DEPT_ID | DEPT_NAME     | LOCATION |
+---------+---------------+----------+
|       1 | HR            | HYD      |
|       2 | IT            | PUNE     |
|       3 | FINANCE       | DELHI    |
|       4 | MARKETING     | BANGLORE |
|       5 | PLACEMENT     | MUMBAI   |
|       6 | NULL          | PUNE     |
|       7 | OPERATION     | HYD      |
|       8 | IT TECHNICIAN | HYD      |
|       9 | SALES         | NULL     |
|      10 | NULL          | NULL     |
|      11 | NULL          | NULL     |
|      20 | NULL          | NULL     |
+---------+---------------+----------+
12 rows in set (0.00 sec)

mysql> ROLLBACK;
Query OK, 0 rows affected (0.01 sec)

mysql> SELECT * FROM DEPARTMENT;
+---------+---------------+----------+
| DEPT_ID | DEPT_NAME     | LOCATION |
+---------+---------------+----------+
|       1 | HR            | HYD      |
|       2 | IT            | PUNE     |
|       3 | FINANCE       | DELHI    |
|       4 | MARKETING     | BANGLORE |
|       5 | PLACEMENT     | MUMBAI   |
|       6 | NULL          | PUNE     |
|       7 | OPERATION     | HYD      |
|       8 | IT TECHNICIAN | HYD      |
|       9 | NULL          | NULL     |
|      10 | NULL          | NULL     |
|      11 | NULL          | NULL     |
|      20 | NULL          | NULL     |
+---------+---------------+----------+
12 rows in set (0.00 sec)

mysql> # DCL ==> DATA CONTROL LANGUAGE(GRANT , REVOKE)
mysql> # GRANT ==> GIVE PERMISSION TO USER
mysql> # REVOKE ==> REMOVE PERMISSION FROM USER
mysql> # CREATING A USER
mysql> CREATE USER 'ATRAYE'@'LOCALHOST' IDENTIFIED BY '1234';
Query OK, 0 rows affected (0.04 sec)

mysql> GRANT SELECT ON TCS.EMPLOYEE TO 'ATRAYE'@'LOCALHOST';
Query OK, 0 rows affected (0.01 sec)

mysql> SHOW TABLES;
+---------------+
| Tables_in_tcs |
+---------------+
| department    |
| employee      |
+---------------+
2 rows in set (0.01 sec)

mysql> GRANT SELECT ON TCS.DEPARTMENT TO 'ATRAYE'@'LOCALHOST';
Query OK, 0 rows affected (0.01 sec)

mysql> GRANT INSERT ON TCS.EMPLOYEE TO 'ATRAYE'@'LOCALHOST';
Query OK, 0 rows affected (0.01 sec)

mysql> SELECT * FROM EMPLOYEE;
+--------+----------+-------------------+------+--------+--------------+---------+--------------+------------+
| EMP_ID | EMP_NAME | EMAIL_ID          | AGE  | SALARY | JOINING_DATE | DEPT_ID | COMPANY_NAME | MOB_NUM    |
+--------+----------+-------------------+------+--------+--------------+---------+--------------+------------+
|    101 | NEHA     | neha@gmail.com    |   23 |  45000 | 2026-04-24   |       2 | TCS          | 6312778903 |
|    102 | CANI     | ca@gmail.com      |   24 |  45000 | 2026-05-28   |       3 | TCS          | 9212778203 |
|    103 | SURAJ    | suraj@gmail.com   |   23 |  45000 | 2026-02-22   |       3 | TCS          | 6312778203 |
|    104 | RAMAN    | raman@gmail.com   |   23 |  40000 | 2026-02-22   |       3 | TCS          | 9212781820 |
|    105 | SAMRAT   | samrat@gmail.com  |   25 |  40000 | 2025-02-20   |       4 | TCS          | 9212234182 |
|    106 | RAJAT    | rajat@gmail.com   |   23 |  35000 | 2024-02-22   |       4 | TCS          | 9232234182 |
|    107 | RAHUL    | rahul@gmail.com   |   23 |  20000 | 2022-04-22   |       5 | TCS          | 9232234322 |
|    108 | RANI     | rani@gmail.com    |   26 |  25000 | 2023-04-21   |       5 | TCS          | 4323234322 |
|    109 | VAIBHAV  | vaibhav@gmail.com |   25 |  40000 | 2026-02-22   |       6 | TCS          | 9223284322 |
|    110 | ROHIT    | rohit@gmail.com   |   24 |  30000 | 2023-08-15   |       7 | TCS          | 9899284322 |
|    111 | RAM      | ra@gmail.com      |   23 |  60000 | 2025-03-23   |       5 | TCS          | 9899289252 |
|    112 | MEENA    | meena@gmail.com   |   25 |  35000 | 2025-04-28   |       1 | TCS          | 9637231325 |
|    113 | RAKESH   | rakesh@gmail.com  |   33 |  89000 | 2017-12-20   |       5 | TCS          | 6738920764 |
|    114 | NEHA     | neha3@gmail.com   |   28 |  55000 | 2026-03-01   |       2 | TCS          | 7574633739 |
|    115 | RAKESH   | rakesh3@gmail.com |   33 |  12000 | 2017-10-20   |       5 | TCS          | 9888787628 |
|    116 | RAHUL    | NULL              |   45 |  35000 | 2024-12-20   |       6 | TCS          | 9888673425 |
|    117 | RIYA     | riya@gmail.com    |   22 |  35000 | 2025-02-01   |       2 | TCS          | 6472149828 |
|    118 | RIYA     | riya2@gmail.com   |   45 |  35000 | 2025-01-25   |       2 | TCS          | 8888149828 |
|    119 | DEEPA    | deepa2@gmail.com  |   38 |  35000 | 2019-11-30   |       5 | TCS          | 9806230223 |
|    120 | SANJAY   | sanjay@gmail.com  |   41 |  80000 | 2018-08-09   |       4 | TCS          | 7574633738 |
|    121 | DEEPA    | deepa@gmail.com   |   38 |  35000 | 2019-04-11   |       5 | TCS          | 9888149828 |
|    122 | SHAM     | sham@gmail.com    | NULL |   NULL | 2026-04-28   |    NULL | TCS          | 8764537658 |
+--------+----------+-------------------+------+--------+--------------+---------+--------------+------------+
22 rows in set (0.00 sec)

mysql> GRANT INSERT ON TCS.DEPARTMENT TO 'ATRAYE'@'LOCALHOST';
Query OK, 0 rows affected (0.01 sec)

mysql> SELECT * FROM DEPARTMENT;
+---------+---------------+----------+
| DEPT_ID | DEPT_NAME     | LOCATION |
+---------+---------------+----------+
|       1 | HR            | HYD      |
|       2 | IT            | PUNE     |
|       3 | FINANCE       | DELHI    |
|       4 | MARKETING     | BANGLORE |
|       5 | PLACEMENT     | MUMBAI   |
|       6 | NULL          | PUNE     |
|       7 | OPERATION     | HYD      |
|       8 | IT TECHNICIAN | HYD      |
|       9 | NULL          | NULL     |
|      10 | NULL          | NULL     |
|      11 | NULL          | NULL     |
|      20 | NULL          | NULL     |
+---------+---------------+----------+
12 rows in set (0.00 sec)

mysql> SELECT * FROM DEPARTMENT;
+---------+---------------+----------+
| DEPT_ID | DEPT_NAME     | LOCATION |
+---------+---------------+----------+
|       1 | HR            | HYD      |
|       2 | IT            | PUNE     |
|       3 | FINANCE       | DELHI    |
|       4 | MARKETING     | BANGLORE |
|       5 | PLACEMENT     | MUMBAI   |
|       6 | NULL          | PUNE     |
|       7 | OPERATION     | HYD      |
|       8 | IT TECHNICIAN | HYD      |
|       9 | NULL          | NULL     |
|      10 | NULL          | NULL     |
|      11 | NULL          | NULL     |
|      12 | NULL          | NULL     |
|      20 | NULL          | NULL     |
+---------+---------------+----------+
13 rows in set (0.00 sec)

mysql>