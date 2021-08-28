/*
    12. 이름의 세 번째 문자가 "a"인 모든 사원의 성을 표시합니다.
*/
SELECT last_name
FROM employees
WHERE last_name LIKE '__a%';


/*
LAST_NAME                
-------------------------
Whalen
Grant
*/