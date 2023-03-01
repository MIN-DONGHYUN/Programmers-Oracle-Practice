-- 상위 n개 레코드
-- https://school.programmers.co.kr/learn/courses/30/lessons/59405

/*
동물 보호소에 가장 먼저 들어온 동물의 이름을 조회하는 SQL 문을 작성해주세요.
*/

select NAME
from
(
SELECT NAME , DATETIME
FROM ANIMAL_INS
order by 2 
)
where rownum <= 1;


