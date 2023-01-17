-- CAR_RENTAL_COMPANY_CAR 테이블에서 자동차 종류가 'SUV'인 자동차들의 평균 일일 대여 요금을 출력하는 SQL문을 작성해주세요.
-- 이때 평균 일일 대여 요금은 소수 첫 번째 자리에서 반올림하고, 컬럼명은 AVERAGE_FEE 로 지정해주세요.

select round(avg(daily_fee)) as average_fee
from car_rental_company_car
where car_type='suv'

-- 반올림: ROUND(컬럼명, 반올림할 자릿수)
-- 내림: TRUNCATE(컬럼명, 내림할 자릿수)
-- 정수로 내림: FLOOR(컬럼명)
-- 정수로 올림: CEIL(컬럼명)