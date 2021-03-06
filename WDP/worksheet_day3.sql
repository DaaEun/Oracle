-- 2. ON을 이용하는 방법 (EQU JOIN의 한 방법)
SELECT D.DEPARTMENT_ID,D.DEPARTMENT_NAME,E.EMPLOYEE_ID,E.LAST_NAME
FROM DEPARTMENTS D JOIN EMPLOYEES E
ON (D.DEPARTMENT_ID=E.DEPARTMENT_ID AND D.MANAGER_ID=E.MANAGER_ID);

SELECT E.LAST_NAME,E.SALARY,E.JOB_ID EJOBID,J.JOB_ID JJOBID,J.MIN_SALARY,J.MAX_SALARY
FROM EMPLOYEES E, JOBS J
WHERE E.SALARY BETWEEN J.MIN_SALARY AND J.MAX_SALARY
AND EMPLOYEE_ID = 200;  -- 많은 데이터가 나와서 특정 사원만 나오도록 조절


-- 3. SELF JOIN
-- 하나의 테이블 안에 서로 관련성을 가지고 있는 RECORD들이 존재하는 경우
SELECT E.EMPLOYEE_ID EEMPID,E.LAST_NAME ENAME,E.MANAGER_ID,
M.EMPLOYEE_ID MEMPID,M.LAST_NAME MNAME
FROM EMPLOYEES E, EMPLOYEES M
WHERE E.MANAGER_ID = M.EMPLOYEE_ID;

-- 4. OUTER JOIN 
-- (EQU JOIN을 실행하면서 EQU JOIN시 조회가 안되는 데이타도 같이 조회)
-- 부서배치를 못받은 사람을 조회하고 싶다 (DEPARTMENT_ID 컬럼이 NULL인 사람)
-- 일반적인 EQU JOIN시 조회가 안되는 데이터가 있을 수 있다.
SELECT EMPLOYEE_ID,LAST_NAME,DEPARTMENT_ID
FROM EMPLOYEES
WHERE DEPARTMENT_ID IS NULL;
-- 부서배치가 안되어 있는 사원 조회

-- 일단 사원테이블의 데이타 모두 조회하고 그 다음에 관련되는 부서 데이타 검색
SELECT D.DEPARTMENT_ID,D.DEPARTMENT_NAME,E.EMPLOYEE_ID,E.LAST_NAME
FROM DEPARTMENTS D,EMPLOYEES E
WHERE D.DEPARTMENT_ID(+)=E.DEPARTMENT_ID;
-- (+)를 제거하면, LAST_NAME이 Grant 인 사람은 조회가 안된다.

-- 위에 동일 내용을 ANSI 표준문법으로 나타내면
SELECT D.DEPARTMENT_ID,D.DEPARTMENT_NAME,E.EMPLOYEE_ID,E.LAST_NAME
FROM DEPARTMENTS D RIGHT OUTER JOIN EMPLOYEES E
ON (D.DEPARTMENT_ID=E.DEPARTMENT_ID);
-- RIGHT OUTER JOIN과 (+)좌항이것과 동잏하다.

-- 반대로
-- 부서 테이블에 사원이 배치되어 있지 않은 부서도 조회
-- 일단 부서테이블의 데이타 모두 조회하고 그 다음에 관련되는 사원 데이타 검색
SELECT D.DEPARTMENT_ID,D.DEPARTMENT_NAME,E.EMPLOYEE_ID,E.LAST_NAME
FROM DEPARTMENTS D,EMPLOYEES E
WHERE D.DEPARTMENT_ID=E.DEPARTMENT_ID(+);
-- ANSI 
SELECT D.DEPARTMENT_ID,D.DEPARTMENT_NAME,E.EMPLOYEE_ID,E.LAST_NAME
FROM DEPARTMENTS D LEFT OUTER JOIN EMPLOYEES E
ON (D.DEPARTMENT_ID=E.DEPARTMENT_ID);

SELECT D.DEPARTMENT_ID,D.DEPARTMENT_NAME,E.EMPLOYEE_ID,E.LAST_NAME
FROM DEPARTMENTS D,EMPLOYEES E
WHERE D.DEPARTMENT_ID(+)=E.DEPARTMENT_ID(+); --(X) : 양쪽 (+)사용 불가

-- P272 해결. NULL 제거 후 조회
SELECT emp.last_name
FROM employees emp
WHERE emp.employee_id NOT IN
(SELECT mgr.manager_id
FROM employees mgr WHERE manager_id is not null);

-- SUBQUERY에 NULL이 있어도 조회가능 -> IN 사용
SELECT emp.last_name
FROM employees emp
WHERE emp.employee_id IN
(SELECT mgr.manager_id FROM employees mgr);

-- 집합연산자 (SET OPERATOR)
-- 합집합, 교집합, 차집합 연산들이 SELECT문장의 결과에 대해 사용 가능.
-- 과거 이력정보 조회
SELECT * FROM JOB_HISTORY WHERE EMPLOYEE_ID=176;
-- 현재 근무정보 조회
SELECT EMPLOYEE_ID,JOB_ID,DEPARTMENT_ID FROM EMPLOYEES WHERE EMPLOYEE_ID=176;

-- 위에 근무정보 조회 UNION ALL 사용
SELECT EMPLOYEE_ID,JOB_ID,DEPARTMENT_ID FROM JOB_HISTORY WHERE EMPLOYEE_ID=176
UNION ALL
SELECT EMPLOYEE_ID,JOB_ID,DEPARTMENT_ID FROM EMPLOYEES WHERE EMPLOYEE_ID=176;

