-- ANIMAL_INS 테이블에 등록된 모든 레코드에 대해, 각 동물의 아이디와 이름, 들어온 날짜를 조회하는 SQL문을 작성해주세요. 
-- 이때 결과는 아이디 순으로 조회해야 합니다.
-- 들어온 날짜: 시각(시-분-초)을 제외한 날짜(년-월-일)만 보여주세요.

select animal_id, name, date_format(datetime, '%Y-%m-%d') as 날짜
from animal_ins
order by animal_id

-- date_format 인자는 컬럼명, 포맷 순