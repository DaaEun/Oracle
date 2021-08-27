<< TABLESPACE>>
테이블스페스안에 데이타파일의 크기와 갯수에 따른 TABLESPACE의 종류

1. SMALLFILE TABLESPACE : 하나의 TABLESPACE가 여러개의
DATAFILE을 가질 수 있는 TABLESPACE
DATAFILE의 크기가 OS종류에 따라 다를 수 있지만  제한이 걸린다
(DEFAULT)

2. BIGFILE TABLESPACE : 하나의 TABLESPACE가 한개의
DATAFILE만 가질 수 있는 TABLESPACE
DATAFILE의 크기가 최대 128TB까지 가질 수 있다.


-- 테이블스페이스안에 있는 EXTENT와 BLOCK공간의 관리 방법에 차이에 따른 분류
1. LOCAL MANAGED TABLESPACE (12c에서 기본)
CREATE TABLESPACE A
EXTENT MANAGEMENT LOCAL
SEGMENT SPACE MANAGEMENT AUTO

: TABLESPACE안에 블럭의 상태 정보를 각 TABLESPACE의
DATAFILE의 HEADER에서 BITMAP으로 관리하고 SEGMENT안에 있는 블럭들의
상태정보도 각 세그먼트의 HEADER에서 BITMAP으로 관리한다.
결국은 데이타가 입력가능한 FREE BLOCK들의 정보를 빨리 확인이 가능하기 때문에
새로운 EXTENT를 만드는 작업이나 기존의 EXTENT안에 비어있는 BLOCK을
검색하는 속도가 빨라져서 데이타의 입력작업의 속도가 빨라질 수 있다.
이런 방식으로 운영되는 TABLESPACE를 LOCAL TABLESPACE라고 한다.

2. DICTIONARY MANAGED TABLESPACE
CREATE TABLESPACE A
EXTENT MANAGEMENT DICTIONARY
SEGMENT SPACE MANAGEMENT MANUAL
: TABLESPACE안에 블럭의 상태 정보를 각 TABLESPACE의
DATAFILE의 HEADER에서 BITMAP으로 관리하는게 아니고 SYSTEM TABLESPACE에서 
데이타 딕셔너리에서 관리


SQL> connect / as sysdba
Connected.
SQL> SELECT TABLESPACE_NAME FROM DBA_TABLESPACES;

TABLESPACE_NAME
------------------------------
SYSTEM
SYSAUX
UNDOTBS1
TEMP
USERS
EXAMPLE
A

7 rows selected.

<<TEMP TABLESPACE>>
[oracle@edydr1p1 dbhome_1]$ sqlplus / as sysdba
SQL*Plus: Release 12.1.0.2.0 Production on Sun Jul 25 14:10:22 2021
Copyright (c) 1982, 2014, Oracle. All rights reserved.
Connected to:
Oracle Database 12c Enterprise Edition Release 12.1.0.2.0 - 64bit Production
With the Partitioning, OLAP, Advanced Analytics and Real Application Testing options
SQL> create temporary tablespace temp2
2 tempfile '/home/oracle/temp2.dbf' size 50m;
Tablespace created.
Elapsed: 00:00:00.04
SQL>
Elapsed: 00:00:00.04
SQL> create user testu identified by oracle
2 default tablespace users
3 quota unlimited on users
4 temporary tablespace temp2;
User created.
Elapsed: 00:00:00.03


SQL> alter tablespace a offline;

Tablespace altered.

Elapsed: 00:00:00.05

SQL> alter tablespace a online;

Tablespace altered.

Elapsed: 00:00:00.03

SQL> alter tablespace a read only;

Tablespace altered.

Elapsed: 00:00:00.02
SQL> alter tablespace a read write;

Tablespace altered.

Elapsed: 00:00:00.01
SQL> drop tablespace a;
drop tablespace a
*
ERROR at line 1:
ORA-01549: tablespace not empty, use INCLUDING CONTENTS option


Elapsed: 00:00:00.05
SQL> drop tablespace a including contents and datafiles;

Tablespace dropped.

<< ROW CHAINING AND MIGRATION CHECK>>
<< ROW CHAINING AND MIGRATION 확인>>
column c1 heading "Owner" format a9;
column c2 heading "Table" format a12;
column c3 heading "PCTFREE" format 99;
column c4 heading "PCTUSED" format 99;
column c5 heading "avg row" format 99,999;
column c6 heading "Rows" format 999,999,999;
column c7 heading "Chains" format 999,999,999;
column c8 heading "Pct" format .99;
select
owner c1,
table_name c2,
pct_free c3,
pct_used c4,
avg_row_len c5,
num_rows c6,
chain_cnt c7,
chain_cnt/num_rows c8
from dba_tables
where table_name ='EMP';


