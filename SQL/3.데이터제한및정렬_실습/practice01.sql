/*
    1. HR 부서에서 예산 문제로 인해 급여가 $12,000가 넘는 사원의 성과 급여를 표시하는
    보고서가 필요합니다.
*/
SELECT last_name, salary
FROM employees
WHERE salary > 12000
ORDER BY salary DESC;


/*
LAST_NAME                     SALARY
------------------------- ----------
King                           24000
De Haan                        17000
Kochhar                        17000
Hartstein                      13000
Higgins                        12008
*/