--프로그래머스 1단계 자동차 대여 기록에서 장기/단기 대여 구분하기

-- 테이블 생성 
create table CAR_RENTAL_COMPANY_RENTAL_HISTORY
(HISTORY_ID   INTEGER    NOT NULL
,CAR_ID       INTEGER    NOT NULL
,START_DATE  	DATE     NOT NULL
,END_DATE    	DATE     NOT NULL
);

-- 테이블에 값 대입 
insert into CAR_RENTAL_COMPANY_RENTAL_HISTORY values ('1','4','2022-09-27', '2022-11-27');
insert into CAR_RENTAL_COMPANY_RENTAL_HISTORY values ('2','3','2022-10-03', '2022-11-04');
insert into CAR_RENTAL_COMPANY_RENTAL_HISTORY values ('3','2','2022-09-05', '2022-09-05');
insert into CAR_RENTAL_COMPANY_RENTAL_HISTORY values ('4','1','2022-09-01', '2022-09-30');
insert into CAR_RENTAL_COMPANY_RENTAL_HISTORY values ('5','3','2022-09-16', '2022-10-15');

-- 확인하기 
select * 
from CAR_RENTAL_COMPANY_RENTAL_HISTORY;


--> CAR_RENTAL_COMPANY_RENTAL_HISTORY 테이블에서 대여 시작일이 
--> 2022년 9월에 속하는 대여 기록에 대해서 대여 기간이 30일 이상이면 '장기 대여' 그렇지 않으면 
--> '단기 대여' 로 표시하는 컬럼(컬럼명: RENT_TYPE)을 추가하여 대여기록을 출력하는 SQL문을 작성해주세요. 
--> 결과는 대여 기록 ID를 기준으로 내림차순 정렬해주세요.



-- 정답 코드 
select HISTORY_ID, CAR_ID, to_char(start_date, 'yyyy-mm-dd'), to_char(end_date, 'yyyy-mm-dd'), case when (END_DATE - START_DATE + 1)  >= 30 then '장기 대여' else '단기 대여' end AS RENT_TYPE
from CAR_RENTAL_COMPANY_RENTAL_HISTORY
where to_char(start_date, 'yyyy-mm') = '2022-09'
order by 1 desc;



 drop table CAR_RENTAL_COMPANY_RENTAL_HISTORY purge;

