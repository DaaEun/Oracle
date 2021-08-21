[oracle@edydr1p1 ~]$ sqlplus / as sysdba

SQL*Plus: Release 12.1.0.2.0 Production on Sat Aug 21 13:26:15 2021

Copyright (c) 1982, 2014, Oracle.  All rights reserved.


Connected to:
Oracle Database 12c Enterprise Edition Release 12.1.0.2.0 - 64bit Production
With the Partitioning, OLAP, Advanced Analytics and Real Application Testing options

SQL> show parameter instance_name

NAME				     TYPE	 VALUE
------------------------------------ ----------- ------------------------------
instance_name			     string	 orcl
SQL> show parameter service_name

NAME				     TYPE	 VALUE
------------------------------------ ----------- ------------------------------
service_names			     string	 orcl
SQL> exit
Disconnected from Oracle Database 12c Enterprise Edition Release 12.1.0.2.0 - 64bit Production
With the Partitioning, OLAP, Advanced Analytics and Real Application Testing options
[oracle@edydr1p1 ~]$ lsnrctl status

LSNRCTL for Linux: Version 12.1.0.2.0 - Production on 21-AUG-2021 13:29:31

Copyright (c) 1991, 2014, Oracle.  All rights reserved.

Connecting to (DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(HOST=edydr1p1.us.oracle.com)(PORT=1521)))
TNS-12541: TNS:no listener
 TNS-12560: TNS:protocol adapter error
  TNS-00511: No listener
   Linux Error: 111: Connection refused
Connecting to (DESCRIPTION=(ADDRESS=(PROTOCOL=IPC)(KEY=EXTPROC1521)))
TNS-12541: TNS:no listener
 TNS-12560: TNS:protocol adapter error
  TNS-00511: No listener
   Linux Error: 111: Connection refused
[oracle@edydr1p1 ~]$ lsnrctl start

LSNRCTL for Linux: Version 12.1.0.2.0 - Production on 21-AUG-2021 13:30:49

Copyright (c) 1991, 2014, Oracle.  All rights reserved.

Starting /u01/app/oracle/product/12.1.0/dbhome_1/bin/tnslsnr: please wait...

TNSLSNR for Linux: Version 12.1.0.2.0 - Production
System parameter file is /u01/app/oracle/product/12.1.0/dbhome_1/network/admin/listener.ora
Log messages written to /u01/app/oracle/diag/tnslsnr/edydr1p1/listener/alert/log.xml
Listening on: (DESCRIPTION=(ADDRESS=(PROTOCOL=tcp)(HOST=edydr1p1.us.oracle.com)(PORT=1521)))
Listening on: (DESCRIPTION=(ADDRESS=(PROTOCOL=ipc)(KEY=EXTPROC1521)))

Connecting to (DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(HOST=edydr1p1.us.oracle.com)(PORT=1521)))
STATUS of the LISTENER
------------------------
Alias                     LISTENER
Version                   TNSLSNR for Linux: Version 12.1.0.2.0 - Production
Start Date                21-AUG-2021 13:30:51
Uptime                    0 days 0 hr. 0 min. 0 sec
Trace Level               off
Security                  ON: Local OS Authentication
SNMP                      OFF
Listener Parameter File   /u01/app/oracle/product/12.1.0/dbhome_1/network/admin/listener.ora
Listener Log File         /u01/app/oracle/diag/tnslsnr/edydr1p1/listener/alert/log.xml
Listening Endpoints Summary...
  (DESCRIPTION=(ADDRESS=(PROTOCOL=tcp)(HOST=edydr1p1.us.oracle.com)(PORT=1521)))
  (DESCRIPTION=(ADDRESS=(PROTOCOL=ipc)(KEY=EXTPROC1521)))
The listener supports no services
The command completed successfully
[oracle@edydr1p1 ~]$ lsnrctl status

LSNRCTL for Linux: Version 12.1.0.2.0 - Production on 21-AUG-2021 13:32:34

Copyright (c) 1991, 2014, Oracle.  All rights reserved.

Connecting to (DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(HOST=edydr1p1.us.oracle.com)(PORT=1521)))
STATUS of the LISTENER
------------------------
Alias                     LISTENER
Version                   TNSLSNR for Linux: Version 12.1.0.2.0 - Production
Start Date                21-AUG-2021 13:30:51
Uptime                    0 days 0 hr. 1 min. 42 sec
Trace Level               off
Security                  ON: Local OS Authentication
SNMP                      OFF
Listener Parameter File   /u01/app/oracle/product/12.1.0/dbhome_1/network/admin/listener.ora
Listener Log File         /u01/app/oracle/diag/tnslsnr/edydr1p1/listener/alert/log.xml
Listening Endpoints Summary...
  (DESCRIPTION=(ADDRESS=(PROTOCOL=tcp)(HOST=edydr1p1.us.oracle.com)(PORT=1521)))
  (DESCRIPTION=(ADDRESS=(PROTOCOL=ipc)(KEY=EXTPROC1521)))
  (DESCRIPTION=(ADDRESS=(PROTOCOL=tcp)(HOST=edydr1p1.us.oracle.com)(PORT=5500))(Presentation=HTTP)(Session=RAW))
Services Summary...
Service "orcl" has 1 instance(s).
  Instance "orcl", status READY, has 1 handler(s) for this service...
Service "orclXDB" has 1 instance(s).
  Instance "orcl", status READY, has 1 handler(s) for this service...
The command completed successfully
[oracle@edydr1p1 ~]$ 
[oracle@edydr1p1 ~]$ 
[oracle@edydr1p1 ~]$ cd $ORACLE_HOME/network/admin
[oracle@edydr1p1 admin]$ ls
listener.ora  samples  shrept.lst  sqlnet.ora  tnsnames.ora
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

[oracle@edydr1p1 admin]$ sqlplus hr/oracle@A

SQL*Plus: Release 12.1.0.2.0 Production on Sat Aug 21 13:40:11 2021

Copyright (c) 1982, 2014, Oracle.  All rights reserved.

Last Successful login time: Sun Aug 15 2021 17:17:52 +09:00

Connected to:
Oracle Database 12c Enterprise Edition Release 12.1.0.2.0 - 64bit Production
With the Partitioning, OLAP, Advanced Analytics and Real Application Testing options

SQL> EXIT
Disconnected from Oracle Database 12c Enterprise Edition Release 12.1.0.2.0 - 64bit Production
With the Partitioning, OLAP, Advanced Analytics and Real Application Testing options
[oracle@edydr1p1 admin]$ lsnrctl stop

LSNRCTL for Linux: Version 12.1.0.2.0 - Production on 21-AUG-2021 13:42:14

Copyright (c) 1991, 2014, Oracle.  All rights reserved.

Connecting to (DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(HOST=edydr1p1.us.oracle.com)(PORT=1521)))
The command completed successfully
[oracle@edydr1p1 admin]$ sqlplus hr/oracle@A

SQL*Plus: Release 12.1.0.2.0 Production on Sat Aug 21 13:42:26 2021

Copyright (c) 1982, 2014, Oracle.  All rights reserved.

ERROR:
ORA-12541: TNS:no listener


Enter user-name: ^C
[oracle@edydr1p1 admin]$ 
