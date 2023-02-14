-- USER_INFO 테이블에서 나이 정보가 없는 회원이 몇 명인지 출력하는 SQL문을 작성해주세요.
-- 이때 컬럼명은 USERS로 지정해주세요.

select count(*) as users
from user_info
where age is null