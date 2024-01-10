use sqldb;
drop table if exists testtbl4;
select * from buytbl;
-- 상품명,가격 테이블 만들기
-- 1단계 테이블 만든다
create table if  not exists testtbl4
(prodName varchar(40) not null,
price int not null);
-- 2단계 삽입한다
select distinct prodName,price from buytbl;

insert into testtbl4
	select distinct prodName,price from buytbl;
    
select * from testtbl4 order by price desc;

-- 청바지 가격을 100으로 수정하기
update testtbl4 set price = 100 where prodName = '청바지';

-- 가장 높은 가격을 찾아서 10% 인하하기 ***with문으로 사용하기
-- 업데이트시 동일한 테이블을 서브쿼리 사용하여 업데이트 할 수 없다. 
select prodName from testtbl4 order by price desc limit 1;
update testtbl4 set price = price - price * 0.1 where price = (select price from ( select price from testtbl4 order by price desc limit 1) as t);

select * from testtbl4;


with tempTbl(price )
as ( select price from testtbl4 order by price desc limit 1)
select price from tempTbl;

-- delete문
select * from buytbl;

-- 테이블 복사해서 만들기
create table copyBuy
	select * from buytbl;

select * from copyBuy;

-- 1단계 amount 제일 작은거 찾기
select amount from copybuy order by amount asc limit 1;
-- 2단계 삭제하기
delete from copybuy where amount = (select amount from (select amount from copybuy order by amount asc limit 1) as t);

select * from copybuy;

-- 1. with절 사용하기
-- 뷰, 파생테이블, 임시테이블, 가상테이블 : 잠깐 사용 후 메모리에서 삭제된다.
use sqldb;

select * from usertbl;
select * from buytbl;

-- 요구사항 이름 총구매액(preic * amount)
select userID, sum(price) * sum(amount) as '총구매액' from buytbl group by userID;
-- 이름을 출력하기
select name from usertbl ;

select userID, sum(price * amount) as '총구매액' from buytbl,userbl where buytbl.userID = userbl.userID;

select * from usertbl, buytbl; -- usertbl,buytbl 모두 곱해져서 나온다
select * from usertbl, buytbl where usertbl.userID = buytbl.userID ; -- 교집합이 나온다.

select usertbl.userID, usertbl.name, buytbl.amount, buytbl.price from usertbl, buytbl where usertbl.userID = buytbl.userID ;

select usertbl.name, buytbl.amount * buytbl.price from usertbl, buytbl where usertbl.userID = buytbl.userID ;

-- select usertbl.name, buytbl.amount * buytbl.price from usertbl, buytbl where usertbl.userID = buytbl.userID  group by buytbl.userID;

select u.userID, u.name, b.amount * b.price from usertbl u, buytbl b where u.userID = b.userID;


with ub (id, name,total)
as
(
	select u.userID, u.name, b.amount * b.price from usertbl u, buytbl b where u.userID = b.userID
)

select  name, sum(total) from ub group by name;

-- ---------------------------------------------
-- 회원테이블에서 각 지역별로 가장 큰 키를 1명씩 뽑은 후 그 사람들의 키 평균을 내보자
select addr, max(height) from usertbl group by addr;
with t (avgHeight)
as
(
	select max(height) from usertbl group by addr
)
select avg(avgHeight) from t;

select * from buytbl;

-- 요구사항 각 그룹이름의 가격이 최저인 것 구해서 평균 구하기
select groupName, min(price) from buytbl group by groupName;
with t(avgPice)
as
(
	select min(price) from buytbl group by groupName
)
select avg(avgPice) from t;

with t(tid, total)
as
(
	select userID, sum(price) * sum(amount) from buytbl group by userID
)
select tid 이름, total 총구매액 from t ;

select usertbl.name,buytbl.price from usertbl, buytbl ;

select * from buytbl;

-- ----------------------------------------  7장 고급
-- 동영상, 소리, 그림, 2진수(BLOB) 저장해야한다.
-- 숫자 데이터 형식 ( 제일많이 쓰는 형식 앞에 ★)
-- smallint-정수, intinteger-정수, bigint-정수, float-(실수)소수점 아래 7자리까지 표현, decimal(m,[d]) - (실수) 전체 자리스(m)와 소수점 이하 자릿수(d)를 가진 숫자형

-- 문자 데이터 형식 ( 제일많이 쓰는 형식 앞에 ★)
-- char, varchar(n), longtext, longblob

-- 날짜형 데이터 형식 ( 제일많이 쓰는 형식 앞에 ★)
-- date, datetime

-- 기타 데이터 형식  ( 제일많이 쓰는 형식 앞에 ★)
-- geometry-공간데이터형식으로 개체를 저장하고 조작, json-문서를 저장

select cast('2020-10-19 12:35:29.123' as date); -- cast() 형변환 함수
select cast('2020-10-19 12:35:29.123' as time);
select cast('2020-10-19 12:35:29.123' as datetime);

