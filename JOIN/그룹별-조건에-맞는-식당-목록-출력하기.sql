-- MEMBER_PROFILE와 REST_REVIEW 테이블에서 리뷰를 가장 많이 작성한 회원의 리뷰들을 조회하는 SQL문을 작성해주세요. 
-- 회원 이름, 리뷰 텍스트, 리뷰 작성일이 출력되도록 작성해주시고, 결과는 리뷰 작성일을 기준으로 오름차순, 리뷰 작성일이 같다면 리뷰 텍스트를 기준으로 오름차순 정렬해주세요.
 
select m.member_name, r.review_text, date_format(r.review_date, '%Y-%m-%d') as review_date from
member_profile as m, rest_review as r
where m.member_id=r.member_id
and m.member_name in (
    select * from (select m.member_name from
member_profile as m, rest_review as r
where m.member_id=r.member_id
group by m.member_name
order by count(r.review_text) desc
limit 0, 1) as t
)
order by review_date, review_text

-- m.member_name in (
--    select m.member_name from
--    member_profile as m, rest_review as r
--    where m.member_id=r.member_id
--    group by m.member_name
--    order by count(r.review_text) desc
--    limit 0, 1
-- )
-- 로 하면 This version of MySQL doesn't yet support 'LIMIT & IN/ALL/ANY/SOME subquery
-- 라는 에러가 발생한다

-- 이는 LIMIT을 포함한 서브 쿼리를 지원해주지 않아서 발생하는 에러이다
-- LIMIT 쿼리가 포함된 쿼리로 임시 테이블을 생성하도록 하여 해결할 수 있다

-- 참고: https://tttto-factory.tistory.com/entry/MySQL-57-doenst-yet-support-LIMIT-INALLANYSOME-subquery

