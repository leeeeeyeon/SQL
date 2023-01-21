-- 관리자의 실수로 일부 동물의 입양일이 잘못 입력되었습니다.
-- 보호 시작일보다 입양일이 더 빠른 동물의 아이디와 이름을 조회하는 SQL문을 작성해주세요.
-- 이때 결과는 보호 시작일이 빠른 순으로 조회해야합니다.

select animal_ins.animal_id, animal_ins.name
from animal_ins, animal_outs
where animal_ins.animal_id=animal_outs.animal_id
and animal_ins.datetime > animal_outs.datetime
order by animal_ins.datetime

-- 처음에 datediff 함수를 사용하여 틀렸다.
-- 날짜가 동일해도 시작 시간보다 입양 시간이 빠를 경우도 있으므로 timediff를 사용해주어야 한다.