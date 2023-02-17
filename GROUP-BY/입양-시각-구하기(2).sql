-- 0시부터 23시까지, 각 시간대별로 입양이 몇 건이나 발생했는지 조회하는 SQL문을 작성해주세요. 이때 결과는 시간대 순으로 정렬해야 합니다.
set @i = -1;

SELECT (@i:=@i+1) as hour,
    (select count(*)
    from animal_outs
    where hour(datetime) = @i) as count
from animal_outs
where @i<23

-- 사용자 정의 변수를 사용해야 함
-- 앞에 @를 붙여 변수를 사용할 수 있음
-- 선언은 =와 := 둘 다 가능, 그 외에는 :=만 사용 가능
-- set과 select를 함께 사용하기 위에 ;로 구분
-- 변수는 쿼리를 돌면서 1씩 증가
-- 서브쿼리로 변수와 같은 시간대의 count(*)를 출력