set @var1 = 10;
set @var2 = '제품판매처 :삼성';
select @var2, @var1 ;
select @var2, prodName from buytbl;

-- 데이터 형 변환 cast(), convert()
select * from buytbl;
select avg(amount) from buytbl;
-- 실수형을 정수형으로 변환하기
select cast(avg(amount) as signed integer) from buytbl;
select convert(avg(amount) , signed integer) from buytbl;

-- 정수형을 실수형으로 변환
set @var3 = 3;
select cast(@var3 as float);
select convert(@var3 , float);

-- 정수형을 문자로 변환
select cast(@var3 as character);
select convert(@var3 , char);


-- 246
select '100' + '200';
select concat('100','200');
select concat(100,200);
select 1 > '2mega' ; -- 거짓이라 0 나옴
select 3 > '2mega' ; -- 참이라서 1 나옴
select 0 = '0mega' ; -- 문자는 0으로 바뀌므로 0 = 0

-- if 함수
-- select if( 조건, 참, 거짓)

set @vr1 = 200;
set @vr2 = 20;
set @vr3 = 100;

-- 가장 큰 수 구하기
select if (@vr1 > @vr2, if(@vr1 > @vr3, @vr1, @vr3), if(@vr2 > @vr3, @vr2, @vr3) );
-- 가장 작은 수 구하기
select if (@vr1 < @vr2, if(@vr1 < @vr3, @vr1, @vr3), if(@vr2 < @vr3, @vr2, @vr3) );
-- 중간 수 구하기
select if (@vr1 < @vr2, if(@vr1 > @vr3, @vr1, @vr3), if(@vr2 > @vr3, @vr2, @vr3) );

-- ifnull (수식1, 수식2)
select ifnull(null, 100);
select ifnull(200, null);
select ifnull(200, 300);
select ifnull(null, null), ifnull(null,300);

-- nullif (수식1, 수식2)
select nullif(100,100);
select nullif(200,100);

-- case when else end
select case 1
	when 1 then '일'
	when 2 then '이'
	when 3 then '삼'
	else '1,2,3이 아님'
end as 'case 연습' ;


select * from buytbl;
select case userid
	when 'KBS' then '김범수'
    when 'JYP' then '조용필'
    else '모름'
end as '이름', userID
from buytbl;

-- 문자열 함수
-- concat ()
-- concat(구분자, 문자열1, 문자열2)
select concat_ws(',', '100', '200');
select elt(1, '하나', '둘', '셋');
select field('김', '이', '박', '최', '김'); -- 처음 위치의 '김'이라는 문자를 뒤에 문자열에서 찾기
select find_in_set('김', '이,박,최,김,송');
select instr('이,박,최,김,송', '김');
select locate('김','이,박,최,김,송'); 

select format(123456.123456, 4);

select hex(10),oct(8), bin(15);

select insert('abcdefg', 3, 4, '0000') ;

select trim('     abc      ');

select substring('대한민국만세', 3, 2);

select substring_index('cafe.naver.com.co.kr' , '.', 2);

set @v = 'cafe.naver.com.co.kr';
set @v2 = substring_index(@v, '.', 4);
select @v2;

set @v3 = substring_index(@v2, '.',-2);
select @v3;
set @v4 = substring_index(@v3, '.' , 1);
select @v4;

set @v10 = 'a,b,c,d,e';
select @v11 = substring_index(@v10, ',' ,2);
select @v11;
set @v12 = substring_index(@v11, ',' , -1);
select @v12;

-- 숫자함수
select ceiling(4.1), floor(4.7), round(4.7);
select pow(2,10);

-- 기억 공간 단위
-- bit < 8bit = 1byte < 1024byte = 1kb < 1024kb = 1 megaByte < 1024mb = 1gb
-- 1024 gb = 1tb(terabye) < 1024 = 1hb (hera byte)

select rand(), floor(1 + (rand() * (7-1)) );

-- 1,235,456,577 천원이하 절삭
select truncate(123545677, -3);
 select * from usertbl;
-- 날짜, 시간 함수
select mdate, adddate( mdate, interval 31 day)
from usertbl;

select date (now()), time(now()), now();
select sysdate();

-- --------------- 261 대용량 파일 처리하기 - 파일 업로드(올리기), 파일 다운로드(내리기)
create database moviedb;
use moviedb;

drop table movietbl;

create table movietbl
( movie_id int,
  movie_title varchar(30),
  movie_director varchar(20), 
  movie_star varchar(20), 
  movie_script longtext, -- 대본
  movie_film longblob ) default charset=utf8mb4 ;
  
insert into movietbl
 values (1, '쉰들러리스트', '스필버그', '리암니슨',
		load_file('D:/ai/study/temp/movies/Schindler.txt'),
        load_file('D:/ai/study/temp/movies/Schindler.mp4') 
        );
        
select * from movietbl ;

show variables like 'max_allowed_packet' ; -- 패킷의 크기를 볼 수 있다
show variables like 'secure_dile_priv' ; -- 지정한 업로드 경로보기

select * from movietbl ;

drop table movietbl;