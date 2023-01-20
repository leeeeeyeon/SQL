-- CAR_RENTAL_COMPANY_CAR 테이블에서 '통풍시트', '열선시트', '가죽시트' 중 하나 이상의 옵션이 포함된 자동차가 자동차 종류 별로 몇 대인지 출력하는 SQL문을 작성해주세요.
-- 이때 자동차 수에 대한 컬럼명은 CARS로 지정하고, 결과는 자동차 종류를 기준으로 오름차순 정렬해주세요.

select car_type, count(car_id) as cars
from car_rental_company_car
where options like '%통풍시트%'
or options like '%열선시트%'
or options like '%가죽시트%'
group by car_type
order by car_type

-- 다른 사람 코드 
-- select CAR_TYPE , COUNT(CAR_TYPE) AS CARS 
-- FROM CAR_RENTAL_COMPANY_CAR  
-- WHERE OPTIONS REGEXP '통풍시트|열선시트|가죽시트'
-- GROUP BY car_type
-- ORDER BY CAR_TYPE

-- regexp 'A': A를 포함한 모든 레코드 출력
-- regexp 'A|B|C|D': A 또는 B 또는 C 또는 D를 포함한 모든 레코드 출력