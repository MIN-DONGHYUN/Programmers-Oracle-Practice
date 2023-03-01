-- 어린 동물 찾기
-- https://school.programmers.co.kr/learn/courses/30/lessons/59037

/*
동물 보호소에 들어온 동물 중 젊은 동물1의 아이디와 이름을 조회하는 SQL 문을 작성해주세요. 
이때 결과는 아이디 순으로 조회해주세요.
*/

SELECT ANIMAL_ID, NAME
FROM (
        SELECT ANIMAL_ID, NAME, INTAKE_CONDITION
        FROM ANIMAL_INS
        where INTAKE_CONDITION not like 'Aged'
)
order by 1;


