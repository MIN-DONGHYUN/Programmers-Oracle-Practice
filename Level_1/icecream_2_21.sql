--프로그래머스 1단계 : 과일로 만든 아이스크림 고르기
--출처 : https://school.programmers.co.kr/learn/courses/30/lessons/133025


-- 상반기 아이스크림 총주문량이 3,000보다 높으면서 
-- 아이스크림의 주 성분이 과일인 아이스크림의 맛을 총주문량이 큰 순서대로 조회하는 SQL 문을 작성해주세요.

-- 정답 코드 
SELECT FLAVOR
from 
(
    SELECT A.SHIPMENT_ID, A.FLAVOR, A.TOTAL_ORDER, B.INGREDIENT_TYPE
    from FIRST_HALF A JOIN ICECREAM_INFO B
    ON A.FLAVOR = B.FLAVOR
    where B.INGREDIENT_TYPE = 'fruit_based'
    order by 3 desc
)
where TOTAL_ORDER > 3000