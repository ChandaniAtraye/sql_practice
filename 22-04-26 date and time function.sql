

mysql> use aprilbatch;
Database changed
mysql> create table testdate;
ERROR 4028 (HY000): A table must have at least one visible column.
mysql> create table testdate(date1 date,time1 time ,date2 date);
Query OK, 0 rows affected (0.32 sec)

mysql> desc testdate;
+-------+------+------+-----+---------+-------+
| Field | Type | Null | Key | Default | Extra |
+-------+------+------+-----+---------+-------+
| date1 | date | YES  |     | NULL    |       |
| time1 | time | YES  |     | NULL    |       |
| date2 | date | YES  |     | NULL    |       |
+-------+------+------+-----+---------+-------+
3 rows in set (0.01 sec)

mysql> insert into testdate(date1,time1,date2) Values("2026-04-22","","2026-05-22");
Query OK, 1 row affected (0.06 sec)

mysql> select * from testdate;
+------------+----------+------------+
| date1      | time1    | date2      |
+------------+----------+------------+
| 2026-04-22 | 00:00:00 | 2026-05-22 |
+------------+----------+------------+
1 row in set (0.00 sec)

mysql> select date_format(date1,'%m%d%y') from testdate;
+-----------------------------+
| date_format(date1,'%m%d%y') |
+-----------------------------+
| 042226                      |
+-----------------------------+
1 row in set (0.00 sec)

mysql> select date_format(date1,'%m-%d-%y') from testdate;
+-------------------------------+
| date_format(date1,'%m-%d-%y') |
+-------------------------------+
| 04-22-26                      |
+-------------------------------+
1 row in set (0.00 sec)

mysql> select date_format(date1,'%M-%D-%Y') from testdate;
+-------------------------------+
| date_format(date1,'%M-%D-%Y') |
+-------------------------------+
| April-22nd-2026               |
+-------------------------------+
1 row in set (0.00 sec)

mysql> SELECT NOW();
+---------------------+
| NOW()               |
+---------------------+
| 2026-04-22 17:04:13 |
+---------------------+
1 row in set (0.00 sec)

mysql> SELECT CURDATE();
+------------+
| CURDATE()  |
+------------+
| 2026-04-22 |
+------------+
1 row in set (0.00 sec)

mysql> SELECT CURTIME();
+-----------+
| CURTIME() |
+-----------+
| 17:04:35  |
+-----------+
1 row in set (0.00 sec)

mysql> SELECT DAY(CURDATE());
+----------------+
| DAY(CURDATE()) |
+----------------+
|             22 |
+----------------+
1 row in set (0.00 sec)

mysql> SELECT MONTH(CURDATE());
+------------------+
| MONTH(CURDATE()) |
+------------------+
|                4 |
+------------------+
1 row in set (0.00 sec)

mysql> SELECT YEAR(CURDATE());
+-----------------+
| YEAR(CURDATE()) |
+-----------------+
|            2026 |
+-----------------+
1 row in set (0.00 sec)

mysql> SELECT SECOND(CURTIME());
+-------------------+
| SECOND(CURTIME()) |
+-------------------+
|                29 |
+-------------------+
1 row in set (0.00 sec)

mysql> SELECT SECOND(CURTIME());
+-------------------+
| SECOND(CURTIME()) |
+-------------------+
|                33 |
+-------------------+
1 row in set (0.00 sec)

mysql> SELECT MINUTE(CURTIME());
+-------------------+
| MINUTE(CURTIME()) |
+-------------------+
|                 5 |
+-------------------+
1 row in set (0.00 sec)

mysql> SELECT HOUR(CURTIME());
+-----------------+
| HOUR(CURTIME()) |
+-----------------+
|              17 |
+-----------------+
1 row in set (0.00 sec)

mysql> SELECT quarter(CURDATE());
+--------------------+
| quarter(CURDATE()) |
+--------------------+
|                  2 |
+--------------------+
1 row in set (0.00 sec)

mysql> Alter table testdate
    -> add column date3 date;
