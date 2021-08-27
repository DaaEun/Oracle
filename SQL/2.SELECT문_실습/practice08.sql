/*
    # HR 부서에서 모든 사원과 해당 직무 ID에 대한 보고서를 요청했습니다. 성과 직무 ID를
    이어서 표시하고(쉼표와 공백으로 구분) 열 이름을 Employee and Title로 지정합니다.
*/
SELECT last_name || ', ' || job_id "Employee and Tile"
FROM employees;