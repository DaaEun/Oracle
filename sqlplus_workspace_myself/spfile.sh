[oracle@edydr1p1 ~]$ sqlplus / as sysdba

SQL*Plus: Release 12.1.0.2.0 Production on Wed Aug 25 13:18:24 2021

Copyright (c) 1982, 2014, Oracle.  All rights reserved.

Connected to an idle instance.

SQL> startup
ORACLE instance started.

Total System Global Area  536870912 bytes
Fixed Size		    2926472 bytes
Variable Size		  301992056 bytes
Database Buffers	  226492416 bytes
Redo Buffers		    5459968 bytes
Database mounted.
Database opened.
SQL> show parameter processes

NAME				     TYPE	 VALUE
------------------------------------ ----------- ------------------------------
aq_tm_processes 		     integer	 1
db_writer_processes		     integer	 1
gcs_server_processes		     integer	 0
global_txn_processes		     integer	 1
job_queue_processes		     integer	 1000
log_archive_max_processes	     integer	 4
processes			     integer	 300
SQL> alter system set processes=200 scope=spfile;

System altered.

Elapsed: 00:00:00.00
SQL> show parameter processes

NAME				     TYPE	 VALUE
------------------------------------ ----------- ------------------------------
aq_tm_processes 		     integer	 1
db_writer_processes		     integer	 1
gcs_server_processes		     integer	 0
global_txn_processes		     integer	 1
job_queue_processes		     integer	 1000
log_archive_max_processes	     integer	 4
processes			     integer	 300
SQL> alter system set processes=200 scope=memory;
alter system set processes=200 scope=memory
                 *
ERROR at line 1:
ORA-02095: specified initialization parameter cannot be modified


Elapsed: 00:00:00.00
SQL> alter system set job_queue_processes=90;

System altered.

Elapsed: 00:00:00.01
SQL> show parameter job_queue_processes

NAME				     TYPE	 VALUE
------------------------------------ ----------- ------------------------------
job_queue_processes		     integer	 90
SQL> alter system set job_queue_processes=100 scope=memory;

System altered.

Elapsed: 00:00:00.00
SQL> show parameter job_queue_processes

NAME				     TYPE	 VALUE
------------------------------------ ----------- ------------------------------
job_queue_processes		     integer	 100
SQL> shutdown immediate
Database closed.
Database dismounted.
ORACLE instance shut down.
SQL> startup
ORACLE instance started.

Total System Global Area  536870912 bytes
Fixed Size		    2926472 bytes
Variable Size		  251660408 bytes
Database Buffers	  276824064 bytes
Redo Buffers		    5459968 bytes
Database mounted.
Database opened.
SQL> show parameter job_queue_processes

NAME				     TYPE	 VALUE
------------------------------------ ----------- ------------------------------
job_queue_processes		     integer	 90
SQL> show parameter spfile

NAME				     TYPE	 VALUE
------------------------------------ ----------- ------------------------------
spfile				     string	 /u01/app/oracle/product/12.1.0
						 /dbhome_1/dbs/spfileorcl.ora
SQL> exit