-- 1.
SELECT last_name, salary, 12 * salary + 100
FROM employees;


-- 2.
SELECT last_name, salary, 12 * (salary + 100)
FROM employees;
