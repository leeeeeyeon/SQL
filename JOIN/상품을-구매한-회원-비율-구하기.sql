-- USER_INFO 테이블과 ONLINE_SALE 테이블에서 2021년에 가입한 전체 회원들 중 상품을 구매한 회원수와 상품을 구매한 회원의 비율(=2021년에 가입한 회원 중 상품을 구매한 회원수 / 2021년에 가입한 전체 회원 수)을 년, 월 별로 출력하는 SQL문을 작성해주세요.
-- 상품을 구매한 회원의 비율은 소수점 두번째자리에서 반올림하고, 전체 결과는 년을 기준으로 오름차순 정렬해주시고 년이 같다면 월을 기준으로 오름차순 정렬해주세요.

select year(sales_date) as year, month(sales_date) as month, 
count(distinct sale.user_id) as puchased_user, 
round((count(distinct sale.user_id)/(select count(user_id) from user_info where year(joined)=2021)), 1) as puchased_ratio
from user_info as user, online_sale as sale
where user.user_id=sale.user_id
and year(joined)=2021
group by year, month
order by year, month