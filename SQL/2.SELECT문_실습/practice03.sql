SELECT employee_id, last_name
sal x 12 ANNUAL SALARY
FROM employees;

/*
    1. last_name 과 sal x 12 사이에 , 가 생략되었다.
    2. 사용자가 정의하기 전까지 salary를 sal로 축약하여 사용할 수 없다.
    3. x 대신 곱하기를 의미하는 산술연산자 *를 사용해야 한다.
    4. 대문자를 포함하는 ANNUAL SALARY alias는 ""로 구분해야 한다.
*/

/*
    # 해답
    1. EMPLOYEES 테이블에 sal이라는 열이 없습니다. 열 이름은 SALARY입니다.
    2. 두 번째 행의 곱하기 연산자는 x가 아니라 *입니다. 
    3. ANNUAL SALARY alias에 공백이 포함될 수 없습니다. alias는 ANNUAL_SALARY로
    표기하거나 큰따옴표로 묶어야 합니다.
    4. LAST_NAME 열 뒤에 쉼표가 누락되었습니다.
*/