Query OK, 0 rows affected (0.59 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select * from testdate;
+------------+----------+------------+-------+
| date1      | time1    | date2      | date3 |
+------------+----------+------------+-------+
| 2026-04-22 | 00:00:00 | 2026-05-22 | NULL  |
+------------+----------+------------+-------+
1 row in set (0.00 sec)

mysql> insert into testdate(date3)values(timestamp());
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '))' at line 1
mysql> insert into testdate(date3)values(now());
Query OK, 1 row affected, 1 warning (0.04 sec)

mysql> select * from testdate;
+------------+----------+------------+------------+
| date1      | time1    | date2      | date3      |
+------------+----------+------------+------------+
| 2026-04-22 | 00:00:00 | 2026-05-22 | NULL       |
| NULL       | NULL     | NULL       | 2026-04-22 |
+------------+----------+------------+------------+
2 rows in set (0.00 sec)

mysql> select datediff(curdate(),'28-04-2002');
+----------------------------------+
| datediff(curdate(),'28-04-2002') |
+----------------------------------+
|                             NULL |
+----------------------------------+
1 row in set, 1 warning (0.31 sec)

mysql> select datediff(curdate(),'2002-28-04');
+----------------------------------+
| datediff(curdate(),'2002-28-04') |
+----------------------------------+
|                             NULL |
+----------------------------------+
1 row in set, 1 warning (0.00 sec)

mysql> select datediff(curdate(),'2002-04-28');
+----------------------------------+
| datediff(curdate(),'2002-04-28') |
+----------------------------------+
|                             8760 |
+----------------------------------+
1 row in set (0.00 sec)

mysql> SELECT DATE_ADD(CURDATE(),INTERVAL 1 DAY);
+------------------------------------+
| DATE_ADD(CURDATE(),INTERVAL 1 DAY) |
+------------------------------------+
| 2026-04-23                         |
+------------------------------------+
1 row in set (0.00 sec)

mysql> SELECT DATE_ADD(CURDATE(),INTERVAL 1 MONTH);
+--------------------------------------+
| DATE_ADD(CURDATE(),INTERVAL 1 MONTH) |
+--------------------------------------+
| 2026-05-22                           |
+--------------------------------------+
1 row in set (0.00 sec)

mysql> SELECT DATE_ADD(CURDATE(),INTERVAL 1 YEAR);
+-------------------------------------+
| DATE_ADD(CURDATE(),INTERVAL 1 YEAR) |
+-------------------------------------+
| 2027-04-22                          |
+-------------------------------------+
1 row in set (0.00 sec)

mysql> SELECT DATE_ADD(CURDATE(),INTERVAL 8 DAY);
+------------------------------------+
| DATE_ADD(CURDATE(),INTERVAL 8 DAY) |
+------------------------------------+
| 2026-04-30                         |
+------------------------------------+
1 row in set (0.00 sec)

mysql> SELECT DATEDIFF(CURDATE(),'2026-04-28');
+----------------------------------+
| DATEDIFF(CURDATE(),'2026-04-28') |
+----------------------------------+
|                               -6 |
+----------------------------------+
1 row in set (0.00 sec)

mysql> SELECT DATE_SUB(CURDATE(),INTERVAL 8 DAY);
+------------------------------------+
| DATE_SUB(CURDATE(),INTERVAL 8 DAY) |
+------------------------------------+
| 2026-04-14                         |
+------------------------------------+
1 row in set (0.00 sec)

mysql> insert into testdate(date3)values(now());
Query OK, 1 row affected, 1 warning (0.05 sec)

mysql> select * from testdate;
+------------+----------+------------+------------+
| date1      | time1    | date2      | date3      |
+------------+----------+------------+------------+
| 2026-04-22 | 00:00:00 | 2026-05-22 | NULL       |
| NULL       | NULL     | NULL       | 2026-04-22 |
| NULL       | NULL     | NULL       | 2026-04-22 |
+------------+----------+------------+------------+
3 rows in set (0.00 sec)

mysql> insert into testdate(date3)values(now()) WHERE DATE1='2026-04-22';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'WHERE DATE1='2026-04-22'' at line 1
mysql> insert into testdate(date3)values(now()) WHERE DATE1='2026-04-22';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'WHERE DATE1='2026-04-22'' at line 1
mysql> UPDATE testdate set date3 = '2026-04-21' where date1= '2026-04-22';
Query OK, 1 row affected (0.07 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from testdate;
+------------+----------+------------+------------+
| date1      | time1    | date2      | date3      |
+------------+----------+------------+------------+
| 2026-04-22 | 00:00:00 | 2026-05-22 | 2026-04-21 |
| NULL       | NULL     | NULL       | 2026-04-22 |
| NULL       | NULL     | NULL       | 2026-04-22 |
+------------+----------+------------+------------+
3 rows in set (0.00 sec)

mysql> alter table testdate
    -> add column date4 timestamp;
Query OK, 0 rows affected (0.11 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select * from testdate;
+------------+----------+------------+------------+-------+
| date1      | time1    | date2      | date3      | date4 |
+------------+----------+------------+------------+-------+
| 2026-04-22 | 00:00:00 | 2026-05-22 | 2026-04-21 | NULL  |
| NULL       | NULL     | NULL       | 2026-04-22 | NULL  |
| NULL       | NULL     | NULL       | 2026-04-22 | NULL  |
+------------+----------+------------+------------+-------+
3 rows in set (0.00 sec)

mysql> s