[oracle@edydr1p1 ~]$ sqlplus / as sysdba
SQL*Plus: Release 12.1.0.2.0 Production on Sun Aug 15 16:18:27 2021
Copyright (c) 1982, 2014, Oracle. All rights reserved.
Connected to an idle instance.
SQL> startup
ORACLE instance started.
Total System Global Area 536870912 bytes
Fixed Size 2926472 bytes
Variable Size 281020536 bytes
Database Buffers 247463936 bytes
Redo Buffers 5459968 bytes
Database mounted.
Database opened.
SQL> select * from v$datafile;
FILE# CREATION_CHANGE# CREATION_ TS# RFILE# STATUS ENABLED CHECKPOINT_CHANGE#
CHECKPOIN UNRECOVERABLE_CHANGE# UNRECOVER
---------- ---------------- --------- ---------- ---------- ------- ---------- ------------------ --------- --------------------- ---------
LAST_CHANGE# LAST_TIME OFFLINE_CHANGE# ONLINE_CHANGE# ONLINE_TI BYTES BLOCKS
CREATE_BYTES BLOCK_SIZE
------------ --------- --------------- -------------- --------- ---------- ---------- ------------ ----------
NAME
------------------------------------------------------------------------------------------------------------------------------------------------------
PLUGGED_IN BLOCK1_OFFSET
---------- -------------
AUX_NAME
------------------------------------------------------------------------------------------------------------------------------------------------------
FIRST_NONLOGGED_SCN FIRST_NON FOREIGN_DBID FOREIGN_CREATION_CHANGE# FOREIGN_C PLU
PLUGIN_CHANGE# PLUGIN_RESETLOGS_CHANGE# PLUGIN_RE CON_ID
------------------- --------- ------------ ------------------------ --------- --- -------------- ------------------------ --------- ----------
1 7 07-JUL-14 0 1 SYSTEM READ WRITE 2774085 15-AUG-21 0
1594142 1594143 11-MAR-17 838860800 102400 0 8192
/u01/app/oracle/oradata/orcl/system01.dbf
0 8192
NONE
0 0 0 NO 0 0 0
3 4180 07-JUL-14 1 3 ONLINE READ WRITE 2774085 15-AUG-21 0
1594142 1594143 11-MAR-17 723517440 88320 0 8192
/u01/app/oracle/oradata/orcl/sysaux01.dbf
0 8192
NONE
0 0 0 NO 0 0 0
4 1591076 07-JUL-14 2 4 ONLINE READ WRITE 2774085 15-AUG-21 0
1594142 1594143 11-MAR-17 157286400 19200 0 8192
/u01/app/oracle/oradata/orcl/undotbs01.dbf
0 8192
NONE
0 0 0 NO 0 0 0
5 1609596 11-MAR-17 6 10 ONLINE READ WRITE 2774085 15-AUG-21 0
1609621 1609954 11-MAR-17 1304166400 159200 104857600 8192
/u01/app/oracle/oradata/orcl/example01.dbf
0 8192
NONE
0 4180948263 1566600 07-JUL-14 NO 1599245 1594143 11-MAR-17 0
6 24908 07-JUL-14 4 6 ONLINE READ WRITE 2774085 15-AUG-21 0
1594142 1594143 11-MAR-17 5242880 640 0 8192
/u01/app/oracle/oradata/orcl/users01.dbf
0 8192
NONE
0 0 0 NO 0 0 0
5 rows selected.
Elapsed: 00:00:00.01
SQL> select name from v$datafile;
NAME
------------------------------------------------------------------------------------------------------------------------------------------------------
/u01/app/oracle/oradata/orcl/system01.dbf
/u01/app/oracle/oradata/orcl/sysaux01.dbf
/u01/app/oracle/oradata/orcl/undotbs01.dbf
/u01/app/oracle/oradata/orcl/example01.dbf
/u01/app/oracle/oradata/orcl/users01.dbf
5 rows selected.
Elapsed: 00:00:00.01
SQL> select * from v$controlfile;
STATUS
-------
NAME
------------------------------------------------------------------------------------------------------------------------------------------------------
IS_ BLOCK_SIZE FILE_SIZE_BLKS CON_ID
--- ---------- -------------- ----------
/u01/app/oracle/oradata/orcl/control01.ctl
NO 16384 612 0
/u01/app/oracle/fast_recovery_area/orcl/control02.ctl
NO 16384 612 0
2 rows selected.
Elapsed: 00:00:00.03
SQL> select * from v$log;
GROUP# THREAD# SEQUENCE# BYTES BLOCKSIZE MEMBERS ARC STATUS FIRST_CHANGE#
FIRST_TIM NEXT_CHANGE# NEXT_TIME CON_ID
---------- ---------- ---------- ---------- ---------- ---------- --- ---------------- ------------- --------- ------------ --------- ----------
1 1 19 52428800 512 1 NO INACTIVE 2567883 30-MAY-20 2671030
31-MAY-20 0
2 1 20 52428800 512 1 NO INACTIVE 2671030 31-MAY-20 2772205
15-AUG-21 0
3 1 21 52428800 512 1 NO CURRENT 2772205 15-AUG-21 2.8147E+14
0
3 rows selected.
Elapsed: 00:00:00.02
SQL> select * from v$logfile;
GROUP# STATUS TYPE
---------- ------- -------
MEMBER
------------------------------------------------------------------------------------------------------------------------------------------------------
IS_ CON_ID
--- ----------
3 ONLINE
/u01/app/oracle/oradata/orcl/redo03.log
NO 0
2 ONLINE
/u01/app/oracle/oradata/orcl/redo02.log
NO 0
1 ONLINE
/u01/app/oracle/oradata/orcl/redo01.log
NO 0
3 rows selected.
Elapsed: 00:00:00.00
SQL>