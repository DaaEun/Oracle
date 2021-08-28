/*
    10. HR 부서의 멤버는 여러분이 작성 중인 query에 유연성이 강화되기를 원합니다. 
    유저가 프롬프트에 지정하는 액수보다 많은 급여를 받는 사원의 급여와 성을 표시하는 보고서를
    기대합니다. 프롬프트가 표시되었을 때 12000을 입력하면 보고서에 다음 결과가 표시됩니다.
*/
SELECT last_name, salary
FROM employees
WHERE salary > &min_salary
ORDER BY salary DESC;


/*
이전:SELECT last_name, salary
FROM employees
WHERE salary > &min_salary
ORDER BY salary DESC

신규:SELECT last_name, salary
FROM employees
WHERE salary > 12000
ORDER BY salary DESC

LAST_NAME                     SALARY
------------------------- ----------
King                           24000
De Haan                        17000
Kochhar                        17000
Hartstein                      13000
Higgins                        12008
*/