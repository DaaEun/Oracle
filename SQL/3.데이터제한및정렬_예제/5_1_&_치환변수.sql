SELECT employee_id, last_name, salary, department_id
FROM employees
WHERE employee_id = &employee_num;  -- 유저에게 employee_num 변수 값 요청