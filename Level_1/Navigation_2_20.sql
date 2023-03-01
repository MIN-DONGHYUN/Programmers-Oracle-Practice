--프로그래머스 1단계 특정 옵션이 포함된 자동차 리스트 구하기

-- 테이블 생성 
create table CAR_RENTAL_COMPANY_CAR
(CAR_ID         INTEGER         NOT NULL
,CAR_TYPE       VARCHAR(255)    NOT NULL
,DAILY_FEE  	INTEGER         NOT NULL
,OPTIONS     	VARCHAR(255)    NOT NULL
);

-- 테이블에 값 대입 
insert into CAR_RENTAL_COMPANY_CAR values ('1','세단','16000', '가죽시트,열선시트,후방카메라');
insert into CAR_RENTAL_COMPANY_CAR values ('2','SUV','14000', '스마트키,네비게이션,열선시트');
insert into CAR_RENTAL_COMPANY_CAR values ('3','SUV','22000', '주차감지센서,후방카메라,네비게이션');


-- 확인하기 
select * 
from CAR_RENTAL_COMPANY_CAR;


--> CAR_RENTAL_COMPANY_CAR 테이블에서 '네비게이션' 옵션이 포함된 자동차 리스트를 출력하는 SQL문을 작성해주세요. 
-->결과는 자동차 ID를 기준으로 내림차순 정렬해주세요.

-- 정답 코드 
SELECT *
from CAR_RENTAL_COMPANY_CAR
where options like '%네비게이션%'
order by car_id desc;



 drop table CAR_RENTAL_COMPANY_CAR purge;

