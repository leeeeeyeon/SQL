-- CAR_RENTAL_COMPANY_CAR 테이블과 CAR_RENTAL_COMPANY_RENTAL_HISTORY 테이블과 CAR_RENTAL_COMPANY_DISCOUNT_PLAN 테이블에서 자동차 종류가 '트럭'인 자동차의 대여 기록에 대해서 대여 기록 별로 대여 금액(컬럼명: FEE)을 구하여 대여 기록 ID와 대여 금액 리스트를 출력하는 SQL문을 작성해주세요. 
-- 결과는 대여 금액을 기준으로 내림차순 정렬하고, 대여 금액이 같은 경우 대여 기록 ID를 기준으로 내림차순 정렬해주세요.

select history_id,
    if(discount_rate is null, floor(daily_fee*diff), floor((daily_fee*diff)*((100-discount_rate)/100))) as fee
from (
    select *
    from car_rental_company_car
    where car_type='트럭'
) as car
left join (
    select history_id, car_id, datediff(end_date, start_date)+1 as diff,
    case when datediff(end_date, start_date)>=90 then '90일 이상'
        when datediff(end_date, start_date)>=30 then '30일 이상'
        when datediff(end_date, start_date)>=7 then '7일 이상'
        else '7일 미만' end as duration
    from car_rental_company_rental_history
) as history on car.car_id=history.car_id
left join (
    select car_type, duration_type, discount_rate
    from car_rental_company_discount_plan
) as discount on car.car_type=discount.car_type and history.duration=discount.duration_type
order by fee desc, history_id desc

-- 전부 join 후 조건을 거는 것보다 조건에 맞게 뽑아온 table을 join하자
-- 1. 자동차 종류가 트럭 > car
-- 2. 대여 기록별로 대여 금액 > history
-- 3. 대여 기록 ID와 대여 금액 리스트 출력 > discount
-- 4. 대여 금액 기준 DESC, 기록 ID 기준 DESC