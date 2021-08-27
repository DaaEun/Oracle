/*
    # EMPLOYEES 테이블의 데이터에 익숙해지도록 해당 테이블의 모든 데이터를 표시하는
    query를 생성합니다. 각 열 출력은 쉼표로 구분합니다. 열 이름을 THE_OUTPUT으로
    지정합니다.
*/

DESCRIBE employees;
SELECT employee_id || ', ' || first_name || ', ' || last_name || ', ' || email || ', ' ||
    phone_number || ', ' || hire_date || ', ' || job_id || ', ' || salary || ', ' ||
    commission_pct || ', ' || manager_id || ', ' || department_id
    AS "THE OUTPUT"
FROM employees;