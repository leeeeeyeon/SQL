-- 7월 아이스크림 총 주문량과 상반기의 아이스크림 총 주문량을 더한 값이 큰 순서대로 상위 3개의 맛을 조회하는 SQL 문을 작성해주세요.

select flavor
from
(select shipment_id, flavor, total_order
from first_half
union all
select shipment_id, flavor, total_order
from july) as temp
group by flavor
order by sum(total_order) desc
limit 0, 3

-- 서브 쿼리에 이름을 지정해주지 않아 Every derived table must have its own alias
-- 라는 에러가 발생했다
-- 앞으로는 웬만하면 서브 쿼리 테이블에 이름을 지어주도록 하자