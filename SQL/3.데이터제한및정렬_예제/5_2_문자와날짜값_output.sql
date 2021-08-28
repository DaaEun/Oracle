이전:SELECT last_name, department_id, salary*12
FROM employees
WHERE job_id = '&job_title'
신규:SELECT last_name, department_id, salary*12
FROM employees
WHERE job_id = 'IT_PROG'

LAST_NAME                 DEPARTMENT_ID  SALARY*12
------------------------- ------------- ----------
Hunold                               60     108000
Ernst                                60      72000
Lorentz                              60      50400

