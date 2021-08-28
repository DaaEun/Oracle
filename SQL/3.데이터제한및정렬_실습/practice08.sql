/*
    8. 담당 관리자가 없는 모든 사원의 성과 직책을 표시하는 보고서를 작성합니다.
*/
SELECT last_name, job_id
FROM employees
WHERE manager_id IS NULL;


/*
LAST_NAME                 JOB_ID    
------------------------- ----------
King                      AD_PRES   
*/