/*
    4. Matos 및 Taylor라는 성을 가진 사원의 성, 직무 ID, 채용 날짜를 표시하는 보고서를 작성합니다. 
    채용 날짜를 기준으로 오름차순으로 query를 정렬합니다.
*/

-- case01
SELECT last_name, job_id, hire_date
FROM employees
WHERE last_name = 'Matos' OR last_name = 'Taylor'
ORDER BY hire_date;

-- case02
SELECT last_name, job_id, hire_date
FROM employees
WHERE last_name IN ('Matos', 'Taylor')
ORDER BY hire_date;


/*
LAST_NAME                 JOB_ID     HIRE_DAT
------------------------- ---------- --------
Matos                     ST_CLERK   06/03/15
Taylor                    SA_REP     06/03/24
*/