-- 아직 입양을 못 간 동물 중, 가장 오래 보호소에 있었던 동물 3마리의 이름과 보호 시작일을 조회하는 SQL문을 작성해주세요.
-- 이때 결과는 보호 시작일 순으로 조회해야 합니다.

select animal_ins.name, animal_ins.datetime
from animal_ins
left join animal_outs
on animal_ins.animal_id=animal_outs.animal_id
where animal_outs.animal_id is null
order by animal_ins.datetime
limit 0,3