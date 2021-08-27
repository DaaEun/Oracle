[oracle@edydr1p1 ~]$ id
uid=54321(oracle) gid=54321(oinstall) groups=54321(oinstall),491(vboxsf),54322(dba),54323(oper),54324(backupdba),54325(dgdba),54326(kmdba),54327(asmdba)
[oracle@edydr1p1 ~]$ id
uid=54321(oracle) gid=54321(oinstall) groups=54321(oinstall),491(vboxsf),54322(dba),54323(oper),54324(backupdba),54325(dgdba),54326(kmdba),54327(asmdba)
[oracle@edydr1p1 ~]$ sqlplus / as sysdba

SQL*Plus: Release 12.1.0.2.0 Production on Sat Aug 21 15:28:29 2021

Copyright (c) 1982, 2014, Oracle.  All rights reserved.


Connected to:
Oracle Database 12c Enterprise Edition Release 12.1.0.2.0 - 64bit Production
With the Partitioning, OLAP, Advanced Analytics and Real Application Testing options

SQL> show user 
USER is "SYS"
SQL> exit
Disconnected from Oracle Database 12c Enterprise Edition Release 12.1.0.2.0 - 64bit Production
With the Partitioning, OLAP, Advanced Analytics and Real Application Testing options
[oracle@edydr1p1 ~]$ sqlplus / as sysbackup

SQL*Plus: Release 12.1.0.2.0 Production on Sat Aug 21 15:30:10 2021

Copyright (c) 1982, 2014, Oracle.  All rights reserved.


Connected to:
Oracle Database 12c Enterprise Edition Release 12.1.0.2.0 - 64bit Production
With the Partitioning, OLAP, Advanced Analytics and Real Application Testing options

SQL> show user 
USER is "SYSBACKUP"
SQL> exit
Disconnected from Oracle Database 12c Enterprise Edition Release 12.1.0.2.0 - 64bit Production
With the Partitioning, OLAP, Advanced Analytics and Real Application Testing options
[oracle@edydr1p1 ~]$ sqlplus / as sysdba

SQL*Plus: Release 12.1.0.2.0 Production on Sat Aug 21 15:31:30 2021

Copyright (c) 1982, 2014, Oracle.  All rights reserved.


Connected to:
Oracle Database 12c Enterprise Edition Release 12.1.0.2.0 - 64bit Production
With the Partitioning, OLAP, Advanced Analytics and Real Application Testing options

SQL> grant sysdba to hr;

Grant succeeded.

Elapsed: 00:00:00.07
SQL> exit
Disconnected from Oracle Database 12c Enterprise Edition Release 12.1.0.2.0 - 64bit Production
With the Partitioning, OLAP, Advanced Analytics and Real Application Testing options
[oracle@edydr1p1 ~]$ sqlplus hr/oracle as sysdba

SQL*Plus: Release 12.1.0.2.0 Production on Sat Aug 21 15:32:01 2021

Copyright (c) 1982, 2014, Oracle.  All rights reserved.


Connected to:
Oracle Database 12c Enterprise Edition Release 12.1.0.2.0 - 64bit Production
With the Partitioning, OLAP, Advanced Analytics and Real Application Testing options

SQL> show user
USER is "SYS"
SQL> exit
Disconnected from Oracle Database 12c Enterprise Edition Release 12.1.0.2.0 - 64bit Production
With the Partitioning, OLAP, Advanced Analytics and Real Application Testing options
[oracle@edydr1p1 ~]$ sqlplus / as sysdba

SQL*Plus: Release 12.1.0.2.0 Production on Sat Aug 21 15:32:54 2021

Copyright (c) 1982, 2014, Oracle.  All rights reserved.


Connected to:
Oracle Database 12c Enterprise Edition Release 12.1.0.2.0 - 64bit Production
With the Partitioning, OLAP, Advanced Analytics and Real Application Testing options

SQL> revoke sysdba from hr;

Revoke succeeded.

