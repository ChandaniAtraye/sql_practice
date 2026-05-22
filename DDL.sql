
mysql> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| aprilbatch         |
| assignment         |
| classicmodels      |
| college            |
| democlauses        |
| democonstraints    |
| demotrigger        |
| demowindowfunction |
| information_schema |
| instagram          |
| joindemo           |
| mysql              |
| new_version_db     |
| performance_schema |
| practice           |
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
24 rows in set (0.03 sec)

mysql> USE APTILBATCH;
ERROR 1049 (42000): Unknown database 'aptilbatch'
mysql> USE APRILBATCH;
Database changed
mysql> CREATE TABLE USER(ID INT PRIMARY KEY AUTO_INCREMENT,F_NAME VARCHAR(20) NOT NULL ,L_NAME VARCHAR(20) NOT NULL,DOB DATE NOT NULL ,GENDER ENUM("F","M","T"),AGE INT NOT NULL , CONTACT_NO VARCHAR(10) UNIQUE,CITY VARCHAR(20) DEFAULT "PUNE",INCOME INT DEFAULT 0);
ERROR 1050 (42S01): Table 'user' already exists
mysql> CREATE TABLE USER1(ID INT PRIMARY KEY AUTO_INCREMENT,F_NAME VARCHAR(20) NOT NULL ,L_NAME VARCHAR(20) NOT NULL,DOB DATE NOT NULL ,GENDER ENUM("F","M","T"),AGE INT NOT NULL , CONTACT_NO VARCHAR(10) UNIQUE,CITY VARCHAR(20) DEFAULT "PUNE",INCOME INT DEFAULT 0);
Query OK, 0 rows affected (0.12 sec)

mysql> DESC USER1;
+------------+-------------------+------+-----+---------+----------------+
| Field      | Type              | Null | Key | Default | Extra          |
+------------+-------------------+------+-----+---------+----------------+
| ID         | int               | NO   | PRI | NULL    | auto_increment |
| F_NAME     | varchar(20)       | NO   |     | NULL    |                |
| L_NAME     | varchar(20)       | NO   |     | NULL    |                |
| DOB        | date              | NO   |     | NULL    |                |
| GENDER     | enum('F','M','T') | YES  |     | NULL    |                |
| AGE        | int               | NO   |     | NULL    |                |
| CONTACT_NO | varchar(10)       | YES  | UNI | NULL    |                |
| CITY       | varchar(20)       | YES  |     | PUNE    |                |
| INCOME     | int               | YES  |     | 0       |                |
+------------+-------------------+------+-----+---------+----------------+
9 rows in set (0.01 sec)

mysql> INSERT INTO USER1(F_NAME,L_NAME,DOB,GENDER,AGE,CONTACT_NO,CITY,INCOME)VALUES('RAM','GUPTA',"2001-02-23","M",24,"6473846352","NASHIK",25000);
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO USER1(F_NAME,L_NAME,DOB,GENDER,AGE,CONTACT_NO,CITY,INCOME)VALUES('RESHMA','PATIL',"2002-02-26","F",23,"6473834567",30000);
ERROR 1136 (21S01): Column count doesn't match value count at row 1
mysql> INSERT INTO USER1(F_NAME,L_NAME,DOB,GENDER,AGE,CONTACT_NO,CITY,INCOME)VALUES('RESHMA','PATIL',"2002-02-26","F",23,"6473834567","",30000);
Query OK, 1 row affected (0.01 sec)

mysql> SELECT * FROM USER1;
+----+--------+--------+------------+--------+-----+------------+--------+--------+
| ID | F_NAME | L_NAME | DOB        | GENDER | AGE | CONTACT_NO | CITY   | INCOME |
+----+--------+--------+------------+--------+-----+------------+--------+--------+
|  1 | RAM    | GUPTA  | 2001-02-23 | M      |  24 | 6473846352 | NASHIK |  25000 |
|  2 | RESHMA | PATIL  | 2002-02-26 | F      |  23 | 6473834567 |        |  30000 |
+----+--------+--------+------------+--------+-----+------------+--------+--------+
2 rows in set (0.00 sec)

mysql> INSERT INTO USER1(F_NAME,L_NAME,DOB,GENDER,AGE,CONTACT_NO,INCOME)VALUES('RESHMA','PATIL',"2002-02-26","F",23,"6473834567",30000);
ERROR 1062 (23000): Duplicate entry '6473834567' for key 'user1.CONTACT_NO'
mysql> INSERT INTO USER1(F_NAME,L_NAME,DOB,GENDER,AGE,CONTACT_NO,INCOME)VALUES('NEHA','PATIL',"2002-02-26","F",23,"6473873567",22000);
Query OK, 1 row affected (0.01 sec)