-- UNION (중복제거)
SELECT EMPLOYEE_ID,JOB_ID,DEPARTMENT_ID FROM JOB_HISTORY WHERE EMPLOYEE_ID=176
UNION
SELECT EMPLOYEE_ID,JOB_ID,DEPARTMENT_ID FROM EMPLOYEES WHERE EMPLOYEE_ID=176;

-- INTERSECT (교집합)
SELECT EMPLOYEE_ID,JOB_ID,DEPARTMENT_ID FROM JOB_HISTORY WHERE EMPLOYEE_ID=176
INTERSECT
SELECT EMPLOYEE_ID,JOB_ID,DEPARTMENT_ID FROM EMPLOYEES WHERE EMPLOYEE_ID=176;

-- MINUS (차집합)
SELECT EMPLOYEE_ID,JOB_ID,DEPARTMENT_ID FROM JOB_HISTORY WHERE EMPLOYEE_ID=176
MINUS
SELECT EMPLOYEE_ID,JOB_ID,DEPARTMENT_ID FROM EMPLOYEES WHERE EMPLOYEE_ID=176;



-- ORDER BY 절은 집합연산자를 사용하는 경우 마지막 SELECT문장에서 사용해야 한다.
SELECT EMPLOYEE_ID,JOB_ID,DEPARTMENT_ID FROM JOB_HISTORY WHERE EMPLOYEE_ID=176
UNION ALL
SELECT EMPLOYEE_ID,JOB_ID,DEPARTMENT_ID FROM EMPLOYEES WHERE EMPLOYEE_ID=176
-- ORDER BY 1 (X)
UNION ALL
SELECT EMPLOYEE_ID,JOB_ID,DEPARTMENT_ID FROM EMPLOYEES WHERE EMPLOYEE_ID=176
ORDER BY 1; -- EMPLOYEE_ID컬럼을 기준으로 전체 결과에 대한 정렬





-- 부서테이블 생성
-- 컬럼 단위(column level)로 생성
CREATE TABLE DEPT2
(DEPTNO NUMBER(2) CONSTRAINT DEPT2_DEPTNO_PK PRIMARY KEY,
DNAME VARCHAR2(14),LOC VARCHAR2(13));


-- 테이블 단위(table level)로 생성
-- 컬럼 단위(column level)로 생성
-- ...

SELECT * FROM DEPT2;
INSERT INTO DEPT2 (DEPTNO, DNAME, LOC) VALUES (10,'IT','SEOUL'); -- DML
INSERT INTO DEPT2 (DEPTNO, DNAME, LOC) VALUES (10,'ACCT','BUSAN'); -- X : 제약조건에 의한 에러
INSERT INTO DEPT2 (DEPTNO, DNAME, LOC) VALUES (NULL,'ACCT','BUSAN'); --X

DELETE FROM DEPT2;


CREATE TABLE DEPT2
(DEPTNO NUMBER(2) UNIQUE, -- 제약조건의 이름이 SYS_nx으로 자동 생성
DNAME VARCHAR2(14),LOC VARCHAR2(13));

SELECT * FROM DEPT2;
INSERT INTO DEPT2 (DEPTNO, DNAME, LOC) VALUES (10,'IT','SEOUL'); -- DML
INSERT INTO DEPT2 (DEPTNO, DNAME, LOC) VALUES (10,'ACCT','BUSAN'); -- X
INSERT INTO DEPT2 (DEPTNO, DNAME, LOC) VALUES (NULL,'ACCT','BUSAN'); -- 가능 : UNIQUE 로 NULL 삽입가능




-- 1개의 TRANSACTION : DDL명령의 경우는 명령문 단위로 TRANSACTION이 자동으로 시작하고 종료
-- 명령문 단위로 자동 COMMIT이 된다
CREATE TABLE TEST_T5 (ID VARCHAR2(10) DEFAULT 'AB', ID2 CHAR(10)); 
-- 1개의 TRANSACTION
INSERT INTO TEST_T5 VALUES(DEFAULT,'AB'); -- TRANSACTION 시작
INSERT INTO TEST_T5 VALUES('ABC','ABC');
INSERT INTO TEST_T5 VALUES('ABCDE','ABCDE');
COMMIT;  -- TRANSACTION 종료
-- 1개의 TRANSACTION
INSERT INTO TEST_T5 VALUES(DEFAULT,'AB'); -- TRANSACTION 시작
INSERT INTO TEST_T5 VALUES('ABC','ABC');
COMMIT;  -- TRANSACTION 종료






-- SAVEPOINT
-- TRANSACTION 시작
INSERT INTO SAMPLE_TRAN (EMPLOYEE_ID,LAST_NAME,SALARY,DEPARTMENT_ID)
VALUES (120,'KIM',3000,30);
SAVEPOINT A;
INSERT INTO SAMPLE_TRAN
VALUES (121,'LEE',5000,30);
SAVEPOINT B;
INSERT INTO SAMPLE_TRAN (EMPLOYEE_ID,LAST_NAME,SALARY,DEPARTMENT_ID)
VALUES (122,'PARK',7000,30);
SAVEPOINT C;
INSERT INTO SAMPLE_TRAN (EMPLOYEE_ID,LAST_NAME,SALARY,DEPARTMENT_ID)
VALUES (123,'OH',9000,30);
ROLLBACK TO SAVEPOINT B; -- (SAVEPOINT B로 MARKING된 부분을 기준으로 아랫부분에 작업내용 취소)
COMMIT; -- COMMIT을 하지않고 아래 ROLLBACK 실행
ROLLBACK TO SAVEPOINT A; -- (SAVEPOINT A로 MARKING된 부분을 기준으로 아랫부분에 작업내용 취소)
COMMIT; -- 첫번째 INSERT한 내용이 DB에 저장 -- TRANSACTION 종료
