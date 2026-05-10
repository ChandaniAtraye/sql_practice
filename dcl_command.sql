
mysql> USE TCS;
Database changed
mysql> GRANT UPDATE,DELETE ON TCS.* TO "ATRAYE"@"LOCALHOST";
Query OK, 0 rows affected (0.06 sec)

mysql> GRANT SELECT ON TCS.* TO 'ATRAYE'@'LOCALHOST';
Query OK, 0 rows affected (0.01 sec)

mysql> grant select ,update ,delete on tcs.* to 'ATRAYE' @ 'LOCALHOST';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''LOCALHOST'' at line 1
mysql> grant select ,update ,delete on tcs.* to 'ATRAYE'@'LOCALHOST';
Query OK, 0 rows affected (0.01 sec)

mysql> # REVOKE
mysql> REVOKE SELECT ON TCS.EMPLOYEE FROM 'ATRAYE'@'LOCALHOST';
Query OK, 0 rows affected (0.10 sec)

mysql> REVOKE UPDATE,DELETE ON TCS.* FROM 'ATRAYE'@'LOCALHOST';
Query OK, 0 rows affected (0.01 sec)

mysql> REVOKE SELECT ON TCS.DEPARTMENT FROM 'ATRAYE'@'LOCALHOST';
Query OK, 0 rows affected (0.01 sec)

mysql> # GRANT ALL
mysql> GRANT ALL ON TCS.* TO 'ATRAYE'@'LOCALHOST';
Query OK, 0 rows affected (0.01 sec)

mysql> REVOKE ALL ON TCS.* FROM 'ATRAYE'@'LOCALHOST';
Query OK, 0 rows affected (0.01 sec)

mysql> REVOKE ALL PREVILEGES ON TCS.* FROM 'ATRAYE'@'LOCALHOST';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'PREVILEGES ON TCS.* FROM 'ATRAYE'@'LOCALHOST'' at line 1
mysql> REVOKE ALL PRIVILEGES ON TCS.* FROM 'ATRAYE'@'LOCALHOST';
ERROR 1141 (42000): There is no such grant defined for user 'ATRAYE' on host 'localhost'
mysql> GRANT ALL ON TCS.* TO 'ATRAYE'@'LOCALHOST';
Query OK, 0 rows affected (0.01 sec)

mysql> REVOKE ALL PRIVILEGES ON TCS.* FROM 'ATRAYE'@'LOCALHOST';
Query OK, 0 rows affected (0.01 sec)


mysql> REVOKE ALL PRIVILEGES ON TCS.* FROM 'ATRAYE'@'LOCALHOST';
ERROR 1141 (42000): There is no such grant defined for user 'ATRAYE' on host 'localhost'
mysql> GRANT SELECT ,INSERT,DELETE ON TCS.* TO 'ATRAYE'@'LOCALHOST';
Query OK, 0 rows affected (0.01 sec)

mysql> REVOKE SELECT ,INSERT,UPDATE ON TCS.* FROM 'ATRAYE'@'LOCALHOST';
Query OK, 0 rows affected (0.02 sec)

mysql> GRANT ALL ON TCS.* TO 'ATRAYE'@'LOCALHOST';
Query OK, 0 rows affected (0.01 sec)

mysql> REVOKE ALL PRIVILEGES ,GRANT OPTION FROM 'ATRAYE'@'LOCALHOST';
Query OK, 0 rows affected (0.01 sec)

mysql> GRANT ALL ON TCS.* TO 'ATRAYE'@'LOCALHOST';
Query OK, 0 rows affected (0.01 sec)

mysql> REVOKE ALL PRIVILEGES,GRANT OPTION FROM 'ATRAYE'@'LOCALHOST';
Query OK, 0 rows affected (0.01 sec)

mysql> GRANT SELECT,UPDATE ON TCS.* TO 'ATRAYE'@'LOCALHOST';
Query OK, 0 rows affected (0.01 sec)

mysql> REVOKE SELECT ,UPDATE ON TCS.* FROM 'ATRAYE'@'LOCALHOST';
Query OK, 0 rows affected (0.01 sec)

mysql> GRANT ALL ON TCS.* TO 'ATRAYE'@'LOCALHOST';
Query OK, 0 rows affected (0.01 sec)

mysql> REVOKE ALL ON TCS.* FROM 'ATRAYE'@'LOCALHOST';
Query OK, 0 rows affected (0.01 sec)

mysql> GRANT ALL ON TCS.* TO 'ATRAYE'@'LOCALHOST';
Query OK, 0 rows affected (0.01 sec)

mysql> REVOKE ALL PRIVILEGES,GRANT OPTION ON  FROM 'ATRAYE'@'LOCALHOST';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'ON  FROM 'ATRAYE'@'LOCALHOST'' at line 1
mysql> REVOKE ALL PRIVILEGES,GRANT OPTION FROM 'ATRAYE'@'LOCALHOST';
Query OK, 0 rows affected (0.01 sec)

mysql> DROP USER 'ATRAYE'@'LOCALHOST';
Query OK, 0 rows affected (0.03 sec)

mysql> SHOW USERS;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'USERS' at line 1
mysql> #DDL=> DATA DEFINITION LANGUAGE=> DEALS WITH THE STRUCTURE OF THE TABLE
mysql> #COMMANDS COMES UNDER DDL=> CREATE,ALTER,TRUNCATE,DROP,RENAME
mysql> # DML => DATA MANIPULATION LANGUAGE => DEALS WITH THE DATA INSIDE THE TABLE
mysql> # COMMAND COMES UNDER DML => INSERT,UPDATE,DELETE,SELECT(DQL=> DATA QUERY LANGUAGE)
mysql> # TCL=> TRANSACTION CONTROL LANGUAGE=> CONTROLING THE TRANSACTIONS IN DATABASES
mysql> # COMMANDS COMES UNDER TCL => COMMIT,ROLLBACK,SAVEPOINT
mysql> # DCL => DATA CONTROL LANGUAGE => CONTROLLING THE DATA INSIDE THE TABLE
mysql> # COMMANDS COMES UNDER DEC=> GRANT,REVOKE
mysql>











