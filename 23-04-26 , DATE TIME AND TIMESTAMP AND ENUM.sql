mysql> USE TIME_TEST;
Database changed
mysql> CREATE TABLE TIME_DEMO(
    -> ID INT, DT DATETIME,TS TIMESTAMP);
Query OK, 0 rows affected (0.66 sec)

mysql> INSERT INTO TIME_DEMO VALUES(1,"2026-04-25 12:00:00","2026-04-25 12:00:00");
Query OK, 1 row affected (0.03 sec)

mysql> SELECT * FROM TIME_DEMO;
+------+---------------------+---------------------+
| ID   | DT                  | TS                  |
+------+---------------------+---------------------+
|    1 | 2026-04-25 12:00:00 | 2026-04-25 12:00:00 |
+------+---------------------+---------------------+
1 row in set (0.01 sec)

mysql> SELECT @@SESSION.TIME_ZONE;
+---------------------+
| @@SESSION.TIME_ZONE |
+---------------------+
| SYSTEM              |
+---------------------+
1 row in set (0.00 sec)

mysql> --SET TO INDIA
mysql> SET TIME_ZONE = '+05:30';
Query OK, 0 rows affected (0.00 sec)

mysql> SELECT * FROM TIME_DEMO;
+------+---------------------+---------------------+
| ID   | DT                  | TS                  |
+------+---------------------+---------------------+
|    1 | 2026-04-25 12:00:00 | 2026-04-25 12:00:00 |
+------+---------------------+---------------------+
1 row in set (0.00 sec)

mysql> --SET TO UTC
mysql> SET TIME_ZONE = '+00:00';
Query OK, 0 rows affected (0.00 sec)

mysql> SELECT * FROM TIME_DEMO;
+------+---------------------+---------------------+
| ID   | DT                  | TS                  |
+------+---------------------+---------------------+
|    1 | 2026-04-25 12:00:00 | 2026-04-25 06:30:00 |
+------+---------------------+---------------------+
1 row in set (0.00 sec)


mysql> CREATE TABLE STUDENTS(ID INT, GRADE ENUM('A','B','C','D'));
Query OK, 0 rows affected (0.20 sec)

mysql> INSERT INTO STUDENTS VALUES(1,'C');
Query OK, 1 row affected (0.01 sec)

mysql> SELECT * FROM STUDENTS;
+------+-------+
| ID   | GRADE |
+------+-------+
|    1 | C     |
+------+-------+
1 row in set (0.00 sec)

mysql>