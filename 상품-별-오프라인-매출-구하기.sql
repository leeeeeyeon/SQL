-- PRODUCT 테이블과 OFFLINE_SALE 테이블에서 상품코드 별 매출액(판매가 * 판매량) 합계를 출력하는 SQL문을 작성해주세요.
-- 결과는 매출액을 기준으로 내림차순 정렬해주시고 매출액이 같다면 상품코드를 기준으로 오름차순 정렬해주세요.

SELECT product_code, sum(price*sales_amount) as sales
from product as p, offline_sale as o
where p.product_id=o.product_id
group by product_code
order by sales desc, product_code

-- sales를 price*sales_amount가 아니라 sum(price*sales_amount)으로 해주어야 함