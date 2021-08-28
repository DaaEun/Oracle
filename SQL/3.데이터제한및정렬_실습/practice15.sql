/*
    15. 커미션이 20%인 모든 사원의 성, 급여 및 커미션을 표시하도록 lab_03_06.sql을 수정합니다. 
    lab_03_06.sql을 lab_03_15.sql로 다시 저장합니다.
*/
SELECT last_name Employee, salary "Monthly Salary", commission_pct
FROM employees
WHERE commission_pct = 0.2;


/*
EMPLOYEE                  Monthly Salary COMMISSION_PCT
------------------------- -------------- --------------
Zlotkey                            10500             .2
Taylor                              8600             .2
*/