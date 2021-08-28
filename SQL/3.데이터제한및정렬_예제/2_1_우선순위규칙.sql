SELECT last_name, department_id, salary
FROM employees
WHERE department_id = 60
    OR department_id = 80   -- 2. OR
    AND salary > 10000;     -- 1. AND
