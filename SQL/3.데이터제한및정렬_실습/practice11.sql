/*
    11. HR 부서에서 관리자를 기준으로 보고서를 실행하려고 합니다. 유저에게 관리자 ID 입력
    프롬프트를 표시하고 해당 관리자에 속한 사원의 사원 ID, 성, 급여 및 부서를 생성하는
    query를 작성합니다. HR 부서에서 선택한 열을 기준으로 보고서를 정렬하는 기능을
    원합니다. 다음 값으로 데이터를 테스트할 수 있습니다.
*/
SELECT employee_id, last_name, salary, department_id
FROM employees
WHERE manager_id = &mamager_num
ORDER BY &order_column;


/*
이전:SELECT employee_id, last_name, salary, department_id
FROM employees
WHERE manager_id = &mamager_num
ORDER BY &order_column

신규:SELECT employee_id, last_name, salary, department_id
FROM employees
WHERE manager_id = 124
ORDER BY employee_id

EMPLOYEE_ID LAST_NAME                     SALARY DEPARTMENT_ID
----------- ------------------------- ---------- -------------
        141 Rajs                            3500            50
        142 Davies                          3100            50
        143 Matos                           2600            50
        144 Vargas                          2500            50
*/