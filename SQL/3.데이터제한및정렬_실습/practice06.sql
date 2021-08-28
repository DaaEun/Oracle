/*
    6. $5,000 ~ $12,000의 급여를 받고 부서 20 또는 50에 속하는 사원의 성과 급여를 표시하도록
    lab_03_03.sql을 수정합니다. 열 레이블을 각각 Employee 및 Monthly Salary로 지정합니다. 
    lab_03_03.sql을 lab_03_06.sql로 다시 저장합니다. lab_03_06.sql의 명령문을 실행합니다.
*/
SELECT last_name Employee, salary "Monthly Salary"
FROM employees
WHERE (salary > 5000 AND salary < 12000)
    AND department_id IN (20, 50);


-- 해답
SELECT last_name "Employee", salary "Monthly Salary"
FROM employees
WHERE salary BETWEEN 5000 AND 12000 
    AND department_id IN (20, 50);
/*
EMPLOYEE                  Monthly Salary
------------------------- --------------
Fay                                 6000
Mourgos                             5800
*/