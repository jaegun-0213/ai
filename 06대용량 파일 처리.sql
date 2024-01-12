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

-- longtext, longblob가 null이 나오는 이유 
-- > 용량이 모자라서
show variables like 'max_allowed_packet';
-- > 경로가 잘못되서
show variables like 'secure_file_priv';
-- 환경설정하기

-- 데이터베이스 내려받기 --> 개인 컴퓨터로 다운로드
-- 텍스트 파일 내리기 
-- 1단계: 내릴 것을 확인하기
select movie_script from movietbl where movie_id=1;
-- 2단계: 내리기
select movie_script from movietbl where movie_id=1 into outfile 'D:/ai/temp/movies/movies_script_copy.txt'
lines terminated by '\\n';

-- 동영상 파일 내리기
select movie_film from movietbl where movie_id=1;
select movie_film from movietbl where movie_id=1 into outfile 'D:/ai/temp/movies/movies_film_copy.mp4';

-- 피벗의 구현
use sqldb;
select*from usertbl;
select*from buytbl;

create table pivotTest
(
   uName char(3),
    season char(2),
    amount int 
);

insert into pivotTest values
('김범수','겨울',10), ('윤종신','여름',15), ('김범수','가을',25), ('김범수','봄',3), ('김범수','봄',37),
('윤종신','겨울',40), ('김범수','여름',14),('김범수','겨울',22),('윤종신','여름',64);

select*from pivotTest;
-- 피벗: 
select uName '이름', 
   sum(if(season='봄', amount, 0)) '봄', 
    sum(if(season='여름', amount, 0)) '여름', 
    sum(if(season='가을', amount, 0)) '가을',
   sum(if(season='겨울', amount, 0)) '겨울', 
    sum(amount) '합계' from pivotTest group by uName;
    
select season '계절',
   sum(if(uName='김범수', amount, 0)) '김범수',
    sum(if(uName='윤종신', amount, 0)) '윤종신',
    sum(amount) '합계' from pivotTest group by season;
    
-- json 파일 처리하기
-- 1. json 만들기

-- json_array()
select json_array(1,'abc', null, True, curtime()); -- [] 배열, 리스트

-- json_object()
select json_object('score', 87, 'name', 'hong', 'age', 25);
set @jsonData = json_object('score', 87, 'name', 'hong', 'age', 25);
select @jsonData;

select*from usertbl;

-- 키 userid, addr 값 json을 만들기
select json_object(userid, addr) from usertbl;

-- 키 userid, 값 [010, 00000000] 형태로 json을 만들기
select json_object(userid, json_array(mobile1, mobile2)) from usertbl;

-- 외부로 내보내기 json 파일로 만들기
select json_object(userid, json_array(mobile1, mobile2)) from usertbl into outfile 'D:/ai/study/temp/movies/jsonOutput.json';

-- 자료형이 json인지 판단하기
-- json_valid()
select json_valid(@jsonData) ; -- json 자료형이므로 1을 반환

select
	if(json_valid( @jsonData) = 1,
		'json 자료다',
        'json 자료가 아니다.' );

-- json 자료안에 값을 검색하기
SET @j = '["abc", [{"k": "10"}, "def"], [{"x1":"abc1"},{"x2":"abc2"},{"x5":"abc5"}], {"y":"bcd"}]';

-- json_search
select
	json_search( @j, 'all', 'abc5') ; -- 못찾으면 null이 반환된다. / 찾으면 리스트의 위치를 알려준다.
    
-- json_extract

-- json_insert
SET @j = '{ "a":1, "b": [2, 3]}';

select json_insert(@j, '$.c', 10); -- 키가 새것이면 삽입된다.
select json_insert(@j, '$.a', 10); -- 키가 이미 있으면 삽입되지 않는다.
select json_insert(@j, '$.b', '[2,3,4]'); -- 키가 이미 있으면 삽입되지 않는다.

