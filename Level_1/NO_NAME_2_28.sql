-- 이름이 없는 동물의 아이디
-- https://school.programmers.co.kr/learn/courses/30/lessons/59039

/*
동물 보호소에 들어온 동물 중, 이름이 없는 채로 들어온 동물의 ID를 조회하는 SQL 문을 작성해주세요. 
단, ID는 오름차순 정렬되어야 합니다.
*/

SELECT ANIMAL_ID
FROM (
        SELECT ANIMAL_ID, NAME
        FROM ANIMAL_INS
        where nvl(NAME, '-9999') = '-9999'
     )
order by 1;

