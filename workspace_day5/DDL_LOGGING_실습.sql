[oracle@edydr1p1 ~]$ cd /u01/app/oracle/diag/rdbms/orcl/orcl
[oracle@edydr1p1 orcl]$ cd log
[oracle@edydr1p1 log]$ pwd
/u01/app/oracle/diag/rdbms/orcl/orcl/log
[oracle@edydr1p1 log]$ ls
ddl debug imdb test
[oracle@edydr1p1 ddl]$ sqlplus / as sysdba
SQL*Plus: Release 12.1.0.2.0 Production on Sat Jul 24 11:41:56 2021
Copyright (c) 1982, 2014, Oracle. All rights reserved.
Connected to:
Oracle Database 12c Enterprise Edition Release 12.1.0.2.0 - 64bit Production
With the Partitioning, OLAP, Advanced Analytics and Real Application Testing options
SQL> alter system set enable_ddl_logging=true;
System altered.
Elapsed: 00:00:00.02
SQL> connect hr/oracle
Connected.
SQL> show user
USER is "HR"
SQL> create table testdd (id number);
Table created.
Elapsed: 00:00:00.07
SQL> exit
Disconnected from Oracle Database 12c Enterprise Edition Release 12.1.0.2.0 - 64bit Production
With the Partitioning, OLAP, Advanced Analytics and Real Application Testing options

[oracle@edydr1p1 ddl]$ ls
log.xml
[oracle@edydr1p1 ddl]$ cd ..
[oracle@edydr1p1 log]$ ls
ddl ddl_orcl.log debug imdb test
[oracle@edydr1p1 log]$ cat ddl_orcl.log
Sat Jul 24 11:43:14 2021
diag_adl:create table testdd (id number)
[oracle@edydr1p1 log]$ sqlplus / as sysdba
SQL*Plus: Release 12.1.0.2.0 Production on Sat Jul 24 11:45:12 2021
Copyright (c) 1982, 2014, Oracle. All rights reserved.
Connected to:
Oracle Database 12c Enterprise Edition Release 12.1.0.2.0 - 64bit Production
With the Partitioning, OLAP, Advanced Analytics and Real Application Testing options
SQL> alter system set enable_ddl_logging=false;
System altered.
Elapsed: 00:00:00.00
SQL>
