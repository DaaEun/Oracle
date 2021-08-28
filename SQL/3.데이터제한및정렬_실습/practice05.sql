/*
    5. 부서 20 또는 50에 속하는 모든 사원의 성과 부서 ID를 
    last_name별로 오름차순으로 정렬하여 표시합니다.
*/
SELECT last_name, department_id
FROM employees
WHERE department_id IN (20, 50)
ORDER BY last_name;


/*
LAST_NAME                 DEPARTMENT_ID
------------------------- -------------
Davies                               50
Fay                                  20
Hartstein                            20
Matos                                50
Mourgos                              50
Rajs                                 50
Vargas                               50

7개 행이 선택되었습니다. 
*/