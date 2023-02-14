-- FOOD_ORDER 테이블에서 5월 1일을 기준으로 주문 ID, 제품 ID, 출고일자, 출고여부를 조회하는 SQL문을 작성해주세요. 
-- 출고여부는 5월 1일까지 출고완료로 이 후 날짜는 출고 대기로 미정이면 출고미정으로 출력해주시고, 결과는 주문 ID를 기준으로 오름차순 정렬해주세요.

select order_id, product_id, date_format(out_date, '%Y-%m-%d'),
    case
        when out_date is null
        then '출고미정'
        when out_date > '2022-05-01'
        then '출고대기'
        when out_date <= '2022-05-01'
        then '출고완료'
    end as '출고여부'
from food_order
order by order_id

-- 조건이 3개 이상일 때는 case문을 쓰자
-- case로 시작해서 end로 마무리 like { }
-- when (조건) then (반환값)

-- datediff를 하지 않아도 등호, 부등호로 날짜 비교가 가능하다