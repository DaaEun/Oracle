[oracle@edydr1p1 ~]$ sqlplus /as sysdba

SQL*Plus: Release 12.1.0.2.0 Production

Copyright (c) 1982, 2014, Oracle.  All rights reserved.

Use SQL*Plus to execute SQL, PL/SQL and SQL*Plus statements.

Usage 1: sqlplus -H | -V

    -H		   Displays the SQL*Plus version and the
		   usage help.
    -V		   Displays the SQL*Plus version.

Usage 2: sqlplus [ [<option>] [{logon | /nolog}] [<start>] ]

  <option> is: [-C <version>] [-L] [-M "<options>"] [-NOLOGINTIME] [-R <level>]
	       [-S]

    -C <version>   Sets the compatibility of affected commands to the
		   version specified by <version>.  The version has
		   the form "x.y[.z]".	For example, -C 10.2.0
    -L		   Attempts to log on just once, instead of
		   reprompting on error.
    -M "<options>" Sets automatic HTML markup of output.  The options
		   have the form:
		   HTML [ON|OFF] [HEAD text] [BODY text] [TABLE text]
		   [ENTMAP {ON|OFF}] [SPOOL {ON|OFF}] [PRE[FORMAT] {ON|OFF}]
    -NOLOGINTIME   Don't display Last Successful Login Time.
    -R <level>	   Sets restricted mode to disable SQL*Plus commands
		   that interact with the file system.	The level can
		   be 1, 2 or 3.  The most restrictive is -R 3 which
		   disables all user commands interacting with the
		   file system.
    -S		   Sets silent mode which suppresses the display of
		   the SQL*Plus banner, prompts, and echoing of
		   commands.

  <logon> is: {<username>[/<password>][@<connect_identifier>] | / }
	      [AS {SYSDBA | SYSOPER | SYSASM | SYSBACKUP | SYSDG | SYSKM}] [EDITION=value]

    Specifies the database account username, password and connect
    identifier for the database connection.  Without a connect
    identifier, SQL*Plus connects to the default database.

    The AS SYSDBA, AS SYSOPER, AS SYSASM, AS SYSBACKUP, AS SYSDG,
    and AS SYSKM options are database administration privileges.

    <connect_identifier> can be in the form of Net Service Name
    or Easy Connect.

      @[<net_service_name> | [//]Host[:Port]/<service_name>]

	<net_service_name> is a simple name for a service that resolves
	to a connect descriptor.

	Example: Connect to database using Net Service Name and the
		 database net service name is ORCL.

	   sqlplus myusername/mypassword@ORCL

	Host specifies the host name or IP address of the database
	server computer.

	Port specifies the listening port on the database server.

	<service_name> specifies the service name of the database you
	want to access.

	Example: Connect to database using Easy Connect and the
		 Service name is ORCL.

	   sqlplus myusername/mypassword@Host/ORCL

    The /NOLOG option starts SQL*Plus without connecting to a
    database.

    The EDITION specifies the value for Session Edition.


  <start> is: @<URL>|<filename>[.<ext>] [<parameter> ...]

    Runs the specified SQL*Plus script from a web server (URL) or the
    local file system (filename.ext) with specified parameters that
    will be assigned to substitution variables in the script.

When SQL*Plus starts, and after CONNECT commands, the site profile
(e.g. $ORACLE_HOME/sqlplus/admin/glogin.sql) and the user profile
(e.g. login.sql in the working directory) are run.  The files may
contain SQL*Plus commands.

Refer to the SQL*Plus User's Guide and Reference for more information.

------------------------------------------------------------------------------------

[oracle@edydr1p1 ~]$ sqlplus / as sysdba

SQL*Plus: Release 12.1.0.2.0 Production on Mon Aug 23 15:50:10 2021

Copyright (c) 1982, 2014, Oracle.  All rights reserved.

Connected to an idle instance.

SQL> exit
Disconnected

------------------------------------------------------------------------------------

[oracle@edydr1p1 ~]$ echo $ORACLE_HOME
/u01/app/oracle/product/12.1.0/dbhome_1

------------------------------------------------------------------------------------

[oracle@edydr1p1 ~]$ echo $ORACLE_SID
orcl

------------------------------------------------------------------------------------

[oracle@edydr1p1 ~]$ ps -ef|grep orcl
oracle    3406  3359  0 15:54 pts/0    00:00:00 grep orcl
[oracle@edydr1p1 ~]$ sqlplus / as sysdba

SQL*Plus: Release 12.1.0.2.0 Production on Mon Aug 23 15:55:16 2021

Copyright (c) 1982, 2014, Oracle.  All rights reserved.

Connected to an idle instance.

SQL> startup
ORACLE instance started.

Total System Global Area  536870912 bytes
Fixed Size		    2926472 bytes
Variable Size		  301992056 bytes
Database Buffers	  226492416 bytes
Redo Buffers		    5459968 bytes
Database mounted.
Database opened.
SQL> exit
Disconnected from Oracle Database 12c Enterprise Edition Release 12.1.0.2.0 - 64bit Production
With the Partitioning, OLAP, Advanced Analytics and Real Application Testing options
[oracle@edydr1p1 ~]$ ps -ef|grep orcl
oracle    3411     1  0 15:55 ?        00:00:00 ora_pmon_orcl
oracle    3413     1  0 15:55 ?        00:00:00 ora_psp0_orcl
oracle    3415     1  3 15:55 ?        00:00:01 ora_vktm_orcl
oracle    3419     1  0 15:55 ?        00:00:00 ora_gen0_orcl
oracle    3421     1  0 15:55 ?        00:00:00 ora_mman_orcl
oracle    3425     1  0 15:55 ?        00:00:00 ora_diag_orcl
oracle    3427     1  0 15:55 ?        00:00:00 ora_dbrm_orcl
oracle    3429     1  0 15:55 ?        00:00:00 ora_vkrm_orcl
oracle    3431     1  0 15:55 ?        00:00:00 ora_dia0_orcl
oracle    3433     1  0 15:55 ?        00:00:00 ora_dbw0_orcl
oracle    3435     1  0 15:55 ?        00:00:00 ora_lgwr_orcl
oracle    3437     1  0 15:55 ?        00:00:00 ora_ckpt_orcl
oracle    3439     1  0 15:55 ?        00:00:00 ora_lg00_orcl
oracle    3441     1  0 15:55 ?        00:00:00 ora_smon_orcl
oracle    3443     1  0 15:55 ?        00:00:00 ora_lg01_orcl
oracle    3445     1  0 15:55 ?        00:00:00 ora_reco_orcl
oracle    3447     1  0 15:55 ?        00:00:00 ora_lreg_orcl
oracle    3449     1  0 15:55 ?        00:00:00 ora_pxmn_orcl
oracle    3451     1  8 15:55 ?        00:00:02 ora_mmon_orcl
oracle    3453     1  0 15:55 ?        00:00:00 ora_mmnl_orcl
oracle    3455     1  0 15:55 ?        00:00:00 ora_d000_orcl
oracle    3457     1  0 15:55 ?        00:00:00 ora_s000_orcl
oracle    3469     1  0 15:55 ?        00:00:00 ora_p000_orcl
oracle    3471     1  0 15:55 ?        00:00:00 ora_p001_orcl
oracle    3473     1  0 15:55 ?        00:00:00 ora_tmon_orcl
oracle    3475     1  0 15:55 ?        00:00:00 ora_tt00_orcl
oracle    3477     1  0 15:55 ?        00:00:00 ora_smco_orcl
oracle    3479     1  0 15:55 ?        00:00:00 ora_w000_orcl
oracle    3481     1  0 15:55 ?        00:00:00 ora_w001_orcl
oracle    3483     1  0 15:55 ?        00:00:00 ora_aqpc_orcl
oracle    3485     1  3 15:55 ?        00:00:00 ora_cjq0_orcl
oracle    3489     1  0 15:55 ?        00:00:00 ora_p002_orcl
oracle    3491     1  0 15:55 ?        00:00:00 ora_p003_orcl
oracle    3493     1  0 15:55 ?        00:00:00 ora_p004_orcl
oracle    3495     1  0 15:55 ?        00:00:00 ora_p005_orcl
oracle    3497     1  0 15:55 ?        00:00:00 ora_p006_orcl
oracle    3499     1  0 15:55 ?        00:00:00 ora_p007_orcl
oracle    3501     1  0 15:55 ?        00:00:00 ora_p008_orcl
oracle    3503     1  0 15:55 ?        00:00:00 ora_p009_orcl
oracle    3505     1  0 15:55 ?        00:00:00 ora_p00a_orcl
oracle    3507     1  0 15:55 ?        00:00:00 ora_p00b_orcl
oracle    3620     1 11 15:55 ?        00:00:01 ora_j000_orcl
oracle    3622     1  3 15:55 ?        00:00:00 ora_j001_orcl
oracle    3624     1  1 15:55 ?        00:00:00 ora_j002_orcl
oracle    3626     1  2 15:55 ?        00:00:00 ora_j003_orcl
oracle    3628     1  4 15:55 ?        00:00:00 ora_j004_orcl
oracle    3633     1  3 15:55 ?        00:00:00 ora_j006_orcl
oracle    3635     1  4 15:55 ?        00:00:00 ora_j007_orcl
oracle    3637     1  2 15:55 ?        00:00:00 ora_j008_orcl
oracle    3639     1  9 15:55 ?        00:00:01 ora_j009_orcl
oracle    3641     1  3 15:55 ?        00:00:00 ora_j010_orcl
oracle    3643     1  4 15:55 ?        00:00:00 ora_j011_orcl
oracle    3645     1  0 15:55 ?        00:00:00 ora_j012_orcl
oracle    3647     1  0 15:55 ?        00:00:00 ora_j013_orcl
oracle    3649     1  0 15:55 ?        00:00:00 ora_j014_orcl
oracle    3651     1  0 15:55 ?        00:00:00 ora_j015_orcl
oracle    3653     1  0 15:55 ?        00:00:00 ora_j016_orcl
oracle    3655     1  0 15:55 ?        00:00:00 ora_j017_orcl
oracle    3690     1  0 15:55 ?        00:00:00 ora_qm02_orcl
oracle    3692     1  0 15:55 ?        00:00:00 ora_qm03_orcl
oracle    3694     1  0 15:55 ?        00:00:00 ora_q002_orcl
oracle    3696     1  0 15:55 ?        00:00:00 ora_q003_orcl
oracle    3699  3359  0 15:55 pts/0    00:00:00 grep orcl

------------------------------------------------------------------------------------

[oracle@edydr1p1 ~]$ sqlplus / as sysdba

SQL*Plus: Release 12.1.0.2.0 Production on Mon Aug 23 15:59:22 2021

Copyright (c) 1982, 2014, Oracle.  All rights reserved.


Connected to:
Oracle Database 12c Enterprise Edition Release 12.1.0.2.0 - 64bit Production
With the Partitioning, OLAP, Advanced Analytics and Real Application Testing options

SQL> select instance_name from v$instance;

INSTANCE_NAME
----------------
orcl

1 row selected.

Elapsed: 00:00:00.00
SQL> select name from v$database;

NAME
---------
ORCL

1 row selected.

Elapsed: 00:00:00.02
SQL> shutdown
Database closed.
Database dismounted.
ORACLE instance shut down.