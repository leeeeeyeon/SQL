-- PATIENT, DOCTOR 그리고 APPOINTMENT 테이블에서 2022년 4월 13일 취소되지 않은 흉부외과(CS) 진료 예약 내역을 조회하는 SQL문을 작성해주세요. 
-- 진료예약번호, 환자이름, 환자번호, 진료과코드, 의사이름, 진료예약일시 항목이 출력되도록 작성해주세요. 
-- 결과는 진료예약일시를 기준으로 오름차순 정렬해주세요.

select a.apnt_no, pt_name, a.pt_no, a.mcdp_cd, dr_name, apnt_ymd
from patient as p, doctor as d, appointment as a
where p.pt_no=a.pt_no and d.dr_id=a.mddr_id
and apnt_ymd like'2022-04-13%'
and a.mcdp_cd='CS'
and apnt_cncl_yn='N'
order by apnt_ymd

-- 날짜를 비교할 때 date(a1.APNT_YMD) = '2022-04-13'라고 할 수 있다