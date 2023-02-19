-- USER_INFO 테이블과 ONLINE_SALE 테이블에서 년, 월, 성별 별로 상품을 구매한 회원수를 집계하는 SQL문을 작성해주세요. 
-- 결과는 년, 월, 성별을 기준으로 오름차순 정렬해주세요. 이때, 성별 정보가 없는 경우 결과에서 제외해주세요.
-- 이때, 성별 정보가 없는 경우 결과에서 제외해주세요.

select year(sales_date) as year, month(sales_date) as month, u.gender as gender, count(distinct o.user_id) as users
from user_info as u, online_sale as o
where u.user_id=o.user_id
and gender is not null
group by year, month, gender
order by year, month, gender

-- user_id를 count할 때 distinct를 붙여야 한다!