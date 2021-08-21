SQL> SHOW USER
USER is "TEST2"
SQL> SELECT * FROM HR.DEPARTMENTS
  2  WHERE DEPARTMENT_ID=200;
SELECT * FROM HR.DEPARTMENTS
                 *
ERROR at line 1:
ORA-00942: table or view does not exist


Elapsed: 00:00:00.00
SQL> SET ROLE B IDENTIFIED BY oracle;

Role set.

Elapsed: 00:00:00.01
SQL> SELECT * FROM HR.DEPARTMENTS
  2  WHERE DEPARTMENT_ID=200;

DEPARTMENT_ID DEPARTMENT_NAME		     MANAGER_ID LOCATION_ID
------------- ------------------------------ ---------- -----------
	  200 Operations				       1700

1 row selected.

Elapsed: 00:00:00.01
SQL> 
