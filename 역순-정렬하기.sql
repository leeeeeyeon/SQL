-- 동물 보호소에 들어온 모든 동물의 이름과 보호 시작일을 조회하는 SQL문을 작성해주세요.
-- 이때 결과는 ANIMAL_ID 역순으로 보여주세요.

select name, datetime
from animal_ins
order by animal_id desc