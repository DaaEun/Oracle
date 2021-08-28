SELECT last_name, department_id, salary
FROM employees
WHERE (department_id = 60
    OR department_id = 80)  -- 1. OR
    AND salary > 10000;     -- 2. AND