[oracle@edydr1p1 ~]$ sqlplus / as sysdba

SQL*Plus: Release 12.1.0.2.0 Production on Sat Aug 21 16:33:31 2021

Copyright (c) 1982, 2014, Oracle.  All rights reserved.


Connected to:
Oracle Database 12c Enterprise Edition Release 12.1.0.2.0 - 64bit Production
With the Partitioning, OLAP, Advanced Analytics and Real Application Testing options

SQL> create user test1 identified by oracle
  2  default tablespace users
  3  quota unlimited on users
  4  quota unlimited on example
  5  /

User created.

Elapsed: 00:00:00.07
SQL> define _editor=gedit
SQL> ed 
Wrote file afiedt.buf

  1  create user test2 identified by oracle
  2  default tablespace users
  3  quota unlimited on users
  4* quota unlimited on example
SQL> /

User created.

Elapsed: 00:00:00.03
SQL> grant connect, resource to test1,test2;

Grant succeeded.

Elapsed: 00:00:00.02
SQL>
