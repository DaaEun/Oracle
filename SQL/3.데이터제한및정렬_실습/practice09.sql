/*
    9. 커미션을 받는 모든 사원의 성, 급여 및 커미션을 표시하는 보고서를 작성합니다. 
    급여 및 커미션의 내림차순으로 데이터를 정렬합니다. ORDER BY 절에서 열의 숫자 위치를 사용합니다
*/
SELECT last_name, salary, commission_pct
FROM employees
WHERE commission_pct IS NOT NULL
ORDER BY 2 DESC, 3 DESC;


/*
LAST_NAME                     SALARY COMMISSION_PCT
------------------------- ---------- --------------
Abel                           11000             .3
Taylor                          8600             .2
Zlotkey                        10500             .2
Grant                           7000            .15
*/