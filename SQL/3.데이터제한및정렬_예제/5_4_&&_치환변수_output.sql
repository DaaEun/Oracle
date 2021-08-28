이전:SELECT employee_id, last_name, job_id, &&column_name
FROM employees
ORDER BY &column_name
신규:SELECT employee_id, last_name, job_id, department_id
FROM employees
ORDER BY department_id

EMPLOYEE_ID LAST_NAME                 JOB_ID     DEPARTMENT_ID
----------- ------------------------- ---------- -------------
        200 Whalen                    AD_ASST               10
        201 Hartstein                 MK_MAN                20
        202 Fay                       MK_REP                20
        144 Vargas                    ST_CLERK              50
        143 Matos                     ST_CLERK              50
        142 Davies                    ST_CLERK              50
        141 Rajs                      ST_CLERK              50
        124 Mourgos                   ST_MAN                50
        103 Hunold                    IT_PROG               60
        104 Ernst                     IT_PROG               60
        107 Lorentz                   IT_PROG               60

EMPLOYEE_ID LAST_NAME                 JOB_ID     DEPARTMENT_ID
----------- ------------------------- ---------- -------------
        174 Abel                      SA_REP                80
        176 Taylor                    SA_REP                80
        149 Zlotkey                   SA_MAN                80
        101 Kochhar                   AD_VP                 90
        100 King                      AD_PRES               90
        102 De Haan                   AD_VP                 90
        206 Gietz                     AC_ACCOUNT           110
        205 Higgins                   AC_MGR               110
        178 Grant                     SA_REP                  

20개 행이 선택되었습니다. 

