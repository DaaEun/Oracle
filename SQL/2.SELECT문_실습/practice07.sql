/*
    # HR 부서에서 보고에 적합하도록 열 머리글의 사원 정보를 쉽게 표시해 달라고 합니다. 
    practice05.sql의 명령문을 새 SQL Worksheet로 복사합니다. 열 이름을 각각 Emp #, 
    Employee, Job 및 Hire Date로 지정합니다. 그런 다음 query를 다시 실행합니다.
*/
SELECT employee_id AS "Emp #", 
    last_name AS "Employee", 
    job_id AS "Job",
    hire_date AS "Hire Date"
FROM employees;