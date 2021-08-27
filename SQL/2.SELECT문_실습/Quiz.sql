/* 퀴즈 : 성공적으로 실행되는 SELECT문 찾기 */

-- a. 오류 발생
SELECT first_name, last_name, job_id, salary*12
    AS Yearly Sal
FROM employees;

-- b. 정답
SELECT first_name, last_name, job_id, salary*12 "yearly sal"
FROM employees;

-- c. 정답
SELECT first_name, last_name, job_id, salary 
    AS "yearly sal"
FROM employees;

-- d. 오류 발생
SELECT first_name+last_name AS name, job_Id, salary*12 yearly sal
FROM employees;


