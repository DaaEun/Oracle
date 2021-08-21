[oracle@edydr1p1 ~]$ sqlplus test2/oracle

SQL*Plus: Release 12.1.0.2.0 Production on Sat Aug 21 16:38:55 2021

Copyright (c) 1982, 2014, Oracle.  All rights reserved.


Connected to:
Oracle Database 12c Enterprise Edition Release 12.1.0.2.0 - 64bit Production
With the Partitioning, OLAP, Advanced Analytics and Real Application Testing options

SQL> show user
USER is "TEST2"
SQL> SELECT TABLE_NAME FROM USER_TABLES;

no rows selected

Elapsed: 00:00:00.08
SQL> CREATE TABLE EMP2 (ID NUMBER)
  2  /

Table created.

Elapsed: 00:00:00.01
SQL> select tablespace_name, table_name from user_tables
  2  WHERE TABLE_NAME='EMP2';

TABLESPACE_NAME
------------------------------
TABLE_NAME
--------------------------------------------------------------------------------------------------------------------------------
USERS
EMP2


1 row selected.

Elapsed: 00:00:00.02
SQL> SELECT TABLE_NAME FROM USER_TABLES;

TABLE_NAME
--------------------------------------------------------------------------------------------------------------------------------
EMP2

1 row selected.

Elapsed: 00:00:00.03
SQL> 

