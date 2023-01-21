-- 보호소에서 중성화 수술을 거친 동물 정보를 알아보려 합니다.
-- 보호소에 들어올 당시에는 중성화되지 않았지만, 보호소를 나갈 당시에는 중성화된 동물의 아이디와 생물 종, 이름을 조회하는 아이디 순으로 조회하는 SQL 문을 작성해주세요.

-- 중성화 X - Intact
-- 중성화 O - Spayed 또는 Neutered

select animal_ins.animal_id, animal_ins.animal_type, animal_ins.name
from animal_ins
left join animal_outs
on animal_ins.animal_id=animal_outs.animal_id
where animal_ins.sex_upon_intake like 'Intact%'
and animal_outs.sex_upon_outcome regexp 'Spayed|Neutered'

-- regexp는 함수가 아니라, like 같은 검색 방식이므로 괄호를 쓰지 않는다