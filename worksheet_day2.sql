SELECT LAST_NAME, LOWER(LAST_NAME) FROM EMPLOYEES
WHERE DEPARTMENT_ID=60;

SELECT LAST_NAME, LOWER(LAST_NAME) FROM EMPLOYEES
WHERE LAST_NAME = 'hunold'; -- 선택된 행 없음

SELECT LAST_NAME, LOWER(LAST_NAME) FROM EMPLOYEES
WHERE LAST_NAME = 'Hunold';

SELECT INITCAP('ABCDEF') FROM DUAL;
SELECT INITCAP('ABC DEF') FROM DUAL;

SELECT SUBSTR('ABCDEFG',3,2) FROM DUAL;
SELECT SUBSTR('ABCDEFG',-3,2) FROM DUAL;
SELECT SUBSTR('ABCDEFG',3,-2) FROM DUAL; --(X)

SELECT LAST_NAME, LENGTH(LAST_NAME) NAME FROM EMPLOYEES
WHERE EMPLOYEE_ID=100;
SELECT LENGTH('A B ') FROM DUAL;
SELECT LENGTH(NULL) FROM DUAL;  --(X)

SELECT TRIM(LEADING 'A' FROM 'ABACFADC') FROM DUAL;
SELECT TRIM(TRAILING 'A' FROM 'ABACFADCA') FROM DUAL;
SELECT TRIM(BOTH 'A' FROM 'ABACFADCA') FROM DUAL;

ALTER SESSION SET NLS_DATE_FORMAT='YYYY/MM/DD';
SELECT SYSDATE FROM DUAL;

SELECT SESSIONTIMEZONE, CURRENT_DATE FROM DUAL;

SELECT SYSDATE+10 FROM DUAL;
SELECT SYSDATE-10 FROM DUAL;

SELECT EMPLOYEE_ID, SYSDATE, HIRE_DATE,
(SYSDATE-HIRE_DATE)/7 "Weeks" FROM EMPLOYEES
WHERE DEPARTMENT_ID=60;

SELECT CURRENT_TIMESTAMP FROM DUAL;
SELECT CURRENT_TIMESTAMP + 10 FROM DUAL;    -- 일 수가 더해짐.
SELECT CURRENT_TIMESTAMP + 10/24 FROM DUAL; -- 시간을 더해짐. 하루 24분의 10이므로 10시간

SELECT TO_CHAR(SYSDATE,'YYYY/MM/DD HH24:MI:SS PM') ORIGINAL,
TO_CHAR(SYSDATE+10,'YYYY/MM/DD HH24:MI:SS PM') RESULT FROM DUAL;    -- TO_~~ 데이터 크기조절(변환함수)

SELECT DBTIMEZONE, SYSDATE, SYSTIMESTAMP FROM DUAL; -- DBTIMEZONE +00:00 그리니치 천문대 기준으로 시간이 설정되어있음.

SELECT MONTHS_BETWEEN(SYSDATE,'2021/09/30') FROM DUAL;  -- 개월 수 간격 확인

SELECT NEXT_DAY(SYSDATE,'목요일') FROM DUAL;

SELECT LAST_DAY('1977/02/01') FROM DUAL;

SELECT ROUND(TO_DATE('2021/12/12','YYYY/MM/DD'),'MONTH') FROM DUAL; --버림
SELECT ROUND(TO_DATE('2021/12/17','YYYY/MM/DD'),'MONTH') FROM DUAL; --올림
SELECT ROUND(TO_DATE('2021/05/12','YYYY/MM/DD'),'YEAR') FROM DUAL;
SELECT ROUND(TO_DATE('2021/11/17','YYYY/MM/DD'),'YEAR') FROM DUAL;
SELECT TRUNC(TO_DATE('2021/12/12','YYYY/MM/DD'),'MONTH') FROM DUAL;
SELECT TRUNC(TO_DATE('2021/12/17','YYYY/MM/DD'),'MONTH') FROM DUAL;
SELECT TRUNC(TO_DATE('2021/12/17','YYYY/MM/DD'),'YEAR') FROM DUAL;

-- 숫자를 특정 FORMAT으로 바꾸어서 보고자 할때
SELECT TO_CHAR(12345678.9,'$999,999,999.99') FROM DUAL;     -- 숫자가 아닌 문자 데이터
SELECT TO_CHAR(12345678.9,'$000,000,000.00') FROM DUAL;     -- 숫자가 아닌 문자 데이터

SELECT SYSDATE - TO_DATE('03--15///2020','MM--DD///YYYY') FROM DUAL;

SET PAGESIZE 1000
SELECT last_name, TO_CHAR(hire_date, 'fmDD Month YYYY') AS HIREDATE FROM employees; -- 한자리 수는 한자리만 차지
SELECT last_name, TO_CHAR(hire_date, 'DD Month YYYY') AS HIREDATE FROM employees;   -- 한자리 수도 두자리 차지

SELECT SYSDATE - TO_DATE('03--  15///2020', 'MM--DD///YYYY') FROM DUAL;
SELECT SYSDATE - TO_DATE('03--  15///2020', 'fxMM--DD///YYYY') FROM DUAL;   --(X)
SELECT SYSDATE - TO_DATE('03--  15///2020', 'fxMM--  DD///YYYY') FROM DUAL;

-- NVL : NULL이 있는 경우에 NULL이 아닌 다른 값으로 변환시켜주는 함수
-- 계산값이 NULL이 나오는 게 보기 싫을 때 주로 사용
SELECT EMPLOYEE_ID, COMMISSION_PCT, NVL(COMMISSION_PCT,0) COMM
FROM EMPLOYEES
WHERE DEPARTMENT_ID=60;

SELECT EMPLOYEE_ID, COMMISSION_PCT,
NVL(COMMISSION_PCT, 'no commission') COMM
FROM EMPLOYEES
WHERE DEPARTMENT_ID=60; --(x) 숫자데이터에 문자데이터를 기입할 수 없다. 암시적 변환이 일어나지 않아 데이터 일치해야한다.

SELECT EMPLOYEE_ID, COMMISSION_PCT,
NVL(TO_CHAR(COMMISSION_PCT), 'no commission') COMM
FROM EMPLOYEES
WHERE DEPARTMENT_ID=60;

-- NVL2
-- commission_pct 값이 null이 아니면 'SAL+COMM' 라고 PRINT하고
-- commission_pct 값이 null이면 'SAL'이라고 PRINT해라.
-- 데이터 유형과는 관계없다.
SELECT last_name, salary, commission_pct,
NVL2(commission_pct, 'SAL+COMM', 'SAL') income  -- income 이라는 가상의 칼럼 생성
FROM EMPLOYEES;








