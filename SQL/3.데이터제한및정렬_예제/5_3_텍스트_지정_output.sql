이전:SELECT employee_id, last_name, job_id, &column_name -- column_name 치환변수
FROM employees
WHERE &condition    -- condition 치환변수
ORDER BY &order_column  -- order_column 치환변수
신규:SELECT employee_id, last_name, job_id, salary -- column_name 치환변수
FROM employees
WHERE salary > 15000    -- condition 치환변수
ORDER BY last_name  -- order_column 치환변수

EMPLOYEE_ID LAST_NAME                 JOB_ID         SALARY
----------- ------------------------- ---------- ----------
        102 De Haan                   AD_VP           17000
        100 King                      AD_PRES         24000
        101 Kochhar                   AD_VP           17000