-- json-replace
SET @j = '{ "a":1, "b": [2, 3]}';

select json_replace(@j, '$.a', 10) ; -- 키가 있으면 수정하기
select json_replace(@j, '$.a', 10) ; -- 키가 없으면 아무것도 안하기

-- ************************************중요 join
select * from usertbl;
select * from buytbl;

select * from usertbl
	inner join buytbl
    on usertbl.userid = buytbl.userid;
    
select usertbl.name, buytbl.prodName from usertbl
	inner join buytbl
    on usertbl.userid = buytbl.userid
where birthyear between 1970 and 1980 order by usertbl.name limit 3;

-- select usertbl.name, buytbl.prodName  / from usertbl
-- 					5							1
-- inner join buytbl
-- 			2
--   on usertbl.userid = buytbl.userid
-- 						3
-- where birthyear between 1970 and 1980  / order by usertbl.name /  limit 3;
-- 				  	4								6					7    

select u.name, b.prodName from usertbl u
	inner join buytbl b
    on u.userid = b.userid
where u.userid = 'BBK';

 
-- 282
create table stdTbl (
	stdName varchar(10) not null primary key,
    addr char(4) not null);
    
    drop table clubtbl;
    
create table clubTbl (
	clubName varchar(10) not null primary key,
    roomNo char(4) not null);
    
create table stdclubTbl (
	num int auto_increment not null primary key,
    stdName varchar(10) not null,
    clubName varchar(10) not null,
    foreign key(stdName) references stdTbl(stdName),
    foreign key(clubName) references clubTbl(clubName)
    );
    
insert into stdtbl 
values 
('김범수', '경남'),('성시경', '서울'),('조용필', '경기'),('은지원', '경북'),('바비킴', '서울'); 

insert into clubtbl 
values 
('수영', '101호'),('바둑', '102호'),('축구', '103호'),('봉사', '104호'); 

insert into stdclubTbl 
values 
(null, '김범수', '바둑'),(null, '김범수', '축구'),(null, '조용필', '축구'),(null, '은지원', '축구'),(null, '은지원', '봉사'),(null, '바비킴', '봉사');

select * from stdtbl;
select * from clubtbl;
select * from stdclubTbl;

-- 1 학생을 기준으로 학생이름, 지역, 가입한 동아리, 동아리방 보기
-- 학생을 기준으로 학생이름, 지역, 가입한 동아리,동아리방 보기
select s.stdName, s.addr, c.clubName, c.roomNo
from stdtbl s 
	inner join stdclubtbl sc
    on s.stdName = sc.stdName
    inner join clubtbl c
    on sc.clubName = c.clubName;
    
-- 2 요구사항 학생테이블, 동아리테이블, 학생동아리 테이블을 이용하여
-- 축구를 선택하신 분의 이름과 지역은?
select s.stdName, s.addr, c.clubName 
from stdtbl s
	inner join stdclubtbl sc
    on s.stdName = sc.stdName
    inner join clubtbl c
    on sc.clubName = c.clubName
where sc.clubName = '축구' ;


-- 3 요구사항 학생테이블, 동아리테이블, 학생동아리 테이블을 이용하여
-- 은지원이 선택한 동아리와 동아리방은?
select c.clubName, c.roomNo
from stdtbl s
	inner join stdclubtbl sc
    on s.stdName = sc.stdName
    inner join clubtbl c
    on sc.clubName = c.clubName
where s.stdName = '은지원';
    

-- 4 요구사항 학생테이블, 동아리테이블, 학생동아리 테이블을 이용하여
-- 서울 지역에 사는 사람이 선택한 동아리명은? 봉사
select s.stdName ,c.clubName
from stdtbl s
	inner join stdclubtbl sc
    on s.stdName = sc.stdName
    inner join clubtbl c
    on sc.clubName = c.clubName
where s.addr = '서울';

