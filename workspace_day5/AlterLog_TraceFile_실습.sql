[oracle@edydr1p1 ~]$ sqlplus / as sysdba

SQL*Plus: Release 12.1.0.2.0 Production on Sat Aug 21 10:24:06 2021

Copyright (c) 1982, 2014, Oracle.  All rights reserved.


Connected to:
Oracle Database 12c Enterprise Edition Release 12.1.0.2.0 - 64bit Production
With the Partitioning, OLAP, Advanced Analytics and Real Application Testing options

SQL> show parameter diag

NAME				     TYPE	 VALUE
------------------------------------ ----------- ------------------------------
diagnostic_dest 		     string	 /u01/app/oracle
SQL> col value format a20
SQL> select name,value from v$diag_info;

NAME								 VALUE
---------------------------------------------------------------- --------------------
Diag Enabled							 TRUE
ADR Base							 /u01/app/oracle
ADR Home							 /u01/app/oracle/diag
								 /rdbms/orcl/orcl

Diag Trace							 /u01/app/oracle/diag
								 /rdbms/orcl/orcl/tra
								 ce

Diag Alert							 /u01/app/oracle/diag
								 /rdbms/orcl/orcl/ale
								 rt

Diag Incident							 /u01/app/oracle/diag
								 /rdbms/orcl/orcl/inc
								 ident

Diag Cdump							 /u01/app/oracle/diag
								 /rdbms/orcl/orcl/cdu
								 mp

Health Monitor							 /u01/app/oracle/diag
								 /rdbms/orcl/orcl/hm

Default Trace File						 /u01/app/oracle/diag
								 /rdbms/orcl/orcl/tra
								 ce/orcl_ora_4773.trc

Active Problem Count						 0
Active Incident Count						 0

11 rows selected.

Elapsed: 00:00:00.01
SQL> col name format a20
SQL> l
  1* select name,value from v$diag_info
SQL> /

NAME		     VALUE
-------------------- --------------------
Diag Enabled	     TRUE
ADR Base	     /u01/app/oracle
ADR Home	     /u01/app/oracle/diag
		     /rdbms/orcl/orcl

Diag Trace	     /u01/app/oracle/diag
		     /rdbms/orcl/orcl/tra
		     ce

Diag Alert	     /u01/app/oracle/diag
		     /rdbms/orcl/orcl/ale
		     rt

Diag Incident	     /u01/app/oracle/diag
		     /rdbms/orcl/orcl/inc
		     ident

Diag Cdump	     /u01/app/oracle/diag
		     /rdbms/orcl/orcl/cdu
		     mp

Health Monitor	     /u01/app/oracle/diag
		     /rdbms/orcl/orcl/hm

Default Trace File   /u01/app/oracle/diag
		     /rdbms/orcl/orcl/tra
		     ce/orcl_ora_4773.trc

Active Problem Count 0
Active Incident Coun 0
t


11 rows selected.

Elapsed: 00:00:00.00
SQL> col value format a40
SQL> l
  1* select name,value from v$diag_info
SQL> /

NAME		     VALUE
-------------------- ----------------------------------------
Diag Enabled	     TRUE
ADR Base	     /u01/app/oracle
ADR Home	     /u01/app/oracle/diag/rdbms/orcl/orcl
Diag Trace	     /u01/app/oracle/diag/rdbms/orcl/orcl/tra
		     ce

Diag Alert	     /u01/app/oracle/diag/rdbms/orcl/orcl/ale
		     rt

Diag Incident	     /u01/app/oracle/diag/rdbms/orcl/orcl/inc
		     ident

Diag Cdump	     /u01/app/oracle/diag/rdbms/orcl/orcl/cdu
		     mp

Health Monitor	     /u01/app/oracle/diag/rdbms/orcl/orcl/hm
Default Trace File   /u01/app/oracle/diag/rdbms/orcl/orcl/tra
		     ce/orcl_ora_4773.trc

Active Problem Count 0
Active Incident Coun 0
t


11 rows selected.

Elapsed: 00:00:00.00
SQL> exit
Disconnected from Oracle Database 12c Enterprise Edition Release 12.1.0.2.0 - 64bit Production
With the Partitioning, OLAP, Advanced Analytics and Real Application Testing options

[oracle@edydr1p1 ~]$ cd /u01/app/oracle/diag/rdbms/orcl/orcl
[oracle@edydr1p1 orcl]$ ls
alert  cdump  hm  incident  incpkg  ir  lck  log  metadata  metadata_dgif  metadata_pv  stage  sweep  trace
[oracle@edydr1p1 orcl]$ cd trace
[oracle@edydr1p1 trace]$ ls
alert_orcl.log       orcl_dbrm_7806.trc   orcl_lgwr_27565.trm  orcl_ora_28000.trc  orcl_p001_7450.trm
orcl_dbrm_7656.trm   orcl_lgwr_27565.trc  orcl_ora_27949.trm   orcl_p001_7450.trc

[oracle@edydr1p1 trace]$ ls alert*
alert_orcl.log
[oracle@edydr1p1 trace]$ pwd
/u01/app/oracle/diag/rdbms/orcl/orcl/trace
[oracle@edydr1p1 trace]$ gedit alert_orcl.log
[oracle@edydr1p1 trace]$ 
