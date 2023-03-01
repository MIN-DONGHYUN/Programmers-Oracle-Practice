--프로그래머스 1단계 흉부외과 또는 일반외과 의사 목록 출력하기
-- https://school.programmers.co.kr/learn/courses/30/lessons/132203

select DR_NAME, DR_ID, MCDP_CD, to_char(HIRE_YMD,'yyyy-mm-dd')  as HIRE_YMD	
from DOCTOR
where MCDP_CD in('CS', 'GS')
order by HIRE_YMD desc , DR_NAME asc

