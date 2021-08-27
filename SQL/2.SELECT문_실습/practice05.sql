-- a. EMPLOYEES 테이블 구조 확인
DESCRIBE employees;


/*
    b. HR 부서에서는 query를 통해 사원 ID를 먼저 표시한 후 이어서 각 사원에 대한 성, 
    직무 ID, 채용 날짜 및 사원 ID를 표시하려고 합니다. HIRE_DATE 열에 대한 alias로
    STARTDATE를 입력하십시오. 해당 SQL 문을 저장하여 HR 부서에 전달할 수 있도록 합니다. 
    파일의 query가 제대로 실행되는지 테스트합니다.
    주: query를 실행한 후 동일한 워크시트에 다음 query를 입력하지 않도록 합니다. 
*/
SELECT employee_id, last_name, job_id, hire_date AS STARTDATE
FROM employees;