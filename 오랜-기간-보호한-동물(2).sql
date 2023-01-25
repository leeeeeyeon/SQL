-- 입양을 간 동물 중, 보호 기간이 가장 길었던 동물 두 마리의 아이디와 이름을 조회하는 SQL문을 작성해주세요.
-- 이때 결과는 보호 기간이 긴 순으로 조회해야 합니다.

select o.animal_id, o.name
from animal_ins as i, animal_outs as o
where i.animal_id=o.animal_id
order by (o.datetime - i.datetime) desc
limit 0,2

-- 처음에 order by에서 timediff 함수를 사용하여 틀렸다.
-- timediff는 최대 838:59:59까지 표현할 수 있기 때문에 이보다 큰 값이 나올 경우 사용할 수 없다.