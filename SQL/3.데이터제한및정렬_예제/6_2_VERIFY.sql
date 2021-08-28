SET VERIFY ON   -- 치환변수 값의 전후를 표시

SELECT employee_id, last_name, salary
FROM employees
WHERE employee_id = &employee_num;