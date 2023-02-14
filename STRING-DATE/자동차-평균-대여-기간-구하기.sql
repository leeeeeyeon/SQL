-- CAR_RENTAL_COMPANY_RENTAL_HISTORY 테이블에서 평균 대여 기간이 7일 이상인 자동차들의 자동차 ID와 평균 대여 기간(컬럼명: AVERAGE_DURATION) 리스트를 출력하는 SQL문을 작성해주세요. 
-- 평균 대여 기간은 소수점 두번째 자리에서 반올림하고, 결과는 평균 대여 기간을 기준으로 내림차순 정렬해주시고, 평균 대여 기간이 같으면 자동차 ID를 기준으로 내림차순 정렬해주세요.

select car_id, round(avg(datediff(end_date, start_date)+1), 1) as average_duration
from car_rental_company_rental_history
group by car_id
having average_duration >= 7
order by average_duration desc, car_id desc

-- 'datediff(end_date, start_date)'이 아니라 'datediff(end_date, start_date)+1'로 해야 한다.
-- 이유: 9월 5일부터 9월 5일까지 대여한 것은 대여 기간이 1일이기 때문