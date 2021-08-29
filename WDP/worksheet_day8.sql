메모리 관리 예제



[oracle@edydr1p1 ~]$ sqlplus / as sysdba
SQL*Plus: Release 12.1.0.2.0 Production on Sun Aug 1 14:10:08 2021
Copyright (c) 1982, 2014, Oracle. All rights reserved.
Connected to:
Oracle Database 12c Enterprise Edition Release 12.1.0.2.0 - 64bit Production
With the Partitioning, OLAP, Advanced Analytics and Real Application Testing options
SQL> show parameter memory_target
NAME TYPE VALUE
------------------------------------ ----------- ------------------------------
memory_target big integer 0
SQL> show parameter sga_target
NAME TYPE VALUE
------------------------------------ ----------- ------------------------------
sga_target big integer 512M
SQL> show parameter shared_pool
NAME TYPE VALUE
------------------------------------ ----------- ------------------------------
shared_pool_reserved_size big integer 6501171
shared_pool_size big integer 0
SQL> alter system set shared_pool_size=50m;
System altered.
Elapsed: 00:00:00.01
SQL> show parameter shared_pool
NAME TYPE VALUE
------------------------------------ ----------- ------------------------------
shared_pool_reserved_size big integer 6501171
shared_pool_size big integer 52M
SQL> alter system set log_buffer=50m;
alter system set log_buffer=50m
*
ERROR at line 1:
ORA-02095: specified initialization parameter cannot be modified
Elapsed: 00:00:00.00
SQL> alter system set log_buffer=50m scope=spfile;
System altered.
Elapsed: 00:00:00.00
SQL> show parameter log_buffer
NAME TYPE VALUE
------------------------------------ ----------- ------------------------------
log_buffer big integer 5072K
SQL> alter system set db_keep_cache_size=50m;
System altered.
Elapsed: 00:00:01.64
SQL> show parameter db_keep_cache_size
NAME TYPE VALUE
------------------------------------ ----------- ------------------------------
db_keep_cache_size big integer 52M
SQL>
