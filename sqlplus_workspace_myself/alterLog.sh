[oracle@edydr1p1 ~]$ sqlplus / as sysdba

SQL*Plus: Release 12.1.0.2.0 Production on Wed Aug 25 13:26:12 2021

Copyright (c) 1982, 2014, Oracle.  All rights reserved.


Connected to:
Oracle Database 12c Enterprise Edition Release 12.1.0.2.0 - 64bit Production
With the Partitioning, OLAP, Advanced Analytics and Real Application Testing options

SQL> show parameter diag

NAME				     TYPE	 VALUE
------------------------------------ ----------- ------------------------------
diagnostic_dest 		     string	 /u01/app/oracle
SQL> col value format a20
SQL> select name, value from v$diag_info;

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
								 ce/orcl_ora_9160.trc

Active Problem Count						 0
Active Incident Count						 0

11 rows selected.

Elapsed: 00:00:00.02
SQL> col name format a20
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
		     ce/orcl_ora_9160.trc

Active Problem Count 0
Active Incident Count 0


11 rows selected.

Elapsed: 00:00:00.01
SQL> col value format a40
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
		     ce/orcl_ora_9160.trc

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
alert  hm        incpkg  lck  metadata       metadata_pv  sweep
cdump  incident  ir      log  metadata_dgif  stage        trace
[oracle@edydr1p1 orcl]$ cd trace
[oracle@edydr1p1 trace]$ ls
alert_orcl.log       orcl_lg00_3545.trc   orcl_ora_3544.trm
orcl_aqpc_11844.trc  orcl_lg00_3545.trm   orcl_ora_3551.trc
orcl_aqpc_11844.trm  orcl_lg00_3892.trc   orcl_ora_3551.trm
orcl_aqpc_12353.trc  orcl_lg00_3892.trm   orcl_ora_3553.trc
orcl_aqpc_12353.trm  orcl_lg00_4183.trc   orcl_ora_3553.trm
orcl_aqpc_12912.trc  orcl_lg00_4183.trm   orcl_ora_3564.trc
orcl_aqpc_12912.trm  orcl_lg00_6975.trc   orcl_ora_3564.trm
orcl_aqpc_20047.trc  orcl_lg00_6975.trm   orcl_ora_3573.trc
orcl_aqpc_20047.trm  orcl_lg00_7698.trc   orcl_ora_3573.trm
orcl_aqpc_2530.trc   orcl_lg00_7698.trm   orcl_ora_3720.trc
orcl_aqpc_2530.trm   orcl_lg00_8589.trc   orcl_ora_3720.trm
orcl_aqpc_27615.trc  orcl_lg00_8589.trm   orcl_ora_3861.trc
orcl_aqpc_27615.trm  orcl_lg01_12875.trc  orcl_ora_3861.trm
orcl_aqpc_28390.trc  orcl_lg01_12875.trm  orcl_ora_3911.trc
orcl_aqpc_28390.trm  orcl_lg01_27491.trc  orcl_ora_3911.trm
orcl_aqpc_28773.trc  orcl_lg01_27491.trm  orcl_ora_3920.trc
orcl_aqpc_28773.trm  orcl_lg01_27573.trc  orcl_ora_3920.trm
orcl_aqpc_29420.trc  orcl_lg01_27573.trm  orcl_ora_4093.trc
orcl_aqpc_29420.trm  orcl_lg01_27985.trc  orcl_ora_4093.trm
orcl_aqpc_3352.trc   orcl_lg01_27985.trm  orcl_ora_4152.trc
orcl_aqpc_3352.trm   orcl_lg01_28737.trc  orcl_ora_4152.trm
orcl_aqpc_3443.trc   orcl_lg01_28737.trm  orcl_ora_4202.trc
orcl_aqpc_3443.trm   orcl_lg01_29382.trc  orcl_ora_4202.trm
orcl_aqpc_3483.trc   orcl_lg01_29382.trm  orcl_ora_4215.trc
orcl_aqpc_3483.trm   orcl_lg01_3314.trc   orcl_ora_4215.trm
orcl_aqpc_3538.trc   orcl_lg01_3314.trm   orcl_ora_4720.trc
orcl_aqpc_3538.trm   orcl_lg01_3443.trc   orcl_ora_4720.trm
orcl_aqpc_3568.trc   orcl_lg01_3443.trm   orcl_ora_4770.trc
orcl_aqpc_3568.trm   orcl_lg01_3527.trc   orcl_ora_4770.trm
orcl_aqpc_3569.trc   orcl_lg01_3527.trm   orcl_ora_4779.trc
orcl_aqpc_3569.trm   orcl_lg01_3549.trc   orcl_ora_4779.trm
orcl_aqpc_3589.trc   orcl_lg01_3549.trm   orcl_ora_5572.trc
orcl_aqpc_3589.trm   orcl_lg01_3896.trc   orcl_ora_5572.trm
orcl_aqpc_3932.trc   orcl_lg01_3896.trm   orcl_ora_5622.trc
orcl_aqpc_3932.trm   orcl_lg01_4187.trc   orcl_ora_5622.trm
orcl_aqpc_4227.trc   orcl_lg01_4187.trm   orcl_ora_5632.trc
orcl_aqpc_4227.trm   orcl_lg01_6979.trc   orcl_ora_5632.trm
orcl_aqpc_4795.trc   orcl_lg01_6979.trm   orcl_ora_6944.trc
orcl_aqpc_4795.trm   orcl_lg01_7702.trc   orcl_ora_6944.trm
orcl_aqpc_5648.trc   orcl_lg01_7702.trm   orcl_ora_6994.trc
orcl_aqpc_5648.trm   orcl_lg01_8593.trc   orcl_ora_6994.trm
orcl_aqpc_7024.trc   orcl_lg01_8593.trm   orcl_ora_7627.trc
orcl_aqpc_7024.trm   orcl_lgwr_11771.trc  orcl_ora_7627.trm
orcl_aqpc_7738.trc   orcl_lgwr_11771.trm  orcl_ora_7636.trc
orcl_aqpc_7738.trm   orcl_lgwr_12309.trc  orcl_ora_7636.trm
orcl_aqpc_7741.trc   orcl_lgwr_12309.trm  orcl_ora_7665.trc
orcl_aqpc_7741.trm   orcl_lgwr_12867.trc  orcl_ora_7665.trm
orcl_aqpc_8629.trc   orcl_lgwr_12867.trm  orcl_ora_7687.trc
orcl_aqpc_8629.trm   orcl_lgwr_19986.trc  orcl_ora_7687.trm
orcl_aqpc_8934.trc   orcl_lgwr_19986.trm  orcl_ora_7706.trc
orcl_aqpc_8934.trm   orcl_lgwr_2482.trc   orcl_ora_7706.trm
orcl_cjq0_11846.trc  orcl_lgwr_2482.trm   orcl_ora_7717.trc
orcl_cjq0_11846.trm  orcl_lgwr_26551.trc  orcl_ora_7717.trm
orcl_cjq0_27612.trc  orcl_lgwr_26551.trm  orcl_ora_7726.trc
orcl_cjq0_27612.trm  orcl_lgwr_27483.trc  orcl_ora_7726.trm
orcl_cjq0_3447.trc   orcl_lgwr_27483.trm  orcl_ora_8350.trc
orcl_cjq0_3447.trm   orcl_lgwr_27565.trc  orcl_ora_8350.trm
orcl_cjq0_3572.trc   orcl_lgwr_27565.trm  orcl_ora_8558.trc
orcl_cjq0_3572.trm   orcl_lgwr_27977.trc  orcl_ora_8558.trm
orcl_cjq0_3591.trc   orcl_lgwr_27977.trm  orcl_ora_8608.trc
orcl_cjq0_3591.trm   orcl_lgwr_28729.trc  orcl_ora_8608.trm
orcl_cjq0_4241.trc   orcl_lgwr_28729.trm  orcl_ora_8617.trc
orcl_cjq0_4241.trm   orcl_lgwr_29374.trc  orcl_ora_8617.trm
orcl_cjq0_4797.trc   orcl_lgwr_29374.trm  orcl_ora_8863.trc
orcl_cjq0_4797.trm   orcl_lgwr_3306.trc   orcl_ora_8863.trm
orcl_ckpt_11773.trc  orcl_lgwr_3306.trm   orcl_ora_8913.trc
orcl_ckpt_11773.trm  orcl_lgwr_3343.trc   orcl_ora_8913.trm
orcl_ckpt_12311.trc  orcl_lgwr_3343.trm   orcl_ora_8922.trc
orcl_ckpt_12311.trm  orcl_lgwr_3435.trc   orcl_ora_8922.trm
orcl_ckpt_12869.trc  orcl_lgwr_3435.trm   orcl_p000_2516.trc
orcl_ckpt_12869.trm  orcl_lgwr_3490.trc   orcl_p000_2516.trm
orcl_ckpt_19988.trc  orcl_lgwr_3490.trm   orcl_p000_3396.trc
orcl_ckpt_19988.trm  orcl_lgwr_3519.trc   orcl_p000_3396.trm
orcl_ckpt_2484.trc   orcl_lgwr_3519.trm   orcl_p000_3469.trc
orcl_ckpt_2484.trm   orcl_lgwr_3541.trc   orcl_p000_3469.trm
orcl_ckpt_26553.trc  orcl_lgwr_3541.trm   orcl_p000_3524.trc
orcl_ckpt_26553.trm  orcl_lgwr_3888.trc   orcl_p000_3524.trm
orcl_ckpt_27485.trc  orcl_lgwr_3888.trm   orcl_p000_3553.trc
orcl_ckpt_27485.trm  orcl_lgwr_4179.trc   orcl_p000_3553.trm
orcl_ckpt_27567.trc  orcl_lgwr_4179.trm   orcl_p000_3555.trc
orcl_ckpt_27567.trm  orcl_lgwr_4747.trc   orcl_p000_3555.trm
orcl_ckpt_27979.trc  orcl_lgwr_4747.trm   orcl_p000_3575.trc
orcl_ckpt_27979.trm  orcl_lgwr_5599.trc   orcl_p000_3575.trm
orcl_ckpt_28731.trc  orcl_lgwr_5599.trm   orcl_p000_4781.trc
orcl_ckpt_28731.trm  orcl_lgwr_6971.trc   orcl_p000_4781.trm
orcl_ckpt_29376.trc  orcl_lgwr_6971.trm   orcl_p000_5634.trc
orcl_ckpt_29376.trm  orcl_lgwr_7664.trc   orcl_p000_5634.trm
orcl_ckpt_3308.trc   orcl_lgwr_7664.trm   orcl_p000_7708.trc
orcl_ckpt_3308.trm   orcl_lgwr_7694.trc   orcl_p000_7708.trm
orcl_ckpt_3345.trc   orcl_lgwr_7694.trm   orcl_p001_2518.trc
orcl_ckpt_3345.trm   orcl_lgwr_8585.trc   orcl_p001_2518.trm
orcl_ckpt_3437.trc   orcl_lgwr_8585.trm   orcl_p001_3398.trc
orcl_ckpt_3437.trm   orcl_lgwr_8890.trc   orcl_p001_3398.trm
orcl_ckpt_3492.trc   orcl_lgwr_8890.trm   orcl_p001_3471.trc
orcl_ckpt_3492.trm   orcl_m000_26705.trc  orcl_p001_3471.trm
orcl_ckpt_3521.trc   orcl_m000_26705.trm  orcl_p001_3526.trc
orcl_ckpt_3521.trm   orcl_m000_27450.trc  orcl_p001_3526.trm
orcl_ckpt_3543.trc   orcl_m000_27450.trm  orcl_p001_3555.trc
orcl_ckpt_3543.trm   orcl_m000_27596.trc  orcl_p001_3555.trm
orcl_ckpt_3890.trc   orcl_m000_27596.trm  orcl_p001_3557.trc
orcl_ckpt_3890.trm   orcl_m000_27764.trc  orcl_p001_3557.trm
orcl_ckpt_4181.trc   orcl_m000_27764.trm  orcl_p001_3577.trc
orcl_ckpt_4181.trm   orcl_mmon_11798.trc  orcl_p001_3577.trm
orcl_ckpt_4749.trc   orcl_mmon_11798.trm  orcl_p001_4783.trc
orcl_ckpt_4749.trm   orcl_mmon_12325.trc  orcl_p001_4783.trm
orcl_ckpt_5601.trc   orcl_mmon_12325.trm  orcl_p001_5636.trc
orcl_ckpt_5601.trm   orcl_mmon_12883.trc  orcl_p001_5636.trm
orcl_ckpt_6973.trc   orcl_mmon_12883.trm  orcl_p001_7710.trc
orcl_ckpt_6973.trm   orcl_mmon_20002.trc  orcl_p001_7710.trm
orcl_ckpt_7666.trc   orcl_mmon_20002.trm  orcl_qm03_27718.trc
orcl_ckpt_7666.trm   orcl_mmon_2498.trc   orcl_qm03_27718.trm
orcl_ckpt_7696.trc   orcl_mmon_2498.trm   orcl_qm03_28500.trc
orcl_ckpt_7696.trm   orcl_mmon_27499.trc  orcl_qm03_28500.trm
orcl_ckpt_8587.trc   orcl_mmon_27499.trm  orcl_qm03_7207.trc
orcl_ckpt_8587.trm   orcl_mmon_27581.trc  orcl_qm03_7207.trm
orcl_ckpt_8892.trc   orcl_mmon_27581.trm  orcl_tt00_11836.trc
orcl_ckpt_8892.trm   orcl_mmon_27592.trc  orcl_tt00_11836.trm
orcl_dbrm_11760.trc  orcl_mmon_27592.trm  orcl_tt00_12345.trc
orcl_dbrm_11760.trm  orcl_mmon_27993.trc  orcl_tt00_12345.trm
orcl_dbrm_12301.trc  orcl_mmon_27993.trm  orcl_tt00_12904.trc
orcl_dbrm_12301.trm  orcl_mmon_28745.trc  orcl_tt00_12904.trm
orcl_dbrm_12859.trc  orcl_mmon_28745.trm  orcl_tt00_20022.trc
orcl_dbrm_12859.trm  orcl_mmon_29390.trc  orcl_tt00_20022.trm
orcl_dbrm_19978.trc  orcl_mmon_29390.trm  orcl_tt00_2522.trc
orcl_dbrm_19978.trm  orcl_mmon_3322.trc   orcl_tt00_2522.trm
orcl_dbrm_2474.trc   orcl_mmon_3322.trm   orcl_tt00_27604.trc
orcl_dbrm_2474.trm   orcl_mmon_3359.trc   orcl_tt00_27604.trm
orcl_dbrm_27557.trc  orcl_mmon_3359.trm   orcl_tt00_28018.trc
orcl_dbrm_27557.trm  orcl_mmon_3451.trc   orcl_tt00_28018.trm
orcl_dbrm_27969.trc  orcl_mmon_3451.trm   orcl_tt00_28765.trc
orcl_dbrm_27969.trm  orcl_mmon_3506.trc   orcl_tt00_28765.trm
orcl_dbrm_28721.trc  orcl_mmon_3506.trm   orcl_tt00_29412.trc
orcl_dbrm_28721.trm  orcl_mmon_3535.trc   orcl_tt00_29412.trm
orcl_dbrm_29366.trc  orcl_mmon_3535.trm   orcl_tt00_3342.trc
orcl_dbrm_29366.trm  orcl_mmon_3537.trc   orcl_tt00_3342.trm
orcl_dbrm_3298.trc   orcl_mmon_3537.trm   orcl_tt00_3435.trc
orcl_dbrm_3298.trm   orcl_mmon_3557.trc   orcl_tt00_3435.trm
orcl_dbrm_3335.trc   orcl_mmon_3557.trm   orcl_tt00_3475.trc
orcl_dbrm_3335.trm   orcl_mmon_3904.trc   orcl_tt00_3475.trm
orcl_dbrm_3427.trc   orcl_mmon_3904.trm   orcl_tt00_3530.trc
orcl_dbrm_3427.trm   orcl_mmon_4195.trc   orcl_tt00_3530.trm
orcl_dbrm_3482.trc   orcl_mmon_4195.trm   orcl_tt00_3559.trc
orcl_dbrm_3482.trm   orcl_mmon_4763.trc   orcl_tt00_3559.trm
orcl_dbrm_3511.trc   orcl_mmon_4763.trm   orcl_tt00_3561.trc
orcl_dbrm_3511.trm   orcl_mmon_5615.trc   orcl_tt00_3561.trm
orcl_dbrm_3533.trc   orcl_mmon_5615.trm   orcl_tt00_3581.trc
orcl_dbrm_3533.trm   orcl_mmon_6987.trc   orcl_tt00_3581.trm
orcl_dbrm_3880.trc   orcl_mmon_6987.trm   orcl_tt00_3924.trc
orcl_dbrm_3880.trm   orcl_mmon_7680.trc   orcl_tt00_3924.trm
orcl_dbrm_4171.trc   orcl_mmon_7680.trm   orcl_tt00_4219.trc
orcl_dbrm_4171.trm   orcl_mmon_7710.trc   orcl_tt00_4219.trm
orcl_dbrm_4739.trc   orcl_mmon_7710.trm   orcl_tt00_4787.trc
orcl_dbrm_4739.trm   orcl_mmon_8601.trc   orcl_tt00_4787.trm
orcl_dbrm_5591.trc   orcl_mmon_8601.trm   orcl_tt00_5640.trc
orcl_dbrm_5591.trm   orcl_mmon_8906.trc   orcl_tt00_5640.trm
orcl_dbrm_6963.trc   orcl_mmon_8906.trm   orcl_tt00_7016.trc
orcl_dbrm_6963.trm   orcl_ora_11675.trc   orcl_tt00_7016.trm
orcl_dbrm_7656.trc   orcl_ora_11675.trm   orcl_tt00_7714.trc
orcl_dbrm_7656.trm   orcl_ora_11682.trc   orcl_tt00_7714.trm
orcl_dbrm_7686.trc   orcl_ora_11682.trm   orcl_tt00_7730.trc
orcl_dbrm_7686.trm   orcl_ora_11806.trc   orcl_tt00_7730.trm
orcl_dbrm_8577.trc   orcl_ora_11806.trm   orcl_tt00_8621.trc
orcl_dbrm_8577.trm   orcl_ora_11832.trc   orcl_tt00_8621.trm
orcl_dbrm_8882.trc   orcl_ora_11832.trm   orcl_tt00_8926.trc
orcl_dbrm_8882.trm   orcl_ora_12089.trc   orcl_tt00_8926.trm
orcl_dbw0_11768.trc  orcl_ora_12089.trm   orcl_vkrm_11762.trc
orcl_dbw0_11768.trm  orcl_ora_12234.trc   orcl_vkrm_11762.trm
orcl_dbw0_12307.trc  orcl_ora_12234.trm   orcl_vkrm_12303.trc
orcl_dbw0_12307.trm  orcl_ora_12271.trc   orcl_vkrm_12303.trm
orcl_dbw0_12865.trc  orcl_ora_12271.trm   orcl_vkrm_12861.trc
orcl_dbw0_12865.trm  orcl_ora_12332.trc   orcl_vkrm_12861.trm
orcl_dbw0_19984.trc  orcl_ora_12332.trm   orcl_vkrm_19980.trc
orcl_dbw0_19984.trm  orcl_ora_12341.trc   orcl_vkrm_19980.trm
orcl_dbw0_2480.trc   orcl_ora_12341.trm   orcl_vkrm_2476.trc
orcl_dbw0_2480.trm   orcl_ora_12545.trc   orcl_vkrm_2476.trm
orcl_dbw0_26549.trc  orcl_ora_12545.trm   orcl_vkrm_26545.trc
orcl_dbw0_26549.trm  orcl_ora_12840.trc   orcl_vkrm_26545.trm
orcl_dbw0_27481.trc  orcl_ora_12840.trm   orcl_vkrm_27477.trc
orcl_dbw0_27481.trm  orcl_ora_12890.trc   orcl_vkrm_27477.trm
orcl_dbw0_27563.trc  orcl_ora_12890.trm   orcl_vkrm_27559.trc
orcl_dbw0_27563.trm  orcl_ora_12900.trc   orcl_vkrm_27559.trm
orcl_dbw0_27975.trc  orcl_ora_12900.trm   orcl_vkrm_27971.trc
orcl_dbw0_27975.trm  orcl_ora_19511.trc   orcl_vkrm_27971.trm
orcl_dbw0_28727.trc  orcl_ora_19511.trm   orcl_vkrm_28723.trc
orcl_dbw0_28727.trm  orcl_ora_19959.trc   orcl_vkrm_28723.trm
orcl_dbw0_29372.trc  orcl_ora_19959.trm   orcl_vkrm_29368.trc
orcl_dbw0_29372.trm  orcl_ora_20009.trc   orcl_vkrm_29368.trm
orcl_dbw0_3304.trc   orcl_ora_20009.trm   orcl_vkrm_3300.trc
orcl_dbw0_3304.trm   orcl_ora_20018.trc   orcl_vkrm_3300.trm
orcl_dbw0_3341.trc   orcl_ora_20018.trm   orcl_vkrm_3337.trc
orcl_dbw0_3341.trm   orcl_ora_2455.trc    orcl_vkrm_3337.trm
orcl_dbw0_3433.trc   orcl_ora_2455.trm    orcl_vkrm_3429.trc
orcl_dbw0_3433.trm   orcl_ora_2505.trc    orcl_vkrm_3429.trm
orcl_dbw0_3488.trc   orcl_ora_2505.trm    orcl_vkrm_3484.trc
orcl_dbw0_3488.trm   orcl_ora_2514.trc    orcl_vkrm_3484.trm
orcl_dbw0_3517.trc   orcl_ora_2514.trm    orcl_vkrm_3513.trc
orcl_dbw0_3517.trm   orcl_ora_26412.trc   orcl_vkrm_3513.trm
orcl_dbw0_3539.trc   orcl_ora_26412.trm   orcl_vkrm_3535.trc
orcl_dbw0_3539.trm   orcl_ora_26575.trc   orcl_vkrm_3535.trm
orcl_dbw0_3886.trc   orcl_ora_26575.trm   orcl_vkrm_3882.trc
orcl_dbw0_3886.trm   orcl_ora_26681.trc   orcl_vkrm_3882.trm
orcl_dbw0_4177.trc   orcl_ora_26681.trm   orcl_vkrm_4173.trc
orcl_dbw0_4177.trm   orcl_ora_27453.trc   orcl_vkrm_4173.trm
orcl_dbw0_4745.trc   orcl_ora_27453.trm   orcl_vkrm_4741.trc
orcl_dbw0_4745.trm   orcl_ora_27456.trc   orcl_vkrm_4741.trm
orcl_dbw0_5597.trc   orcl_ora_27456.trm   orcl_vkrm_5593.trc
orcl_dbw0_5597.trm   orcl_ora_27506.trc   orcl_vkrm_5593.trm
orcl_dbw0_6969.trc   orcl_ora_27506.trm   orcl_vkrm_6965.trc
orcl_dbw0_6969.trm   orcl_ora_27538.trc   orcl_vkrm_6965.trm
orcl_dbw0_7662.trc   orcl_ora_27538.trm   orcl_vkrm_7658.trc
orcl_dbw0_7662.trm   orcl_ora_27588.trc   orcl_vkrm_7658.trm
orcl_dbw0_7692.trc   orcl_ora_27588.trm   orcl_vkrm_7688.trc
orcl_dbw0_7692.trm   orcl_ora_27676.trc   orcl_vkrm_7688.trm
orcl_dbw0_8583.trc   orcl_ora_27676.trm   orcl_vkrm_8579.trc
orcl_dbw0_8583.trm   orcl_ora_27878.trc   orcl_vkrm_8579.trm
orcl_dbw0_8888.trc   orcl_ora_27878.trm   orcl_vkrm_8884.trc
orcl_dbw0_8888.trm   orcl_ora_27933.trc   orcl_vkrm_8884.trm
orcl_dm00_27739.trc  orcl_ora_27933.trm   orcl_vktm_11747.trc
orcl_dm00_27739.trm  orcl_ora_27949.trc   orcl_vktm_11747.trm
orcl_dw00_27745.trc  orcl_ora_27949.trm   orcl_vktm_12289.trc
orcl_dw00_27745.trm  orcl_ora_28000.trc   orcl_vktm_12289.trm
orcl_gen0_12851.trc  orcl_ora_28000.trm   orcl_vktm_12847.trc
orcl_gen0_12851.trm  orcl_ora_28014.trc   orcl_vktm_12847.trm
orcl_gen0_27467.trc  orcl_ora_28014.trm   orcl_vktm_19966.trc
orcl_gen0_27467.trm  orcl_ora_28451.trc   orcl_vktm_19966.trm
orcl_gen0_27549.trc  orcl_ora_28451.trm   orcl_vktm_2462.trc
orcl_gen0_27549.trm  orcl_ora_28700.trc   orcl_vktm_2462.trm
orcl_gen0_27961.trc  orcl_ora_28700.trm   orcl_vktm_26531.trc
orcl_gen0_27961.trm  orcl_ora_28752.trc   orcl_vktm_26531.trm
orcl_gen0_28713.trc  orcl_ora_28752.trm   orcl_vktm_27463.trc
orcl_gen0_28713.trm  orcl_ora_28761.trc   orcl_vktm_27463.trm
orcl_gen0_29358.trc  orcl_ora_28761.trm   orcl_vktm_27545.trc
orcl_gen0_29358.trm  orcl_ora_29312.trc   orcl_vktm_27545.trm
orcl_gen0_3290.trc   orcl_ora_29312.trm   orcl_vktm_27957.trc
orcl_gen0_3290.trm   orcl_ora_29339.trc   orcl_vktm_27957.trm
orcl_gen0_3419.trc   orcl_ora_29339.trm   orcl_vktm_28709.trc
orcl_gen0_3419.trm   orcl_ora_29397.trc   orcl_vktm_28709.trm
orcl_gen0_3503.trc   orcl_ora_29397.trm   orcl_vktm_29354.trc
orcl_gen0_3503.trm   orcl_ora_29408.trc   orcl_vktm_29354.trm
orcl_gen0_3525.trc   orcl_ora_29408.trm   orcl_vktm_3286.trc
orcl_gen0_3525.trm   orcl_ora_3279.trc    orcl_vktm_3286.trm
orcl_gen0_3872.trc   orcl_ora_3279.trm    orcl_vktm_3323.trc
orcl_gen0_3872.trm   orcl_ora_3316.trc    orcl_vktm_3323.trm
orcl_gen0_4163.trc   orcl_ora_3316.trm    orcl_vktm_3415.trc
orcl_gen0_4163.trm   orcl_ora_3329.trc    orcl_vktm_3415.trm
orcl_gen0_6955.trc   orcl_ora_3329.trm    orcl_vktm_3470.trc
orcl_gen0_6955.trm   orcl_ora_3338.trc    orcl_vktm_3470.trm
orcl_gen0_7678.trc   orcl_ora_3338.trm    orcl_vktm_3499.trc
orcl_gen0_7678.trm   orcl_ora_3366.trc    orcl_vktm_3499.trm
orcl_gen0_8569.trc   orcl_ora_3366.trm    orcl_vktm_3521.trc
orcl_gen0_8569.trm   orcl_ora_3394.trc    orcl_vktm_3521.trm
orcl_j000_3677.trc   orcl_ora_3394.trm    orcl_vktm_3868.trc
orcl_j000_3677.trm   orcl_ora_3408.trc    orcl_vktm_3868.trm
orcl_lg00_12871.trc  orcl_ora_3408.trm    orcl_vktm_4159.trc
orcl_lg00_12871.trm  orcl_ora_3458.trc    orcl_vktm_4159.trm
orcl_lg00_27487.trc  orcl_ora_3458.trm    orcl_vktm_4727.trc
orcl_lg00_27487.trm  orcl_ora_3463.trc    orcl_vktm_4727.trm
orcl_lg00_27569.trc  orcl_ora_3463.trm    orcl_vktm_5579.trc
orcl_lg00_27569.trm  orcl_ora_3467.trc    orcl_vktm_5579.trm
orcl_lg00_27981.trc  orcl_ora_3467.trm    orcl_vktm_6951.trc
orcl_lg00_27981.trm  orcl_ora_3492.trc    orcl_vktm_6951.trm
orcl_lg00_28733.trc  orcl_ora_3492.trm    orcl_vktm_7644.trc
orcl_lg00_28733.trm  orcl_ora_3513.trc    orcl_vktm_7644.trm
orcl_lg00_29378.trc  orcl_ora_3513.trm    orcl_vktm_7674.trc
orcl_lg00_29378.trm  orcl_ora_3514.trc    orcl_vktm_7674.trm
orcl_lg00_3310.trc   orcl_ora_3514.trm    orcl_vktm_8565.trc
orcl_lg00_3310.trm   orcl_ora_3522.trc    orcl_vktm_8565.trm
orcl_lg00_3439.trc   orcl_ora_3522.trm    orcl_vktm_8870.trc
orcl_lg00_3439.trm   orcl_ora_3542.trc    orcl_vktm_8870.trm
orcl_lg00_3523.trc   orcl_ora_3542.trm
orcl_lg00_3523.trm   orcl_ora_3544.trc
[oracle@edydr1p1 trace]$ ls alert*
alert_orcl.log
[oracle@edydr1p1 trace]$ pwd
/u01/app/oracle/diag/rdbms/orcl/orcl/trace
[oracle@edydr1p1 trace]$ gedit alter_orcl.log
[oracle@edydr1p1 trace]$ 