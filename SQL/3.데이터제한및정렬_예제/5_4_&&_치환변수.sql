SELECT employee_id, last_name, job_id, &&column_name    -- &&
FROM employees
ORDER BY &column_name;  -- &
-- column_name 변수 값 요청을 한 번만 한다.