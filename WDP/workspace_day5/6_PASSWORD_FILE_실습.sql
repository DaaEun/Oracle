[oracle@edydr1p1 ~]$ sqlplus / as sysdba
SQL*Plus: Release 12.1.0.2.0 Production on Sat Jul 24 16:09:40 2021
Copyright (c) 1982, 2014, Oracle. All rights reserved.
Connected to:
Oracle Database 12c Enterprise Edition Release 12.1.0.2.0 - 64bit Production
With the Partitioning, OLAP, Advanced Analytics and Real Application Testing options
SQL> select username from dba_users
2 where username in ('SYS','SYSTEM','SYSDG','SYSBACKUP','SYSKM');
USERNAME
--------------------------------------------------------------------------------------------------------------------------------
SYSTEM
SYS
SYSDG
SYSKM
SYSBACKUP
5 rows selected.
Elapsed: 00:00:00.01
SQL> EXIT
Disconnected from Oracle Database 12c Enterprise Edition Release 12.1.0.2.0 - 64bit Production
With the Partitioning, OLAP, Advanced Analytics and Real Application Testing options
[oracle@edydr1p1 ~]$ uname -a
Linux edydr1p1.us.oracle.com 4.1.12-61.1.28.el6uek.x86_64 #2 SMP Thu Feb 23 20:03:53 PST 2017 x86_64 x86_64 x86_64
GNU/Linux
[oracle@edydr1p1 ~]$ id
uid=54321(oracle) gid=54321(oinstall)
groups=54321(oinstall),491(vboxsf),54322(dba),54323(oper),54324(backupdba),54325(dgdba),54326(kmdba),54327(asmdba
)
[oracle@edydr1p1 ~]$ sqlplus / as sysbackup
SQL*Plus: Release 12.1.0.2.0 Production on Sat Jul 24 16:25:58 2021
Copyright (c) 1982, 2014, Oracle. All rights reserved.
Connected to:
Oracle Database 12c Enterprise Edition Release 12.1.0.2.0 - 64bit Production
With the Partitioning, OLAP, Advanced Analytics and Real Application Testing options
SQL> show user
USER is "SYSBACKUP"
SQL> exit
Disconnected from Oracle Database 12c Enterprise Edition Release 12.1.0.2.0 - 64bit Production
With the Partitioning, OLAP, Advanced Analytics and Real Application Testing options
[oracle@edydr1p1 ~]$ sqlplus / as sysdba
SQL*Plus: Release 12.1.0.2.0 Production on Sat Jul 24 16:30:29 2021
Copyright (c) 1982, 2014, Oracle. All rights reserved.
Connected to:
Oracle Database 12c Enterprise Edition Release 12.1.0.2.0 - 64bit Production
With the Partitioning, OLAP, Advanced Analytics and Real Application Testing options
SQL> show user
USER is "SYS"
SQL> exit
Disconnected from Oracle Database 12c Enterprise Edition Release 12.1.0.2.0 - 64bit Production
With the Partitioning, OLAP, Advanced Analytics and Real Application Testing options
[oracle@edydr1p1 ~]$ cd $ORACLE_HOME/dbs
[oracle@edydr1p1 dbs]$ ls
hc_em12rep.dat init.ora lkORCL orapworcl spfileorcl.ora
hc_orcl.dat lkEM12REP orapwem12rep spfileem12rep.ora
[oracle@edydr1p1 dbs]$ sqlplus / as sysdba
SQL*Plus: Release 12.1.0.2.0 Production on Sat Jul 24 16:38:05 2021
Copyright (c) 1982, 2014, Oracle. All rights reserved.
Connected to:
Oracle Database 12c Enterprise Edition Release 12.1.0.2.0 - 64bit Production
With the Partitioning, OLAP, Advanced Analytics and Real Application Testing options
SQL> select * from v$pwfile_users;
USERNAME SYSDB SYSOP SYSAS SYSBA SYSDG SYSKM CON_ID
------------------------------ ----- ----- ----- ----- ----- ----- ----------
SYS                  TRUE TRUE FALSE FALSE FALSE FALSE 0
1 row selected.
Elapsed: 00:00:00.00
SQL> grant sysdba to hr;
Grant succeeded.
Elapsed: 00:00:00.02
SQL> select * from v$pwfile_users;
USERNAME SYSDB SYSOP SYSAS SYSBA SYSDG SYSKM CON_ID
------------------------------ ----- ----- ----- ----- ----- ----- ----------
SYS TRUE TRUE FALSE FALSE FALSE FALSE 0
HR TRUE FALSE FALSE FALSE FALSE FALSE 0
2 rows selected.
Elapsed: 00:00:00.00
SQL> revoke sysdba from hr;
Revoke succeeded.
Elapsed: 00:00:00.01
SQL> select * from v$pwfile_users;
USERNAME SYSDB SYSOP SYSAS SYSBA SYSDG SYSKM CON_ID
------------------------------ ----- ----- ----- ----- ----- ----- ----------
SYS TRUE TRUE FALSE FALSE FALSE FALSE 0
1 row selected.
Elapsed: 00:00:00.00
SQL>

