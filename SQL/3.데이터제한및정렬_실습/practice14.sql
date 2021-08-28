/*
    14. 직무가 판매 사원이나 자재 담당자이고 급여가 $2,500, $3,500 또는 $7,000가 아닌 
    모든 사원의 성, 직무 및 급여를 표시합니다. 
*/
SELECT last_name, job_id, salary
FROM employees
WHERE job_id IN ('SA_REP', 'ST_CLERK')
    AND salary NOT IN (2500, 3500, 7000);


/*
LAST_NAME                 JOB_ID         SALARY
------------------------- ---------- ----------
Abel                      SA_REP          11000
Taylor                    SA_REP           8600
Davies                    ST_CLERK         3100
Matos                     ST_CLERK         2600
*/