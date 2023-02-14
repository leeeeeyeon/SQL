-- MEMBER_PROFILE 테이블에서 생일이 3월인 여성 회원의 ID, 이름, 성별, 생년월일을 조회하는 SQL문을 작성해주세요.
-- 이때 전화번호가 NULL인 경우는 출력대상에서 제외시켜 주시고, 결과는 회원ID를 기준으로 오름차순 정렬해주세요.

SELECT MEMBER_ID, MEMBER_NAME, GENDER, DATE_FORMAT(DATE_OF_BIRTH, '%Y-%m-%d') as DATE_OF_BIRTH
FROM MEMBER_PROFILE
WHERE GENDER='W' AND DATE_OF_BIRTH LIKE "%-03-%" AND TLNO IS NOT NULL
ORDER BY MEMBER_ID

-- 특정 문자 포함 검색 - DATE_OF_BIRTH LIKE "%-03-%"
-- 전화번호가 NULL인 경우 출력 제외 - 'IS NOT NULL' 조건 추가

-- NULL을 다른 값으로 대입하는 코드와 헷갈렸다.
-- NULL인 경우 다른 값으로 변환하는 방법 - IFNULL(컬럼값,NULL일 경우 대입할 값)