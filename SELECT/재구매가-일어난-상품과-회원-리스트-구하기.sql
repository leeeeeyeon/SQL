-- ONLINE_SALE 테이블에서 동일한 회원이 동일한 상품을 재구매한 데이터를 구하여, 재구매한 회원 ID와 재구매한 상품 ID를 출력하는 SQL문을 작성해주세요.
-- 결과는 회원 ID를 기준으로 오름차순 정렬해주시고 회원 ID가 같다면 상품 ID를 기준으로 내림차순 정렬해주세요.

select user_id, product_id
from online_sale
group by user_id, product_id
having count(*) >= 2
order by user_id, product_id desc

-- 조건문은 where이 아닌 having을 사용해주어야 한다. 
-- where: 모든 필드에 조건을 줌
-- having: 그룹화된 새로운 테이블에 조건을 줌