mysql> SELECT * FROM USER1;
+----+--------+--------+------------+--------+-----+------------+--------+--------+
| ID | F_NAME | L_NAME | DOB        | GENDER | AGE | CONTACT_NO | CITY   | INCOME |
+----+--------+--------+------------+--------+-----+------------+--------+--------+
|  1 | RAM    | GUPTA  | 2001-02-23 | M      |  24 | 6473846352 | NASHIK |  25000 |
|  2 | RESHMA | PATIL  | 2002-02-26 | F      |  23 | 6473834567 |        |  30000 |
|  4 | NEHA   | PATIL  | 2002-02-26 | F      |  23 | 6473873567 | PUNE   |  22000 |
+----+--------+--------+------------+--------+-----+------------+--------+--------+
3 rows in set (0.00 sec)

mysql> UPDATE USER1 SET CITY= "MUMBAI" WHERE ID=2;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> SELECT * FROM USER1;
+----+--------+--------+------------+--------+-----+------------+--------+--------+
| ID | F_NAME | L_NAME | DOB        | GENDER | AGE | CONTACT_NO | CITY   | INCOME |
+----+--------+--------+------------+--------+-----+------------+--------+--------+
|  1 | RAM    | GUPTA  | 2001-02-23 | M      |  24 | 6473846352 | NASHIK |  25000 |
|  2 | RESHMA | PATIL  | 2002-02-26 | F      |  23 | 6473834567 | MUMBAI |  30000 |
|  4 | NEHA   | PATIL  | 2002-02-26 | F      |  23 | 6473873567 | PUNE   |  22000 |
+----+--------+--------+------------+--------+-----+------------+--------+--------+
3 rows in set (0.00 sec)

mysql> -- ADD OR DELETE COLUMN INTO EXISTING TABLE
mysql> ALTER TABLE USER1 ADD COLUMN EMAIL UNIQUE NOT NULL;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'UNIQUE NOT NULL' at line 1
mysql> ALTER TABLE USER1 ADD EMAIL UNIQUE NOT NULL;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'UNIQUE NOT NULL' a^C

ERROR 1062 (23000): Duplicate entry '' for key 'user1.EMAIL'
mysql>
mysql> ALTER TABLE USER1 ADD COLUMN EMAIL VARCHAR(20) UNIQUE NOT NULL AFTER L_NAME;
ERROR 1062 (23000): Duplicate entry '' for key 'user1.EMAIL'
mysql> SELECT * FROM USER1;
+----+--------+--------+------------+--------+-----+------------+--------+--------+
| ID | F_NAME | L_NAME | DOB        | GENDER | AGE | CONTACT_NO | CITY   | INCOME |
+----+--------+--------+------------+--------+-----+------------+--------+--------+
|  1 | RAM    | GUPTA  | 2001-02-23 | M      |  24 | 6473846352 | NASHIK |  25000 |
|  2 | RESHMA | PATIL  | 2002-02-26 | F      |  23 | 6473834567 | MUMBAI |  30000 |
|  4 | NEHA   | PATIL  | 2002-02-26 | F      |  23 | 6473873567 | PUNE   |  22000 |
+----+--------+--------+------------+--------+-----+------------+--------+--------+
3 rows in set (0.00 sec)

mysql> CREATE TABLE VEHICLES(VEHICLE_ID INT AUTO_INCREMENT PRIMARY KEY,YEAR INT NOT NULL,MAKE VARCHAR(20) NOT NULL);
Query OK, 0 rows affected (0.08 sec)

mysql> DESC VEHICLE;
ERROR 1146 (42S02): Table 'aprilbatch.vehicle' doesn't exist
mysql> DESC VEHICLES;
+------------+-------------+------+-----+---------+----------------+
| Field      | Type        | Null | Key | Default | Extra          |
+------------+-------------+------+-----+---------+----------------+
| VEHICLE_ID | int         | NO   | PRI | NULL    | auto_increment |
| YEAR       | int         | NO   |     | NULL    |                |
| MAKE       | varchar(20) | NO   |     | NULL    |                |
+------------+-------------+------+-----+---------+----------------+
3 rows in set (0.01 sec)

