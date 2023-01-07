SELECT DR_NAME, DR_ID, MCDP_CD, DATE_FORMAT(HIRE_YMD, '%Y-%m-%d') AS HIRE_YMD
FROM DOCTOR
WHERE MCDP_CD='CS' OR MCDP_CD='GS'
ORDER BY HIRE_YMD DESC, DR_NAME

-- ASC - Default, 오름차순
--  DESC - 내림차순
--  날짜 형식 지정 - DATE_FORMAT(HIRE_YMD, '%Y-%m-%d') AS HIRE_YMD
--  기타 날짜 형식 참고 - https://velog.io/@donghoim/MySQL-DATETIME-원하는-유형으로-변경-YYMMDD