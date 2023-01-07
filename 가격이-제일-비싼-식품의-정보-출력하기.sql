-- FOOD_PRODUCT 테이블에서 가격이 제일 비싼 식품의 식품 ID, 식품 이름, 식품 코드, 식품분류, 식품 가격을 조회하는 SQL문을 작성해주세요.

SELECT PRODUCT_ID, PRODUCT_NAME, PRODUCT_CD, CATEGORY, PRICE
FROM FOOD_PRODUCT
ORDER BY PRICE DESC
LIMIT 1

-- 실패한 쿼리
/*
SELECT PRODUCT_ID, PRODUCT_NAME, PRODUCT_CD, CATEGORY, MAX(PRICE) AS PRICE
FROM FOOD_PRODUCT

가격만 최대인 상품의 가격을 보여주고 나머지 값은 첫 상품의 속성을 보여주기 때문에 틀렸다.
*/