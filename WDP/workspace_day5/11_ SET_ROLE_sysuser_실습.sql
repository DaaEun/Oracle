SQL> CREATE ROLE B IDENTIFIED BY oracle;

Role created.

Elapsed: 00:00:00.01
SQL> GRANT SELECT ON HR.DEPARTMENTS TO B;

Grant succeeded.

Elapsed: 00:00:00.02
SQL> GRANT B TO TEST2;

Grant succeeded.

Elapsed: 00:00:00.00
SQL> 
