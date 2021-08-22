<<PROFILE>>
CREATE PROFILE A_PROFILE LIMIT
FAILED_LOGIN_ATTEMPTS 6
PASSWORD_LIFE_TIME 60
PASSWORD_REUSE_TIME 60
PASSWORD_REUSE_MAX 5
PASSWORD_LOCK_TIME 1/24
PASSWORD_GRACE_TIME 10
PASSWORD_VERIFY_FUNCTION DEFAULT;
SESSIONS_PER_USER UNLIMITED
CPU_PER_SESSION UNLIMITED
CPU_PER_CALL 3500
CONNECT_TIME 50
LOGICAL_READS_PER_SESSION DEFAULT
LOGICAL_READS_PER_CALL 1200
PRIVATE_SGA 20K
COMPOSITE_LIMIT 7500000;

CREATE USER TEST_USER
PROFILE A_PROFILE

ALTER USER TEST_USER
PROFILE A_PROFILE

기본적으로 사용되는 프로파일의 이름은 DEFAULT

ALTER PROFILE DEFAULT
CPU_PER_CALL 3500
