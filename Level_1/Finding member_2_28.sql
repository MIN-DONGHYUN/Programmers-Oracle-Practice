-- 조건에 맞는 회원수 구하기
-- https://school.programmers.co.kr/learn/courses/30/lessons/131535


-- USER_INFO 테이블에서 2021년에 가입한 회원 중 나이가 20세 이상 29세 이하인 회원이 몇 명인지 출력하는 SQL문을 작성해주세요.
SELECT count(*) AS USERS
FROM (
    SELECT * 
    FROM USER_INFO
    where to_char(JOINED, 'yyyy') = '2021' and AGE between '20' and '29'); 

