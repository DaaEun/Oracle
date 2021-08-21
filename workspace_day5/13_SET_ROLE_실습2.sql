<< SET ROLE 실습>>
<SYS USER>
SQL> CREATE ROLE B IDENTIFIED BY oracle;

Role created.

Elapsed: 00:00:00.01
SQL> GRANT SELECT ON HR.DEPARTMENTS TO B;

Grant succeeded.

Elapsed: 00:00:00.02
SQL> GRANT B TO TEST2;

<<TEST2 USER>
SQL> SET ROLE B IDENTIFIED BY oracle;

Role set.

Elapsed: 00:00:00.01
SQL> SELECT * FROM HR.DEPARTMENTS
  2  WHERE DEPARTMENT_ID=200;

DEPARTMENT_ID DEPARTMENT_NAME		     MANAGER_ID LOCATION_ID
------------- ------------------------------ ---------- -----------
	  200 Operations				       1700


<<DEFAULT ROLE설정>>
<SYS>
SQL> CREATE ROLE C;

Role created.

Elapsed: 00:00:00.00
SQL> GRANT SELECT ON HR.JOBS TO C;

Grant succeeded.

Elapsed: 00:00:00.01
SQL> GRANT C TO TEST2;

Grant succeeded.

Elapsed: 00:00:00.01
SQL> alter user test2 
  2  default role connect, resource, c;

User altered.

<TEST2>
[oracle@edydr1p1 ~]$ sqlplus test2/oracle

SQL*Plus: Release 12.1.0.2.0 Production on Sat Aug 21 17:33:03 2021

Copyright (c) 1982, 2014, Oracle.  All rights reserved.

Last Successful login time: Sat Aug 21 2021 17:30:46 +09:00

Connected to:
Oracle Database 12c Enterprise Edition Release 12.1.0.2.0 - 64bit Production
With the Partitioning, OLAP, Advanced Analytics and Real Application Testing options

SQL> select * from session_roles;

ROLE
--------------------------------------------------------------------------------------------------------------------------------
CONNECT
RESOURCE
C

3 rows selected.

Elapsed: 00:00:00.00
SQL> select * from hr.jobs;

JOB_ID	   JOB_TITLE			       MIN_SALARY MAX_SALARY
---------- ----------------------------------- ---------- ----------
AD_PRES    President				    20080      40000
AD_VP	   Administration Vice President	    15000      30000
