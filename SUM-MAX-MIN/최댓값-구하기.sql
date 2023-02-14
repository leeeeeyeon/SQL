-- 가장 최근에 들어온 동물은 언제 들어왔는지 조회하는 SQL 문을 작성해주세요.

SELECT MAX(DATETIME)
FROM ANIMAL_INS

-- 숫자뿐만 아니라 문자열과 날짜에도 MAX 함수를 적용할 수 있다는 점을 알아두자.