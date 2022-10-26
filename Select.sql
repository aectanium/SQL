Enter password: ******
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 13
Server version: 8.0.31 MySQL Community Server - GPL

Copyright (c) 2000, 2022, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> SHOW databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| students           |
| sys                |
+--------------------+
5 rows in set (0.00 sec)

mysql> USE students;
Database changed
mysql> SELECT * FROM courses;
+---------+--------+------+
| faculty | number | id   |
+---------+--------+------+
| bio     |      1 | NULL |
| chem    |      2 | NULL |
| math    |      3 | NULL |
| gum     |      4 | NULL |
+---------+--------+------+
4 rows in set (0.00 sec)

mysql> SELECT DISTINCT number FROM courses;
+--------+
| number |
+--------+
|      1 |
|      2 |
|      3 |
|      4 |
+--------+
4 rows in set (0.00 sec)

mysql> SELECT * FROM courses LIMIT 2;
+---------+--------+------+
| faculty | number | id   |
+---------+--------+------+
| bio     |      1 | NULL |
| chem    |      2 | NULL |
+---------+--------+------+
2 rows in set (0.00 sec)

mysql> SELECT number AS номер FROM courses;
+------------+
| номер      |
+------------+
|          1 |
|          2 |
|          3 |
|          4 |
+------------+
4 rows in set (0.00 sec)

mysql> SELECT * FROM courses;
+---------+--------+------+
| faculty | number | id   |
+---------+--------+------+
| bio     |      1 | NULL |
| chem    |      2 | NULL |
| math    |      3 | NULL |
| gum     |      4 | NULL |
+---------+--------+------+
4 rows in set (0.00 sec)

mysql> SELECT faculty, number FROM courses WHERE faculty = "bio";
+---------+--------+
| faculty | number |
+---------+--------+
| bio     |      1 |
+---------+--------+
1 row in set (0.00 sec)

mysql> SELECT faculty, number FROM courses WHERE faculty = "1";
Empty set (0.00 sec)

mysql> SELECT faculty, number FROM courses WHERE number = "4";
+---------+--------+
| faculty | number |
+---------+--------+
| gum     |      4 |
+---------+--------+
1 row in set (0.00 sec)

mysql> SELECT number FROM courses WHERE number > "1"
    -> ;
+--------+
| number |
+--------+
|      2 |
|      3 |
|      4 |
+--------+
3 rows in set (0.00 sec)

mysql> SELECT * FROM courses WHERE number = 1 AND faculty = "bio";
+---------+--------+------+
| faculty | number | id   |
+---------+--------+------+
| bio     |      1 | NULL |
+---------+--------+------+
1 row in set (0.00 sec)

mysql> SELECT * FROM courses WHERE number = 1 OR faculty = "gum";
+---------+--------+------+
| faculty | number | id   |
+---------+--------+------+
| bio     |      1 | NULL |
| gum     |      4 | NULL |
+---------+--------+------+
2 rows in set (0.00 sec)

mysql> SELECT faculty FROM courses WHERE faculty LIKE "%o";
+---------+
| faculty |
+---------+
| bio     |
+---------+
1 row in set (0.00 sec)

mysql> SELECT faculty FROM courses WHERE faculty LIKE "_io";
+---------+
| faculty |
+---------+
| bio     |
+---------+
1 row in set (0.00 sec)

mysql> SELECT faculty FROM courses WHERE faculty LIKE "_u%";
+---------+
| faculty |
+---------+
| gum     |
+---------+
1 row in set (0.00 sec)


mysql> SELECT * FROM courses WHERE number  BETWEEN 2 AND 4;
+---------+--------+------+
| faculty | number | id   |
+---------+--------+------+
| chem    |      2 | NULL |
| math    |      3 | NULL |
| gum     |      4 | NULL |
+---------+--------+------+
3 rows in set (0.00 sec)

mysql> SELECT * FROM courses WHERE NOT number  BETWEEN 2 AND 4;
+---------+--------+------+
| faculty | number | id   |
+---------+--------+------+
| bio     |      1 | NULL |
+---------+--------+------+
1 row in set (0.00 sec)

mysql> SELECT * FROM courses WHERE number IN (1,4);
+---------+--------+------+
| faculty | number | id   |
+---------+--------+------+
| bio     |      1 | NULL |
| gum     |      4 | NULL |
+---------+--------+------+
2 rows in set (0.00 sec)

mysql> SELECT * FROM courses WHERE (faculty = "gum" OR faculty = "bio") AND number = 1;
+---------+--------+------+
| faculty | number | id   |
+---------+--------+------+
| bio     |      1 | NULL |
+---------+--------+------+
1 row in set (0.00 sec)

mysql> SELECT * FROM courses ORDER BY faculty;
+---------+--------+------+
| faculty | number | id   |
+---------+--------+------+
| bio     |      1 | NULL |
| chem    |      2 | NULL |
| gum     |      4 | NULL |
| math    |      3 | NULL |
+---------+--------+------+
4 rows in set (0.00 sec)

mysql> SELECT * FROM courses ORDER BY faculty DESC;
+---------+--------+------+
| faculty | number | id   |
+---------+--------+------+
| math    |      3 | NULL |
| gum     |      4 | NULL |
| chem    |      2 | NULL |
| bio     |      1 | NULL |
+---------+--------+------+
4 rows in set (0.00 sec)

mysql> SELECT AVG(number) FROM courses;
+-------------+
| AVG(number) |
+-------------+
|      2.5000 |
+-------------+
1 row in set (0.00 sec)

mysql> SELECT SUM(number) FROM courses;
+-------------+
| SUM(number) |
+-------------+
|          10 |
+-------------+
1 row in set (0.00 sec)

mysql> SELECT MIN(number) AS min_number FROM courses;
+------------+
| min_number |
+------------+
|          1 |
+------------+
1 row in set (0.00 sec)

mysql> SELECT MAX(number) AS max_number FROM courses;
+------------+
| max_number |
+------------+
|          4 |
+------------+
1 row in set (0.00 sec)


mysql> SELECT COUNT(faculty) FROM courses;
+----------------+
| COUNT(faculty) |
+----------------+
|              4 |
+----------------+
1 row in set (0.00 sec)

mysql>