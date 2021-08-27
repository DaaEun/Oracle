SELECT last_name, manager_id
FROM employees
WHERE manager_id = NULL;	-- 오류 발생


SELECT last_name, manager_id
FROM employees
WHERE manager_id IS NULL;