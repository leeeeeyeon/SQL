-- 천재지변으로 인해 일부 데이터가 유실되었습니다.
-- 입양을 간 기록은 있는데, 보호소에 들어온 기록이 없는 동물의 ID와 이름을 ID 순으로 조회하는 SQL문을 작성해주세요.

SELECT ANIMAL_OUTS.ANIMAL_ID, ANIMAL_OUTS.NAME
FROM ANIMAL_OUTS
LEFT JOIN ANIMAL_INS
ON ANIMAL_INS.ANIMAL_ID=ANIMAL_OUTS.ANIMAL_ID
WHERE ANIMAL_INS.ANIMAL_ID IS NULL

-- JOIN 문법 참고: https://hongong.hanbit.co.kr/sql-기본-문법-joininner-outer-cross-self-join/
-- JOIN 조건은 WHERE 대신 ON을 사용한다