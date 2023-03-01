--프로그래머스 1단계 인기있는 아이스크림
-- https://school.programmers.co.kr/learn/courses/30/lessons/133024

with 
A as
(select SHIPMENT_ID, FLAVOR, TOTAL_ORDER
      FROM FIRST_HALF
      order by 3 desc , 1)
SELECT FLAVOR
FROM A

