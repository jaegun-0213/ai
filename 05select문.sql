use sqldb;
select * from usertbl;
select * from buytbl;

select * from usertbl where userid in ('BBK', 'JKW');
select * from usertbl where name like '김%';
-- 김경호의 키보다 큰 사람은?
-- 1단계
select height from usertbl where name = '김경호';
-- 2단계
select * from usertbl where height >= 177;
-- 동시 작성
select * from usertbl where height >= (select height from usertbl where name = '김경호');

-- 은지원씨보다 나이가 어린 사람은?
select * from usertbl where birthYear > (select birthYear from usertbl where name = '은지원');

select distinct prodName from buytbl;
select userID,prodName,groupName from buytbl where groupName = (select groupName from buytbl where prodName= '노트북' );

-- 김범수씨가 산 물건은?
select prodName,userId from buytbl where userId = (select userId from usertbl where name ='김범수'); 

-- 서울인사람만 구하기
select * from usertbl where addr = '서울';
-- 서울에 사는 사람의 키보다 작은 키를 가진 사람
-- any (또는) 최소값보다 큰 것
-- all (and)
-- some
select * from usertbl where height <= any (select height from usertbl where addr = '서울');
select * from usertbl where height <= all (select height from usertbl where addr = '서울');
select * from usertbl where height <= some (select height from usertbl where addr = '서울');

-- 운동화를 산 사람의 이름은?
select name from usertbl where userID = any (select userID from buytbl where prodName = '운동화');

-- 키가 제일 큰사람 3명
select * from usertbl order by height desc limit 3;

-- 나이가 제일 많은 사람 5명
select * from usertbl order by birthYear limit 5;

-- 테이블 만들기 구조가 usertbl 동일안 테이블 만들고 싶다
create table usertbl2 (select * from usertbl);
select * from usertbl2;

-- 테이블 만들기 서울에 있는 사람
create table usertblSeoul1 (select * from usertbl where addr = '서울');
select * from usertblseoul1;

-- 키가 175~180 사이인 사람만 userid,name, heigth 열만 테이블 만들기
create table usertblkey (select userId, name, height from usertbl where height between 175 and 180);
select*from usertblkey;

-- group by 절
select userID, sum(amount),avg(amount),max(amount),count(amount),std(amount),var_samp(amount) from buytbl group by userID ;

-- 총금액이 300원 이상인 사람의 사용자명과 총구매액 구하기
 select userId, sum(price) from buytbl group by userID having sum(price) >= 300;
 
 -- 경품 대상인 사람을 테이블로 만들기, userid, mobile1,mobile2, addr
 create table eventTbl (select userid, mobile1,mobile2, addr from usertbl 
 where userid = any (select userId from buytbl group by userID having sum(price) >= 300)
 );
 
 select * from eventTbl;
 
 select groupName, sum(amount),sum(price) from buytbl group by groupName;
 
 -- 테이블 가장 높은 그룹a
 -- 1단계 '전자'
 select groupName from buytbl group by groupName having max(price) >= (select max(price) from buytbl1);
 
 -- 2단계
create table if not exists maxGroupTbl 
   ( select groupName, prodName, amount, price from buytbl 
    where groupName = ( select  groupName 
                     from buytbl group by groupName
                             having max(price) >= ( select max(price) from buytbl)
                       )
    );
    
    -- with rollup 중간합계
    -- 소합계구하기
    select num, groupName, sum(price) from buytbl group by groupName, num with rollup;
	select * from buytbl order by groupName;
    
    -- 게시판에서 게시글 번호 경우에 자동 번호가 넘버링
    -- 학번 부여 자동부여 되게 하고싶다alter
    -- auto_increment int형이고 primary key / unique 이용
    create table if not exists testTbl2
    (id int auto_increment primary key, 
    userName char(3),
    age int);
    
    insert into testTbl2 values(null, '지민' , 25);
	insert into testTbl2 (userName, age) values ('유나', 22);
	insert into testTbl2 (userName, age) values ('유경', 22);
    select * from testTbl2 ;
    
    alter table testTbl2 auto_increment = 100;
    insert into testTbl2 (userName, age) values ('지수', 25);
    
    drop table testTbl2;
    -- 학번 240101
create table if not exists testTbl2
    (id int auto_increment primary key, 
    userName char(3),
    age int);
    
    alter table testTbl2 auto_increment = 240101;
    insert into testTbl2 (userName, age) values ('유경2', 22);
    
    
    select * from testTbl2 ;
    
    -- 증가치를 1씩아니라 3개씩 증가되게 만들기
    set @@auto_increment_increment =3;
    insert into testTbl2 (userName, age) values ('유경5', 22);
	insert into testTbl2 (userName, age) values ('유경6', 22);
    
    create table testTbl4 (id int, fname varchar(50), iname varchar(50) );
    
    use employees;
    select *from employees.employees;
			 -- 데이터베이스명.테이블명
    use sqldb;
    
    select * from employees;
    insert into employees values (1003, '05/01/01', '정', '현희', 'F',  '20/10/05');
	insert into employees values (1004, '05/01/01', '박', '현희', 'M',  '20/10/05');
	insert into employees values (1005, '05/01/01', '이', '현희', 'F',  '20/10/05');
	insert into employees values (1006, '05/01/01', '김', '현희', 'M',  '20/10/05');

use sqldb;
create table testTbl4 (id int, fname varchar(50), iname varchar(50) );

select emp_no,birth_date, last_name from employees.employees;
insert into testTbl4
	select emp_no,birth_date, last_name from employees.employees;
    
select * from testTbl4;

select * from buytbl order by price desc;

create table copyTbl
(select * from buyTbl);

select * from copyTbl order by price desc limit 3;

-- 가격 상위 3개 삭제하기
delete from copyTbl order by price desc limit 3;

select * from copyTbl;

-- 수량 하위 2개 삭제하기
 delete from copyTbl order by amount limit 2;
 
 select * from copyTbl where prodName = '운동화';
 
 update copyTbl set price = 60 where num = 1;