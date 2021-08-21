[oracle@edydr1p1 ~]$ cd $ORACLE_HOME/network/admin
[oracle@edydr1p1 admin]$ ls
listener.ora  samples  shrept.lst  sqlnet.ora  tnsnames.ora  tnsnames.ora~
[oracle@edydr1p1 admin]$ gedit listener.ora 
[oracle@edydr1p1 admin]$ cat listener.ora 
# listener.ora Network Configuration File: /u01/app/oracle/product/12.1.0/dbhome_1/network/admin/listener.ora
# Generated by Oracle configuration tools.

LISTENER =
  (DESCRIPTION_LIST =
    (DESCRIPTION =
      (ADDRESS = (PROTOCOL = TCP)(HOST = edydr1p1.us.oracle.com)(PORT = 1521))
      (ADDRESS = (PROTOCOL = IPC)(KEY = EXTPROC1521))
    )
  )

[oracle@edydr1p1 admin]$ netmgr
[oracle@edydr1p1 admin]$ cat listener.ora 
# listener.ora Network Configuration File: /u01/app/oracle/product/12.1.0/dbhome_1/network/admin/listener.ora
# Generated by Oracle configuration tools.

LISTENER2 =
  (DESCRIPTION =
    (ADDRESS = (PROTOCOL = TCP)(HOST = edydr1p1.us.oracle.com)(PORT = 1522))
  )

SID_LIST_LISTENER2 =
  (SID_LIST =
    (SID_DESC =
      (GLOBAL_DBNAME = orcl)
      (ORACLE_HOME = /u01/app/oracle/product/12.1.0/dbhome_1)
      (SID_NAME = orcl)
    )
  )

ADR_BASE_LISTENER2 = /u01/app/oracle

LISTENER =
  (DESCRIPTION_LIST =
    (DESCRIPTION =
      (ADDRESS = (PROTOCOL = TCP)(HOST = edydr1p1.us.oracle.com)(PORT = 1521))
    )
    (DESCRIPTION =
      (ADDRESS = (PROTOCOL = IPC)(KEY = EXTPROC1521))
    )
  )

ADR_BASE_LISTENER = /u01/app/oracle

[oracle@edydr1p1 admin]$ lsnrctl start listener2

LSNRCTL for Linux: Version 12.1.0.2.0 - Production on 21-AUG-2021 13:56:05

Copyright (c) 1991, 2014, Oracle.  All rights reserved.

Starting /u01/app/oracle/product/12.1.0/dbhome_1/bin/tnslsnr: please wait...

TNSLSNR for Linux: Version 12.1.0.2.0 - Production
System parameter file is /u01/app/oracle/product/12.1.0/dbhome_1/network/admin/listener.ora
Log messages written to /u01/app/oracle/diag/tnslsnr/edydr1p1/listener2/alert/log.xml
Listening on: (DESCRIPTION=(ADDRESS=(PROTOCOL=tcp)(HOST=edydr1p1.us.oracle.com)(PORT=1522)))

Connecting to (DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(HOST=edydr1p1.us.oracle.com)(PORT=1522)))
STATUS of the LISTENER
------------------------
Alias                     listener2
Version                   TNSLSNR for Linux: Version 12.1.0.2.0 - Production
Start Date                21-AUG-2021 13:56:06
Uptime                    0 days 0 hr. 0 min. 0 sec
Trace Level               off
Security                  ON: Local OS Authentication
SNMP                      OFF
Listener Parameter File   /u01/app/oracle/product/12.1.0/dbhome_1/network/admin/listener.ora
Listener Log File         /u01/app/oracle/diag/tnslsnr/edydr1p1/listener2/alert/log.xml
Listening Endpoints Summary...
  (DESCRIPTION=(ADDRESS=(PROTOCOL=tcp)(HOST=edydr1p1.us.oracle.com)(PORT=1522)))
Services Summary...
Service "orcl" has 1 instance(s).
  Instance "orcl", status UNKNOWN, has 1 handler(s) for this service...
The command completed successfully
[oracle@edydr1p1 admin]$ 
[oracle@edydr1p1 admin]$ 
[oracle@edydr1p1 admin]$ ls
listener.ora  samples  shrept.lst  sqlnet.ora  tnsnames.ora  tnsnames.ora~
[oracle@edydr1p1 admin]$ gedit tnsnames.ora
[oracle@edydr1p1 admin]$ cat tnsnames.ora
# tnsnames.ora Network Configuration File: /u01/app/oracle/product/12.1.0/dbhome_1/network/admin/tnsnames.ora
# Generated by Oracle configuration tools.

EM12REP =
  (DESCRIPTION =
    (ADDRESS = (PROTOCOL = TCP)(HOST = edydr1p1.us.oracle.com)(PORT = 1521))
    (CONNECT_DATA =
      (SERVER = DEDICATED)
      (SERVICE_NAME = em12rep)
    )
  )

ORCL =
  (DESCRIPTION =
    (ADDRESS = (PROTOCOL = TCP)(HOST = edydr1p1.us.oracle.com)(PORT = 1521))
    (CONNECT_DATA =
      (SERVER = DEDICATED)
      (SERVICE_NAME = orcl)
    )
  )

A =
  (DESCRIPTION =
    (ADDRESS = (PROTOCOL = TCP)(HOST = edydr1p1.us.oracle.com)(PORT = 1521))
    (CONNECT_DATA =
      (SERVER = DEDICATED)
      (SERVICE_NAME = orcl)
    )
  )

B =
  (DESCRIPTION =
    (ADDRESS = (PROTOCOL = TCP)(HOST = edydr1p1.us.oracle.com)(PORT = 1522))
    (CONNECT_DATA =
      (SERVER = DEDICATED)
      (SERVICE_NAME = orcl)
    )
  )

[oracle@edydr1p1 admin]$ sqlplus hr/oracle@B

SQL*Plus: Release 12.1.0.2.0 Production on Sat Aug 21 14:00:47 2021

Copyright (c) 1982, 2014, Oracle.  All rights reserved.

Last Successful login time: Sat Aug 21 2021 13:40:11 +09:00

Connected to:
Oracle Database 12c Enterprise Edition Release 12.1.0.2.0 - 64bit Production
With the Partitioning, OLAP, Advanced Analytics and Real Application Testing options

SQL> EXIT
Disconnected from Oracle Database 12c Enterprise Edition Release 12.1.0.2.0 - 64bit Production
With the Partitioning, OLAP, Advanced Analytics and Real Application Testing options
[oracle@edydr1p1 admin]$ lsnrctl stop listener2

LSNRCTL for Linux: Version 12.1.0.2.0 - Production on 21-AUG-2021 14:01:00

Copyright (c) 1991, 2014, Oracle.  All rights reserved.

Connecting to (DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(HOST=edydr1p1.us.oracle.com)(PORT=1522)))
The command completed successfully
[oracle@edydr1p1 admin]$ sqlplus hr/oracle@B

SQL*Plus: Release 12.1.0.2.0 Production on Sat Aug 21 14:01:28 2021

Copyright (c) 1982, 2014, Oracle.  All rights reserved.

ERROR:
ORA-12541: TNS:no listener


Enter user-name: 
