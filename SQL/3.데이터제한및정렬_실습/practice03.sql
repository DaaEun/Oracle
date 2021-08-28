/*
    3. HR 부서에서 급여가 높은 사원과 급여가 낮은 사원을 찾아야 합니다. 
    급여가 $5,000 ~ $12,000의 범위에 속하지 않는 모든 사원의 성 및 급여를 표시합니다.
*/
SELECT last_name, salary
FROM employees
WHERE salary < 5000 OR salary > 12000;


-- 해답
SELECT last_name, salary
FROM employees 
WHERE salary NOT BETWEEN 5000 AND 12000;
/*
LAST_NAME                     SALARY
------------------------- ----------
Whalen                          4400
Hartstein                      13000
Higgins                        12008
King                           24000
Kochhar                        17000
De Haan                        17000
Lorentz                         4200
Rajs                            3500
Davies                          3100
Matos                           2600
Vargas                          2500

11개 행이 선택되었습니다. 
*/