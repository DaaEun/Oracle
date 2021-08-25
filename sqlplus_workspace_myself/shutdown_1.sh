[oracle@edydr1p1 ~]$ sqlplus / as sysdba

SQL*Plus: Release 12.1.0.2.0 Production on Wed Aug 25 12:34:00 2021

Copyright (c) 1982, 2014, Oracle.  All rights reserved.


Connected to:
Oracle Database 12c Enterprise Edition Release 12.1.0.2.0 - 64bit Production
With the Partitioning, OLAP, Advanced Analytics and Real Application Testing options

SQL> alter user hr identified by orcle;

User altered.

Elapsed: 00:00:00.11
SQL> alter user hr account unlock;

User altered.

Elapsed: 00:00:00.04
SQL> connect hr/orcle
Connected.
SQL> show user
USER is "HR"
SQL> select * from tab;

TNAME										 TABTYPE  CLUSTERID
-------------------------------------------------------------------------------------------------------------------------------- ------- ----------
COUNTRIES									 TABLE
JOB_HISTORY									 TABLE
EMPLOYEES									 TABLE
JOBS										 TABLE
DEPARTMENTS									 TABLE
LOCATIONS									 TABLE
REGIONS 									 TABLE
EMP_DETAILS_VIEW								 VIEW

8 rows selected.

Elapsed: 00:00:00.03
SQL> show user
USER is "HR"
SQL> update employees
  2  set salary=9000
  3  where employee_id=200
  4  ;

1 row updated.

Elapsed: 00:00:00.06
SQL> commit;

Commit complete.

Elapsed: 00:00:00.01
SQL> select * from employees;

EMPLOYEE_ID FIRST_NAME		 LAST_NAME		   EMAIL		     PHONE_NUMBER	  HIRE_DATE JOB_ID	   SALARY
----------- -------------------- ------------------------- ------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------
	195 Vance		 Jones			   VJONES		     650.501.4876	  17-MAR-07 SH_CLERK	     2800
		      123	     50

	196 Alana		 Walsh			   AWALSH		     650.507.9811	  24-APR-06 SH_CLERK	     3100
		      124	     50

	197 Kevin		 Feeney 		   KFEENEY		     650.507.9822	  23-MAY-06 SH_CLERK	     3000
		      124	     50

	198 Donald		 OConnell		   DOCONNEL		     650.507.9833	  21-JUN-07 SH_CLERK	     2600
		      124	     50

	199 Douglas		 Grant			   DGRANT		     650.507.9844	  13-JAN-08 SH_CLERK	     2600
		      124	     50

	200 Jennifer		 Whalen 		   JWHALEN		     515.123.4444	  17-SEP-03 AD_ASST	     9000
		      101	     10

	201 Michael		 Hartstein		   MHARTSTE		     515.123.5555	  17-FEB-04 MK_MAN	    13000
		      100	     20

	202 Pat 		 Fay			   PFAY 		     603.123.6666	  17-AUG-05 MK_REP	     6000
		      201	     20

	203 Susan		 Mavris 		   SMAVRIS		     515.123.7777	  07-JUN-02 HR_REP	     6500
		      101	     40

	204 Hermann		 Baer			   HBAER		     515.123.8888	  07-JUN-02 PR_REP	    10000
		      101	     70

	205 Shelley		 Higgins		   SHIGGINS		     515.123.8080	  07-JUN-02 AC_MGR	    12008
		      101	    110

	206 William		 Gietz			   WGIETZ		     515.123.8181	  07-JUN-02 AC_ACCOUNT	     8300
		      205	    110


107 rows selected.

Elapsed: 00:00:00.01