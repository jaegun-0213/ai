use sqldb;
select * from usertbl;
select * from buytbl;

select userID,name from usertbl
union all -- 중복된 것 모두 합치기
select userID,prodName from buytbl;

select userID,name from usertbl
union -- 중복된 것 제거하기
select userID,prodName from buytbl;

-- 요구사항 이름 전화번호로 주소록 만들기 단, 전화번호 없는사람 제외
select name from usertbl where mobile1 is null;

select name, mobile1,mobile2 from usertbl
 where mobile1 is not null;
 
 select name, mobile1,mobile2 from usertbl
 where name not in(select name from usertbl where mobile1 is null) ;
 
 -- sql 구문을 프로그래밍처럼 만들 수 있다.
 drop procedure if  exists ifProc;
 -- 스토어드 프로스저
 delimiter $$
 create procedure ifProc()
 begin
	declare var1 int;
    set var1 =100;
    if var1 =100 then
		select '100입니다';
	else
		select '아닙니다';
	end if;
 end $$
 delimiter ;
call ifProc();
call ifProc();

 drop procedure if  exists ifProc2;
 use employees;
 
 select * from employees;
 
  delimiter $$
 create procedure ifProc2()
 begin
	declare hiredate date; -- 변수선언 변수명 자료형
    declare curdate date;
    declare days int;
    
    select hire_date into hiredate from employees.employees
    where emp_no = 1001;
    
    set curdate = current_date();
    set days = datediff( curdate, hiredate);
    
    if (days/365) >= 5 then
		select concat('입사한지', days, '일이나 지났습니다. 축하합니다');
	else
		select concat('입사한지', days, '일밖에 안되었네요. 열심히 하세요');
	end if;
    
end $$
delimiter ;
call ifProc2();

-- 298
 drop procedure if  exists ifProc3;
 
delimiter $$
 create procedure ifProc3()
 begin
	declare point int ;
    declare credit char(1) ;
    set point = 77 ;
    
    if point >= 90 then
		set credit = 'A' ;
	elseif point >= 80 then
		set credit = 'B' ;
	elseif point >= 70 then
		set credit = 'C' ;
	elseif point >= 60 then
		set credit = 'D' ;
	else
		set credit = 'F' ;
	end if ;
    select concat('취득점수==>', point), concat('학점==>', credit) ;
 end $$
delimiter ;
call ifProc3();

use sqldb ;
-- 299
 drop procedure if  exists casePioc;
 delimiter $$
 create procedure casePioc()
 begin
	declare point int ;
    declare credit  char(1) ;
    set point = 77 ;
    
    case
		when point >= 90 then
			set credit = 'A';
		when point >= 80 then
			set credit = 'B';
		when point >= 70 then
			set credit = 'C';
		when point >= 60 then
			set credit = 'D';
		else
			set credit = 'F' ;
	end case ;
    select concat('취득점수==>', point), concat('학점==>', credit) ;
  end $$
delimiter ;
call casePioc();

use sqldb ;
-- view
select * from usertbl;
create view vuswe
as
select * from usertbl;

select * from vuser;

-- 뷰를 사용하는 이유 ? 1.보안 2. 복잡한 쿼리문 단수화 시키기

use sqldb;
create view v1
as
select u.userid as 'user id', u.name 'user name', b.prodName as 'product name'
	from usertbl u
	inner join buytbl b
	on u.userid = b.userid ;
    
select * from v1 ;

select `user id`, `user name`,`product name` from v1 
where `user id` = 'KBS' order by `product name` ; -- (``백틱)

-- 뷰를 수정하기
alter view v1
as
select
	u.name as 'name', u.addr 'addr', concat_ws('-',u.mobile1, u.mobile2) 'tel'
from usertbl u
inner join buytbl b
on u.userid = b.userid ;

select*from v1 ;

select `name`,`tel` from v1 ;

create or replace view v1 -- 뷰가 있으면 고치고 없으면 새로 만들기
as
select name, birthyear from usertbl where name = '김범수' ;

select * from v1 ;

-- 뷰 삽입하기
-- 유저테이블 복사하기
create table cusertbl
as
select * from usertbl ;
-- 뷰만들기
create or replace view v2
as
select userid, name, birthyear, addr, height from cusertbl ;
select * from v2 ;-- 뷰에 삽입이 된다
insert into  v2 values ('HGD','홍길동', 2020, '서울', 175);
select * from cusertbl ; -- 테이블 삽입된다
insert into cusertbl (userid,name,birthyear, addr)
	values('ADM', '관리자',2021,'인천') ;

-- 뷰 수정하기
select * from v2 ;
select * from cusertbl ;
update v2 set birthyear = 2019 where name = '홍길동' ;
delete from v2 where name ='관리자' ;
-- 뷰 삭제하기
drop view v2 ;

-- -------------------------
-- 테이블 스페이스 : 물리적 공간

-- 인덱스
-- 자료를 찾을 때 색인표을 붙여 두는 것
-- 목적 : 빠르게 검색하려고
-- B-tree

-- 장점 :  검색 속도가 빠르다.(항상 그런 것은 아니다), 시스텡의 성능이 향상된다
-- 단점 : 추가적인 공간이 필요해 진다. 대략 데이터베이스 전체 용량의 10%가 필요하다
-- 		처음 인덱스를 생성하는데있어

-- 스토어드 프로그램
-- 고급 SQL문 상위레벨

-- 종류 : 1. 스토어드 프로시저 2. 스토어드 함수 3.커서 4.트리거

/* 스토어드 프로시저 형식
delimiter $$
create procedure 이름( 입력 또는 출력 파라미터(매개변수))
begin
	내용
end $$
delimiter ;
call 이름 (실제값들)
*/
SHOW PROCEDURE STATUS where Db = 'sqldb';

 drop procedure if  exists p1;

delimiter $$
create procedure p1()
begin
	select sysdate();
end $$
delimiter ;
call p1();

 drop procedure if  exists p2;
-- 바비킴의 레코드 검색하기
delimiter $$
create procedure p2(in userName varchar(10) )
begin
	select * from usertbl where name = userName;
end $$
delimiter ;
call p2 ('바비킴') ;
use sqldb;
select * from usertbl ;

-- 생일 1973 이후 그리고, 키가 170 큰 사람
drop procedure p3;

delimiter $$
create procedure p3(in bir int, hei int  )
begin
	select * from usertbl where birthyear = bir and height >= hei;
end $$
delimiter ;
call p3 (1973,170) ;

create table testTbl 
(id int auto_increment primary key,
name char(10) ) ;
insert into testTbl values(null, '홍길동') ;


delimiter $$
create procedure p4(in inVar char(10),out outVar int  )
begin
	insert into testTbl values (null, inVar);
    select count(id) into outVar from testTbl;
end $$
delimiter ;
call p4 ('이순신',@countVar) ;


drop procedure p4;

-- 445

drop procedure ifelseProc;

delimiter $$
create procedure ifelseProc(  in userName varchar(10), out byear int  ) 
begin
 
  select birthYear into byear from userTbl where name = username ;
  if ( byear >= 1980 ) then 
     select '아직 젊군요 .. ' ;
  else 
     select concat(byear, '나이가 지긋하시네요 ') ;
  end if; 
end $$
delimiter ;

call ifelseProc( '조용필', @yearOut) ;
select @yearOut ; 