-- 5 요구사항 동아리방 101호와 102호를 사용하는 사람들의 이름을 구하기
-- 답 : 101호 null, 102호 김범수 / null은 출력되지않는다.
select s.stdName, c.roomNO
from stdtbl s
	inner join stdclubtbl sc
    on s.stdName = sc.stdName
    inner join clubtbl c
    on sc.clubName = c.clubName
where c.roomNo in ('101호', '102호') ;

-- outer join
-- 조인에 만족하지 않는 행까지 포함하기 null까지 포함하기
select *
from stdtbl s
	left outer join stdclubtbl sc
    on s.stdName = sc.stdName ;
    
select *
from stdclubtbl sc
	right outer join clubtbl c
    on sc.clubName = c.clubName ;
    
select *
from stdtbl s
	left outer join stdclubtbl sc
    on  s.stdName = sc.stdName 
    left outer join clubtbl c
    on sc.clubName = c.clubName;
    
select *
    
from stdtbl s
	left outer join stdclubtbl sc
    on  s.stdName = sc.stdName 
    left outer join clubtbl c
    on sc.clubName = c.clubName
union
select *

from stdtbl s
	left outer join stdclubtbl sc
    on  s.stdName = sc.stdName 
    right outer join clubtbl c
    on sc.clubName = c.clubName;
    
-- 4 요구사항 학생테이블, 동아리테이블, 학생동아리 테이블을 이용하여
-- 서울 지역에 사는 사람이 선택한 동아리명은? 봉사
select s.stdName ,c.clubName
from stdtbl s
	left outer join stdclubtbl sc
    on s.stdName = sc.stdName
    left outer join clubtbl c
    on sc.clubName = c.clubName
where s.addr = '서울';

-- 5 요구사항 동아리방 101호와 102호를 사용하는 사람들의 이름을 구하기
-- 답 : 101호 null, 102호 김범수 / null은 출력되지않는다.
select s.stdName, c.roomNO
from stdtbl s
	right outer join stdclubtbl sc
    on s.stdName = sc.stdName
    right outer join clubtbl c
    on sc.clubName = c.clubName
where c.roomNo in ('101호', '102호') ;

-- cross join 비강추
select * from stdtbl s,stdclubtbl sc,clubtbl c
	where s.stdName = sc.stdName and sc.clubName = c.clubName;

select * from stdtbl s
	cross join stdclubtbl sc;
    
-- self join
drop table emptbl;

USE sqldb;
CREATE TABLE empTbl (emp CHAR(3), manager CHAR(3), empTel VARCHAR(8));

INSERT INTO empTbl VALUES('나사장',NULL,'0000');
INSERT INTO empTbl VALUES('김재무','나사장','2222');
INSERT INTO empTbl VALUES('김부장','김재무','2222-1');
INSERT INTO empTbl VALUES('이부장','김재무','2222-2');
INSERT INTO empTbl VALUES('우대리','이부장','2222-2-1');
INSERT INTO empTbl VALUES('지사원','이부장','2222-2-2');
INSERT INTO empTbl VALUES('이영업','나사장','1111');
INSERT INTO empTbl VALUES('한과장','이영업','1111-1');
INSERT INTO empTbl VALUES('최정보','나사장','3333');
INSERT INTO empTbl VALUES('윤차장','최정보','3333-1');
INSERT INTO empTbl VALUES('이주임','윤차장','3333-1-1');

use sqldb;
select * from emptbl;

-- 우대리 상관의 연락처
select *
 from emptbl e
	inner join emptbl e1
    on e.manager = e1.emp
where e.emp = '우대리';

-- 이주임 매니저의 매니저는?
select e1.manager
 from emptbl e
	inner join emptbl e1
    on e.manager = e1.emp
where e.emp = '이주임';

-- 이주임 매니저의 매니저의 전화번호
select e2.emptel
from emptbl e
	inner join emptbl e1
	on e.manager = e1.emp
    inner join emptbl e2
    on e1.manager = e2.emp
where e.emp = '이주임';