Elapsed: 00:00:00.02
SQL> exit
Disconnected from Oracle Database 12c Enterprise Edition Release 12.1.0.2.0 - 64bit Production
With the Partitioning, OLAP, Advanced Analytics and Real Application Testing options
[oracle@edydr1p1 ~]$ sqlplus hr/oracle as sysdba

SQL*Plus: Release 12.1.0.2.0 Production on Sat Aug 21 15:33:15 2021

Copyright (c) 1982, 2014, Oracle.  All rights reserved.


Connected to:
Oracle Database 12c Enterprise Edition Release 12.1.0.2.0 - 64bit Production
With the Partitioning, OLAP, Advanced Analytics and Real Application Testing options

SQL> exit
Disconnected from Oracle Database 12c Enterprise Edition Release 12.1.0.2.0 - 64bit Production
With the Partitioning, OLAP, Advanced Analytics and Real Application Testing options
[oracle@edydr1p1 ~]$ sqlplus hhdhdhd/dkksjid as sysdba

SQL*Plus: Release 12.1.0.2.0 Production on Sat Aug 21 15:34:56 2021

Copyright (c) 1982, 2014, Oracle.  All rights reserved.


Connected to:
Oracle Database 12c Enterprise Edition Release 12.1.0.2.0 - 64bit Production
With the Partitioning, OLAP, Advanced Analytics and Real Application Testing options

SQL> exit
Disconnected from Oracle Database 12c Enterprise Edition Release 12.1.0.2.0 - 64bit Production
With the Partitioning, OLAP, Advanced Analytics and Real Application Testing options
[oracle@edydr1p1 ~]$ id
uid=54321(oracle) gid=54321(oinstall) groups=54321(oinstall),491(vboxsf),54322(dba),54323(oper),54324(backupdba),54325(dgdba),54326(kmdba),54327(asmdba)
[oracle@edydr1p1 ~]$ sqlplus sys/oracle as sysdba

SQL*Plus: Release 12.1.0.2.0 Production on Sat Aug 21 15:38:55 2021

Copyright (c) 1982, 2014, Oracle.  All rights reserved.


Connected to:
Oracle Database 12c Enterprise Edition Release 12.1.0.2.0 - 64bit Production
With the Partitioning, OLAP, Advanced Analytics and Real Application Testing options

SQL> exit
Disconnected from Oracle Database 12c Enterprise Edition Release 12.1.0.2.0 - 64bit Production
With the Partitioning, OLAP, Advanced Analytics and Real Application Testing options
[oracle@edydr1p1 ~]$ orapwd
Usage: orapwd file=<fname> entries=<users> force=<y/n> asm=<y/n>
       dbuniquename=<dbname> format=<legacy/12> sysbackup=<y/n> sysdg=<y/n>
       syskm=<y/n> delete=<y/n> input_file=<input-fname>

Usage: orapwd describe file=<fname>

  where
    file - name of password file (required),
    password - password for SYS will be prompted
               if not specified at command line.
               Ignored, if input_file is specified,
    entries - maximum number of distinct DBA (optional),
    force - whether to overwrite existing file (optional),
    asm - indicates that the password to be stored in
          Automatic Storage Management (ASM) disk group
          is an ASM password. (optional).
    dbuniquename - unique database name used to identify database
                   password files residing in ASM diskgroup only.
                   Ignored when asm option is specified (optional),
    format - use format=12 for new 12c features like SYSBACKUP, SYSDG and
             SYSKM support, longer identifiers, etc.
             If not specified, format=12 is default (optional),
    delete - drops a password file. Must specify 'asm',
             'dbuniquename' or 'file'. If 'file' is specified,
             the file must be located on an ASM diskgroup (optional),
    sysbackup - create SYSBACKUP entry (optional and requires the
                12 format). Ignored, if input_file is specified,
    sysdg - create SYSDG entry (optional and requires the 12 format),
            Ignored, if input_file is specified,
    syskm - create SYSKM entry (optional and requires the 12 format),
            Ignored, if input_file is specified,
    input_file - name of input password file, from where old user
                 entries will be migrated (optional),
    describe - describes the properties of specified password file
               (required).


  There must be no spaces around the equal-to (=) character.
[oracle@edydr1p1 ~]$ 

