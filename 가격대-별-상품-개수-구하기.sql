-- PRODUCT 테이블에서 만원 단위의 가격대 별로 상품 개수를 출력하는 SQL 문을 작성해주세요. 
-- 이때 컬럼명은 각각 컬럼명은 PRICE_GROUP, PRODUCTS로 지정해주시고 가격대 정보는 각 구간의 최소금액(10,000원 이상 ~ 20,000 미만인 구간인 경우 10,000)으로 표시해주세요. 결과는 가격대를 기준으로 오름차순 정렬해주세요.

select truncate(price, -4) as price_group, count(product_id) as products
from product
group by price_group
order by price_group

-- 참고: https://velog.io/@zinu/프로그래머스-가격대-별-상품-개수-구하기MySQL
-- truncate(숫자, 버릴 자릿수)
-- 버릴 자릿수가 음수일 경우, 버릴 자릿수 아래는 0으로 채워진다
-- 소수점 버림을 할 때는 버릴 자릿수에 양수를 적는다