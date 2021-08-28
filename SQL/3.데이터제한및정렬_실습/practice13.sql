/*
    13. 성에 "a"와 "e"가 모두 포함된 모든 사원의 성을 표시합니다.
*/
SELECT last_name
FROM employees
WHERE last_name LIKE '%a%'
    AND last_name LIKE '%e%';


/*
LAST_NAME                
-------------------------
Whalen
Hartstein
De Haan
Davies
*/