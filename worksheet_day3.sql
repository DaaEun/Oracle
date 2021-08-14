-- 2. ON�� �̿��ϴ� ��� (EQU JOIN�� �� ���)
SELECT D.DEPARTMENT_ID,D.DEPARTMENT_NAME,E.EMPLOYEE_ID,E.LAST_NAME
FROM DEPARTMENTS D JOIN EMPLOYEES E
ON (D.DEPARTMENT_ID=E.DEPARTMENT_ID AND D.MANAGER_ID=E.MANAGER_ID);

SELECT E.LAST_NAME,E.SALARY,E.JOB_ID EJOBID,J.JOB_ID JJOBID,J.MIN_SALARY,J.MAX_SALARY
FROM EMPLOYEES E, JOBS J
WHERE E.SALARY BETWEEN J.MIN_SALARY AND J.MAX_SALARY
AND EMPLOYEE_ID = 200;  -- ���� �����Ͱ� ���ͼ� Ư�� ����� �������� ����


-- 3. SELF JOIN
-- �ϳ��� ���̺� �ȿ� ���� ���ü��� ������ �ִ� RECORD���� �����ϴ� ���
SELECT E.EMPLOYEE_ID EEMPID,E.LAST_NAME ENAME,E.MANAGER_ID,
M.EMPLOYEE_ID MEMPID,M.LAST_NAME MNAME
FROM EMPLOYEES E, EMPLOYEES M
WHERE E.MANAGER_ID = M.EMPLOYEE_ID;

-- 4. OUTER JOIN 
-- (EQU JOIN�� �����ϸ鼭 EQU JOIN�� ��ȸ�� �ȵǴ� ����Ÿ�� ���� ��ȸ)
-- �μ���ġ�� ������ ����� ��ȸ�ϰ� �ʹ� (DEPARTMENT_ID �÷��� NULL�� ���)
-- �Ϲ����� EQU JOIN�� ��ȸ�� �ȵǴ� �����Ͱ� ���� �� �ִ�.
SELECT EMPLOYEE_ID,LAST_NAME,DEPARTMENT_ID
FROM EMPLOYEES
WHERE DEPARTMENT_ID IS NULL;
-- �μ���ġ�� �ȵǾ� �ִ� ��� ��ȸ

-- �ϴ� ������̺��� ����Ÿ ��� ��ȸ�ϰ� �� ������ ���õǴ� �μ� ����Ÿ �˻�
SELECT D.DEPARTMENT_ID,D.DEPARTMENT_NAME,E.EMPLOYEE_ID,E.LAST_NAME
FROM DEPARTMENTS D,EMPLOYEES E
WHERE D.DEPARTMENT_ID(+)=E.DEPARTMENT_ID;
-- (+)�� �����ϸ�, LAST_NAME�� Grant �� ����� ��ȸ�� �ȵȴ�.

-- ���� ���� ������ ANSI ǥ�ع������� ��Ÿ����
SELECT D.DEPARTMENT_ID,D.DEPARTMENT_NAME,E.EMPLOYEE_ID,E.LAST_NAME
FROM DEPARTMENTS D RIGHT OUTER JOIN EMPLOYEES E
ON (D.DEPARTMENT_ID=E.DEPARTMENT_ID);
-- RIGHT OUTER JOIN�� (+)�����̰Ͱ� �����ϴ�.

-- �ݴ��
-- �μ� ���̺��� ����� ��ġ�Ǿ� ���� ���� �μ��� ��ȸ
-- �ϴ� �μ����̺��� ����Ÿ ��� ��ȸ�ϰ� �� ������ ���õǴ� ��� ����Ÿ �˻�
SELECT D.DEPARTMENT_ID,D.DEPARTMENT_NAME,E.EMPLOYEE_ID,E.LAST_NAME
FROM DEPARTMENTS D,EMPLOYEES E
WHERE D.DEPARTMENT_ID=E.DEPARTMENT_ID(+);
-- ANSI 
SELECT D.DEPARTMENT_ID,D.DEPARTMENT_NAME,E.EMPLOYEE_ID,E.LAST_NAME
FROM DEPARTMENTS D LEFT OUTER JOIN EMPLOYEES E
ON (D.DEPARTMENT_ID=E.DEPARTMENT_ID);

SELECT D.DEPARTMENT_ID,D.DEPARTMENT_NAME,E.EMPLOYEE_ID,E.LAST_NAME
FROM DEPARTMENTS D,EMPLOYEES E
WHERE D.DEPARTMENT_ID(+)=E.DEPARTMENT_ID(+); --(X) : ���� (+)��� �Ұ�

-- P272 �ذ�. NULL ���� �� ��ȸ
SELECT emp.last_name
FROM employees emp
WHERE emp.employee_id NOT IN
(SELECT mgr.manager_id
FROM employees mgr WHERE manager_id is not null);

-- SUBQUERY�� NULL�� �־ ��ȸ���� -> IN ���
SELECT emp.last_name
FROM employees emp
WHERE emp.employee_id IN
(SELECT mgr.manager_id FROM employees mgr);

-- ���տ����� (SET OPERATOR)
-- ������, ������, ������ ������� SELECT������ ����� ���� ��� ����.
-- ���� �̷����� ��ȸ
SELECT * FROM JOB_HISTORY WHERE EMPLOYEE_ID=176;
-- ���� �ٹ����� ��ȸ
SELECT EMPLOYEE_ID,JOB_ID,DEPARTMENT_ID FROM EMPLOYEES WHERE EMPLOYEE_ID=176;

-- ���� �ٹ����� ��ȸ UNION ALL ���
SELECT EMPLOYEE_ID,JOB_ID,DEPARTMENT_ID FROM JOB_HISTORY WHERE EMPLOYEE_ID=176
UNION ALL
SELECT EMPLOYEE_ID,JOB_ID,DEPARTMENT_ID FROM EMPLOYEES WHERE EMPLOYEE_ID=176;

-- UNION (�ߺ�����)
SELECT EMPLOYEE_ID,JOB_ID,DEPARTMENT_ID FROM JOB_HISTORY WHERE EMPLOYEE_ID=176
UNION
SELECT EMPLOYEE_ID,JOB_ID,DEPARTMENT_ID FROM EMPLOYEES WHERE EMPLOYEE_ID=176;

-- INTERSECT (������)
SELECT EMPLOYEE_ID,JOB_ID,DEPARTMENT_ID FROM JOB_HISTORY WHERE EMPLOYEE_ID=176
INTERSECT
SELECT EMPLOYEE_ID,JOB_ID,DEPARTMENT_ID FROM EMPLOYEES WHERE EMPLOYEE_ID=176;

-- MINUS (������)
SELECT EMPLOYEE_ID,JOB_ID,DEPARTMENT_ID FROM JOB_HISTORY WHERE EMPLOYEE_ID=176
MINUS
SELECT EMPLOYEE_ID,JOB_ID,DEPARTMENT_ID FROM EMPLOYEES WHERE EMPLOYEE_ID=176;












