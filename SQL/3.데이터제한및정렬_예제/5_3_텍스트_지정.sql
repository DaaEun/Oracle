SELECT employee_id, last_name, job_id, &column_name -- column_name 치환변수
FROM employees
WHERE &condition    -- condition 치환변수
ORDER BY &order_column; -- order_column 치환변수