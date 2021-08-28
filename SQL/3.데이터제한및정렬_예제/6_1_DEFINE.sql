DEFINE employee_num = 200	-- DEFINE 명령 / employee_num 변수 선언 및 할당 

SELECT employee_id, last_name, salary, department_id
FROM employees
WHERE employee_id = &employee_num;	-- employee_num 변수 적용

UNDEFINE employee_num	-- UNDEFINE 명령 / employee_num 변수 제거