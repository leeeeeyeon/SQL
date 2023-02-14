-- CAR_RENTAL_COMPANY_RENTAL_HISTORY 테이블에서 대여 시작일을 기준으로 2022년 8월부터 2022년 10월까지 총 대여 횟수가 5회 이상인 자동차들에 대해서 해당 기간 동안의 월별 자동차 ID 별 총 대여 횟수(컬럼명: RECORDS) 리스트를 출력하는 SQL문을 작성해주세요. 
-- 결과는 월을 기준으로 오름차순 정렬하고, 월이 같다면 자동차 ID를 기준으로 내림차순 정렬해주세요. 
-- 특정 월의 총 대여 횟수가 0인 경우에는 결과에서 제외해주세요.

select month(start_date) as month, car_id, count(history_id) as records
from car_rental_company_rental_history
where car_id in (
    select car_id
    from car_rental_company_rental_history
    where year(start_date)=2022 and month(start_date) between 8 and 10
    group by car_id
    having count(car_id) >= 5)
and year(start_date)=2022 and month(start_date) between 8 and 10
group by month, car_id
order by month, car_id desc

-- 대여 시작일을 기준으로 2022년 8월부터 2022년 10월인지 확인하는 것을 서브쿼리 안에서도 해주고, 전체 쿼리에서도 해주어야 한다
-- 전체 쿼리에서 해당 조건을 사용하지 않으면 count(history_id)에 2022년 8월부터 2022년 10월이 아닌 데이터들이 합하여 계산된다
-- 참고: https://velog.io/@dl-00-e8/Programmers-대여-횟수가-많은-자동차들의-월별-대여-횟수-구하기#2022년-8월--2022년-10월에-해당하는-조건-두-번-사용