mysql> ALTER TABLE VEHICLES ADD MODEL VARCHAR(20) NOT NULL AFTER VEHICLE_ID;
Query OK, 0 rows affected (0.09 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> DESC VEHICLES;
+------------+-------------+------+-----+---------+----------------+
| Field      | Type        | Null | Key | Default | Extra          |
+------------+-------------+------+-----+---------+----------------+
| VEHICLE_ID | int         | NO   | PRI | NULL    | auto_increment |
| MODEL      | varchar(20) | NO   |     | NULL    |                |
| YEAR       | int         | NO   |     | NULL    |                |
| MAKE       | varchar(20) | NO   |     | NULL    |                |
+------------+-------------+------+-----+---------+----------------+
4 rows in set (0.01 sec)

mysql> ALTER TABLE VEHICLES ADD COLOR VARCHAR(20) NOT NULL ,ADD NOTE VARCHAR(20);
Query OK, 0 rows affected (0.08 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> DESC VEHICLES;
+------------+-------------+------+-----+---------+----------------+
| Field      | Type        | Null | Key | Default | Extra          |
+------------+-------------+------+-----+---------+----------------+
| VEHICLE_ID | int         | NO   | PRI | NULL    | auto_increment |
| MODEL      | varchar(20) | NO   |     | NULL    |                |
| YEAR       | int         | NO   |     | NULL    |                |
| MAKE       | varchar(20) | NO   |     | NULL    |                |
| COLOR      | varchar(20) | NO   |     | NULL    |                |
| NOTE       | varchar(20) | YES  |     | NULL    |                |
+------------+-------------+------+-----+---------+----------------+
6 rows in set (0.01 sec)

mysql> ALTER TABLE VEHICLES ADD SAMPLE VARCHAR(20) NOT NULL FIRST;
Query OK, 0 rows affected (0.06 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> DESC VEHICLES;
+------------+-------------+------+-----+---------+----------------+
| Field      | Type        | Null | Key | Default | Extra          |
+------------+-------------+------+-----+---------+----------------+
| SAMPLE     | varchar(20) | NO   |     | NULL    |                |
| VEHICLE_ID | int         | NO   | PRI | NULL    | auto_increment |
| MODEL      | varchar(20) | NO   |     | NULL    |                |
| YEAR       | int         | NO   |     | NULL    |                |
| MAKE       | varchar(20) | NO   |     | NULL    |                |
| COLOR      | varchar(20) | NO   |     | NULL    |                |
| NOTE       | varchar(20) | YES  |     | NULL    |                |
+------------+-------------+------+-----+---------+----------------+
7 rows in set (0.00 sec)

mysql> ALTER TABLE USER1 DROP NOTE;
ERROR 1091 (42000): Can't DROP 'NOTE'; check that column/key exists
mysql> ALTER TABLE VEHICLES DROP NOTE;
Query OK, 0 rows affected (0.07 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> DESC VEHICLES;
+------------+-------------+------+-----+---------+----------------+
| Field      | Type        | Null | Key | Default | Extra          |
+------------+-------------+------+-----+---------+----------------+
| SAMPLE     | varchar(20) | NO   |     | NULL    |                |
| VEHICLE_ID | int         | NO   | PRI | NULL    | auto_increment |
| MODEL      | varchar(20) | NO   |     | NULL    |                |
| YEAR       | int         | NO   |     | NULL    |                |
| MAKE       | varchar(20) | NO   |     | NULL    |                |
| COLOR      | varchar(20) | NO   |     | NULL    |                |
+------------+-------------+------+-----+---------+----------------+
6 rows in set (0.00 sec)

mysql> ALTER TABLE VEHICLES DROP COLUMN SAMPLE;
Query OK, 0 rows affected (0.07 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> DESC VEHICLES;
+------------+-------------+------+-----+---------+----------------+
| Field      | Type        | Null | Key | Default | Extra          |
+------------+-------------+------+-----+---------+----------------+
| VEHICLE_ID | int         | NO   | PRI | NULL    | auto_increment |
| MODEL      | varchar(20) | NO   |     | NULL    |                |
| YEAR       | int         | NO   |     | NULL    |                |
| MAKE       | varchar(20) | NO   |     | NULL    |                |
| COLOR      | varchar(20) | NO   |     | NULL    |                |
+------------+-------------+------+-----+---------+----------------+
5 rows in set (0.00 sec)

mysql> -- MODIFY DEFINITION OF COLUMN
mysql> ALTER TABLE USER1 MODIFY DOB DATE_OF_BIRTH DATE NOT NULL ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'DATE_OF_BIRTH DATE NOT NULL' at line 1
mysql> ALTER TABLE VEHICLES MODIFY COLOR VARCHAR(20) NOT NULL ;
Query OK, 0 rows affected (0.02 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> DESC VEHICLES;
+------------+-------------+------+-----+---------+----------------+
| Field      | Type        | Null | Key | Default | Extra          |
+------------+-------------+------+-----+---------+----------------+
| VEHICLE_ID | int         | NO   | PRI | NULL    | auto_increment |
| MODEL      | varchar(20) | NO   |     | NULL    |                |
| YEAR       | int         | NO   |     | NULL    |                |
| MAKE       | varchar(20) | NO   |     | NULL    |                |
| COLOR      | varchar(20) | NO   |     | NULL    |                |
+------------+-------------+------+-----+---------+----------------+
5 rows in set (0.00 sec)

mysql> ALTER TABLE USER1 MODIFY CITY VARCHAR(20) NOT NULL;
Query OK, 0 rows affected (0.17 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> DESC USER1;
+------------+-------------------+------+-----+---------+----------------+
| Field      | Type              | Null | Key | Default | Extra          |
+------------+-------------------+------+-----+---------+----------------+
| ID         | int               | NO   | PRI | NULL    | auto_increment |
| F_NAME     | varchar(20)       | NO   |     | NULL    |                |
| L_NAME     | varchar(20)       | NO   |     | NULL    |                |
| DOB        | date              | NO   |     | NULL    |                |
| GENDER     | enum('F','M','T') | YES  |     | NULL    |                |
| AGE        | int               | NO   |     | NULL    |                |
| CONTACT_NO | varchar(10)       | YES  | UNI | NULL    |                |
| CITY       | varchar(20)       | NO   |     | NULL    |                |
| INCOME     | int               | YES  |     | 0       |                |
+------------+-------------------+------+-----+---------+----------------+
9 rows in set (0.00 sec)

mysql> ALTER TABLE USER1 MODIFY INCOME INT CHECK(INCOME>0) NOT NULL ;
Query OK, 3 rows affected (0.12 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> DESC USER1;
+------------+-------------------+------+-----+---------+----------------+
| Field      | Type              | Null | Key | Default | Extra          |
+------------+-------------------+------+-----+---------+----------------+
| ID         | int               | NO   | PRI | NULL    | auto_increment |
| F_NAME     | varchar(20)       | NO   |     | NULL    |                |
| L_NAME     | varchar(20)       | NO   |     | NULL    |                |
| DOB        | date              | NO   |     | NULL    |                |
| GENDER     | enum('F','M','T') | YES  |     | NULL    |                |
| AGE        | int               | NO   |     | NULL    |                |
| CONTACT_NO | varchar(10)       | YES  | UNI | NULL    |                |
| CITY       | varchar(20)       | NO   |     | NULL    |                |
| INCOME     | int               | NO   |     | NULL    |                |
+------------+-------------------+------+-----+---------+----------------+
9 rows in set (0.00 sec)

mysql> DESC VEHICLES;
+------------+-------------+------+-----+---------+----------------+
| Field      | Type        | Null | Key | Default | Extra          |
+------------+-------------+------+-----+---------+----------------+
| VEHICLE_ID | int         | NO   | PRI | NULL    | auto_increment |
| MODEL      | varchar(20) | NO   |     | NULL    |                |
| YEAR       | int         | NO   |     | NULL    |                |
| MAKE       | varchar(20) | NO   |     | NULL    |                |
| COLOR      | varchar(20) | NO   |     | NULL    |                |
+------------+-------------+------+-----+---------+----------------+
5 rows in set (0.01 sec)

mysql> ALTER TABLE VEHICLES MODIFY YEAR SMALLINT ,MODIFY COLOR VARCHAR(20) AFTER MODEL;
Query OK, 0 rows affected (0.10 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> DESC VEHICLES;
+------------+-------------+------+-----+---------+----------------+
| Field      | Type        | Null | Key | Default | Extra          |
+------------+-------------+------+-----+---------+----------------+
| VEHICLE_ID | int         | NO   | PRI | NULL    | auto_increment |
| MODEL      | varchar(20) | NO   |     | NULL    |                |
| COLOR      | varchar(20) | YES  |     | NULL    |                |
| YEAR       | smallint    | YES  |     | NULL    |                |
| MAKE       | varchar(20) | NO   |     | NULL    |                |
+------------+-------------+------+-----+---------+----------------+
5 rows in set (0.00 sec)

mysql> ALTER TABLE VEHICLES MODIFY YEAR SMALLINT NOT NULL,MODIFY COLOR VARCHAR(20) NOT NULL AFTER MODEL;
Query OK, 0 rows affected (0.06 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> DESC VEHICLES;
+------------+-------------+------+-----+---------+----------------+
| Field      | Type        | Null | Key | Default | Extra          |
+------------+-------------+------+-----+---------+----------------+
| VEHICLE_ID | int         | NO   | PRI | NULL    | auto_increment |
| MODEL      | varchar(20) | NO   |     | NULL    |                |
| COLOR      | varchar(20) | NO   |     | NULL    |                |
| YEAR       | smallint    | NO   |     | NULL    |                |
| MAKE       | varchar(20) | NO   |     | NULL    |                |
+------------+-------------+------+-----+---------+----------------+
5 rows in set (0.00 sec)

mysql> ALTER TABLE USER1 CHANGE COLUMN DOB DATE_OF_BIRTH DATE ;
Query OK, 0 rows affected (0.11 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> DESC USER1;
+---------------+-------------------+------+-----+---------+----------------+
| Field         | Type              | Null | Key | Default | Extra          |
+---------------+-------------------+------+-----+---------+----------------+
| ID            | int               | NO   | PRI | NULL    | auto_increment |
| F_NAME        | varchar(20)       | NO   |     | NULL    |                |
| L_NAME        | varchar(20)       | NO   |     | NULL    |                |
| DATE_OF_BIRTH | date              | YES  |     | NULL    |                |
| GENDER        | enum('F','M','T') | YES  |     | NULL    |                |
| AGE           | int               | NO   |     | NULL    |                |
| CONTACT_NO    | varchar(10)       | YES  | UNI | NULL    |                |
| CITY          | varchar(20)       | NO   |     | NULL    |                |
| INCOME        | int               | NO   |     | NULL    |                |
+---------------+-------------------+------+-----+---------+----------------+
9 rows in set (0.01 sec)

mysql> -- ALTER TABLE FOR TABLE (ONLY ONE THING WE CAN DO IS RENAME OF TABLE NAME)
mysql> -- TWO METHODS 1] ALTER TABLE TABLE_NAME RENAME TO NEW_NAME;
mysql> ALTER TABLE VEHICLES RENAME TO CARS;
Query OK, 0 rows affected (0.03 sec)

mysql> SELECT * FROM CARS;
Empty set (0.00 sec)

mysql> DESC VEHICLES;
ERROR 1146 (42S02): Table 'aprilbatch.vehicles' doesn't exist
mysql> DESC CARS;
+------------+-------------+------+-----+---------+----------------+
| Field      | Type        | Null | Key | Default | Extra          |
+------------+-------------+------+-----+---------+----------------+
| VEHICLE_ID | int         | NO   | PRI | NULL    | auto_increment |
| MODEL      | varchar(20) | NO   |     | NULL    |                |
| COLOR      | varchar(20) | NO   |     | NULL    |                |
| YEAR       | smallint    | NO   |     | NULL    |                |
| MAKE       | varchar(20) | NO   |     | NULL    |                |
+------------+-------------+------+-----+---------+----------------+
5 rows in set (0.01 sec)

mysql> RENAME CARS TO VEHICLES;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'CARS TO VEHICLES' at line 1
mysql> -- METHOD 2] RENAME TABLE TABLE_NAME TO NEW_NAME
mysql> RENAME TABLE CARS TO VEHICLES;
Query OK, 0 rows affected (0.04 sec)

mysql> DESC CARS;
ERROR 1146 (42S02): Table 'aprilbatch.cars' doesn't exist
mysql> DESC VEHICLES;
+------------+-------------+------+-----+---------+----------------+
| Field      | Type        | Null | Key | Default | Extra          |
+------------+-------------+------+-----+---------+----------------+
| VEHICLE_ID | int         | NO   | PRI | NULL    | auto_increment |
| MODEL      | varchar(20) | NO   |     | NULL    |                |
| COLOR      | varchar(20) | NO   |     | NULL    |                |
| YEAR       | smallint    | NO   |     | NULL    |                |
| MAKE       | varchar(20) | NO   |     | NULL    |                |
+------------+-------------+------+-----+---------+----------------+
5 rows in set (0.00 sec)

 ysql> -- DROP A CONSTRAINT FROM A TABLE (PRIMARY KEY,UNIQUE KEY,CHECK,FOREIGN KEY)
mysql>