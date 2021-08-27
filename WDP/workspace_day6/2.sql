<<TABLESPACE와 SEGMENT, EXTENT, BLOCK의 관계 실습>>
[oracle@edydr1p1 ~]$ sqlplus / as sysdba

SQL*Plus: Release 12.1.0.2.0 Production on Sun Aug 22 10:56:18 2021

Copyright (c) 1982, 2014, Oracle.  All rights reserved.

Connected to an idle instance.

SQL> startup
ORACLE instance started.

Total System Global Area  536870912 bytes
Fixed Size		    2926472 bytes
Variable Size		  234883192 bytes
Database Buffers	  293601280 bytes
Redo Buffers		    5459968 bytes
Database mounted.
Database opened.
SQL> show user
USER is "SYS"
SQL> create tablespace a 
  2  datafile '/home/oracle/a.dbf' size 50m;

Tablespace created.

Elapsed: 00:00:00.22
SQL> exit
Disconnected from Oracle Database 12c Enterprise Edition Release 12.1.0.2.0 - 64bit Production
With the Partitioning, OLAP, Advanced Analytics and Real Application Testing options
[oracle@edydr1p1 ~]$ cd /home/oracle
[oracle@edydr1p1 ~]$ ls a.dbf
a.dbf
[oracle@edydr1p1 ~]$ sqlplus / as sysdba

SQL*Plus: Release 12.1.0.2.0 Production on Sun Aug 22 11:04:05 2021

Copyright (c) 1982, 2014, Oracle.  All rights reserved.


Connected to:
Oracle Database 12c Enterprise Edition Release 12.1.0.2.0 - 64bit Production
With the Partitioning, OLAP, Advanced Analytics and Real Application Testing options

SQL> alter tablespace a 
  2  add datafile '/home/oracle/a2.dbf' size 100m;

Tablespace altered.

Elapsed: 00:00:00.28
SQL> exit
Disconnected from Oracle Database 12c Enterprise Edition Release 12.1.0.2.0 - 64bit Production
With the Partitioning, OLAP, Advanced Analytics and Real Application Testing options
[oracle@edydr1p1 ~]$ pwd
/home/oracle
[oracle@edydr1p1 ~]$ ls
a2.dbf      bea        Downloads  oradiag_oracle  solns
a.dbf       Desktop    labs       Pictures        Templates
afiedt.buf  Documents  Music      Public          Videos
[oracle@edydr1p1 ~]$ sqlplus / as sysdba

SQL*Plus: Release 12.1.0.2.0 Production on Sun Aug 22 11:05:22 2021

Copyright (c) 1982, 2014, Oracle.  All rights reserved.


Connected to:
Oracle Database 12c Enterprise Edition Release 12.1.0.2.0 - 64bit Production
With the Partitioning, OLAP, Advanced Analytics and Real Application Testing options

SQL> select file_name, tablespace_name 
  2  from dba_data_files
  3  where tablespace_name ='A';

FILE_NAME
------------------------------------------------------------------------------------------------------------------------------------------------------
TABLESPACE_NAME
------------------------------
/home/oracle/a.dbf
A

/home/oracle/a2.dbf
A


2 rows selected.

Elapsed: 00:00:00.06
SQL> create user testa identified by oracle
  2  default tablespace a
  3  quota unlimited on a;

User created.

Elapsed: 00:00:00.07
SQL> grant connect,resource to testa;

Grant succeeded.

Elapsed: 00:00:00.03
SQL> connect testa/oracle
Connected.
SQL> show user
USER is "TESTA"
SQL> create table empa (id number);

Table created.

Elapsed: 00:00:00.05
SQL> select tablespace_name,table_name from user_tables
  2  where table_name = 'EMPA';

TABLESPACE_NAME
------------------------------
TABLE_NAME
--------------------------------------------------------------------------------------------------------------------------------
A
EMPA


1 row selected.

Elapsed: 00:00:00.07
SQL> select tablespace_name,segment_name 
  2  from user_segments
  3  where segment_name='EMPA';

no rows selected

Elapsed: 00:00:00.06
SQL> insert into empa values(10000);

1 row created.

Elapsed: 00:00:00.10
SQL> commit;

Commit complete.

Elapsed: 00:00:00.00
SQL> desc user_extents
 Name										     Null?    Type
 ----------------------------------------------------------------------------------- -------- --------------------------------------------------------
 SEGMENT_NAME									      VARCHAR2(128)
 PARTITION_NAME 								      VARCHAR2(128)
 SEGMENT_TYPE									      VARCHAR2(18)
 TABLESPACE_NAME								      VARCHAR2(30)
 EXTENT_ID									      NUMBER
 BYTES										      NUMBER
 BLOCKS 									      NUMBER

SQL> select segment_name, tablespace_name, extent_id, blocks
  2  from user_extents
  3  where segement_name = 'EMPA';
where segement_name = 'EMPA'
      *
ERROR at line 3:
ORA-00904: "SEGEMENT_NAME": invalid identifier


Elapsed: 00:00:00.01
SQL> select segment_name, tablespace_name, extent_id, blocks
  2  from user_extents
  3  where segment_name='EMPA';

SEGMENT_NAME
--------------------------------------------------------------------------------------------------------------------------------
TABLESPACE_NAME 		EXTENT_ID     BLOCKS
------------------------------ ---------- ----------
EMPA
A					0	   8


1 row selected.

Elapsed: 00:00:00.19
SQL> select tablespace_name,segment_name 
  2  from user_segments
  3  where segment_name='EMPA';

TABLESPACE_NAME
------------------------------
SEGMENT_NAME
--------------------------------------------------------------------------------------------------------------------------------
A
EMPA


1 row selected.

Elapsed: 00:00:00.03
SQL> insert into empa 
  2  select * from empa;

1 row created.

Elapsed: 00:00:00.01
SQL> /

2 rows created.

Elapsed: 00:00:00.00
SQL> /

4 rows created.

Elapsed: 00:00:00.00
SQL> /

8 rows created.

Elapsed: 00:00:00.00
SQL> /

16 rows created.

Elapsed: 00:00:00.00
SQL> /

32 rows created.

Elapsed: 00:00:00.00
SQL> /

64 rows created.

Elapsed: 00:00:00.00
SQL> /

128 rows created.

Elapsed: 00:00:00.00
SQL> /

256 rows created.

Elapsed: 00:00:00.00
SQL> /

512 rows created.

Elapsed: 00:00:00.01
SQL> /

1024 rows created.

Elapsed: 00:00:00.00
SQL> /

2048 rows created.

Elapsed: 00:00:00.01
SQL> select segment_name, tablespace_name, extent_id, blocks
  2  from user_extents
  3  where segment_name='EMPA';

SEGMENT_NAME
--------------------------------------------------------------------------------------------------------------------------------
TABLESPACE_NAME 		EXTENT_ID     BLOCKS
------------------------------ ---------- ----------
EMPA
A					0	   8

EMPA
A					1	   8


2 rows selected.

Elapsed: 00:00:00.10
SQL> 
