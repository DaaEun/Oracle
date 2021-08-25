[oracle@edydr1p1 ~]$ sqlplus / as sysdba

SQL*Plus: Release 12.1.0.2.0 Production on Wed Aug 25 11:46:39 2021

Copyright (c) 1982, 2014, Oracle.  All rights reserved.

Connected to an idle instance.

SQL> show user
USER is "SYS"
SQL> select status form v
  2    
SQL> select status from v$instance;
select status from v$instance
*
ERROR at line 1:
ORA-01034: ORACLE not available
Process ID: 0
Session ID: 0 Serial number: 0


Elapsed: 00:00:00.00
SQL> shutdown 
ERROR:
ORA-01034: ORACLE not available
ORA-27101: shared memory realm does not exist
Linux-x86_64 Error: 2: No such file or directory
Additional information: 3640
Additional information: 1371676159
Process ID: 0
Session ID: 0 Serial number: 0


SQL> startup nomount;
ORACLE instance started.

Total System Global Area  536870912 bytes
Fixed Size		    2926472 bytes
Variable Size		  301992056 bytes
Database Buffers	  226492416 bytes
Redo Buffers		    5459968 bytes
SQL> select status from v$instance;

STATUS
------------
STARTED

1 row selected.

Elapsed: 00:00:00.01
SQL> show parameter spfile

NAME				     TYPE	 VALUE
------------------------------------ ----------- ------------------------------
spfile				     string	 /u01/app/oracle/product/12.1.0
						 /dbhome_1/dbs/spfileorcl.ora
SQL> alter database mount;

Database altered.

Elapsed: 00:00:04.07
SQL> select status from v$instance;

STATUS
------------
MOUNTED

1 row selected.

Elapsed: 00:00:00.00
SQL> alter database open;

Database altered.

Elapsed: 00:00:00.65
SQL> select status from v$instance;

STATUS
------------
OPEN

1 row selected.

Elapsed: 00:00:00.01
SQL> shutdown 
Database closed.
Database dismounted.
ORACLE instance shut down.
