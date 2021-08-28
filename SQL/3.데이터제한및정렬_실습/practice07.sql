/*
    7. HR 부서에서 2006년에 채용된 모든 사원의 성과 채용 날짜를 표시하는 보고서를 요구합니다.
*/
SELECT last_name, hire_date
FROM employees
WHERE hire_date LIKE '06%';


-- 해답
SELECT last_name, hire_date
FROM employees
WHERE hire_date >= '06/01/01' AND hire_date < '07/01/01';
/*
LAST_NAME                 HIRE_DAT
------------------------- --------
Hunold                    06/01/03
Matos                     06/03/15
Vargas                    06/07/09
Taylor                    06/03/24
*/