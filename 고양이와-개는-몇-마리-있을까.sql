-- 동물 보호소에 들어온 동물 중 고양이와 개가 각각 몇 마리인지 조회하는 SQL문을 작성해주세요.
-- 이때 고양이를 개보다 먼저 조회해주세요.

SELECT ANIMAL_TYPE, COUNT(ANIMAL_ID) AS COUNT
FROM ANIMAL_INS
WHERE ANIMAL_TYPE = 'CAT' OR ANIMAL_TYPE = 'DOG'
GROUP BY ANIMAL_TYPE
ORDER BY ANIMAL_TYPE

-- 다른 사람 코드
-- SELECT  ANIMAL_TYPE, COUNT(ANIMAL_ID) AS count
-- FROM ANIMAL_INS
-- WHERE ANIMAL_TYPE IN ('Cat', 'Dog')
-- GROUP BY ANIMAL_TYPE
-- ORDER BY FIELD(ANIMAL_TYPE, 'Cat', 'Dog')

-- IN으로 고양이 또는 강아지만 출력
-- ORDER BY FIELD(ANIMAL_TYPE, 'Cat', 'Dog'): ANIMAL_TYPE을 정렬, Cat 1순위, Dog 2순위, 나머지를 오름차순으로 정렬
-- DESC를 붙이고 싶을 때는 닫는 괄호 뒤에