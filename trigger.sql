 -- 고객테이블 고객등급 열을 하나 추가하기 등급 넣기 
use sqldb;
select * from usertbl ;


select * from buytbl order by userid;

drop procedure gP;

delimiter $$
 create procedure  gP()
 begin
   -- 변수 선언 6줄~10줄까지
   declare id varchar(10) ; -- 사용자 id 'BBK'
   declare hap bigInt ; -- 총구매합 1920
   declare userGrade varchar(20) ; -- 등급 '최우수고객' 
   declare endOfRow boolean default False ; 
   -- 커서 선언  
   declare userCursor cursor for 
      select  u.userid, sum( b.price * b.amount ) 
      from  buytbl b
         right outer join  usertbl u
         on b.userid = u.userid
      group by u.userid, u.name ;   
         
   -- 반복 조건  
   declare continue handler
       for not found set endOfRow = TRUE;
       
   -- 커서 열기
   open userCursor ;
   -- 반복문
   grade_loop : Loop 
      fetch  userCursor into id, hap ; 
      if endOfRow  then
          leave grade_loop;
      end if; 
      
      case 
        when ( hap >= 1500 ) then set userGrade = '최우수고객' ; 
        when ( hap >= 1000 ) then set userGrade = '우수고객' ; 
        when ( hap >= 1 ) then set userGrade = '일반고객' ; 
        else set userGrade = '잠재고객' ; 
      end case ;
    
      update usertbl set r1 = userGrade where userId = id; 
      
   end Loop  grade_loop ;
   
   -- 커서 닫기
   close userCursor ;
 end $$
delimiter ;

call gP();


select * from usertbl;

alter table usertbl
  add column r1 varchar(20) ; 
 
 drop trigger if exists usertbl_beforeInserttrg;
  delimiter //
  create trigger ubi
       before insert
       on usertbl
       for each row
   begin
      if new.birthYear < 1900 then
        set new.birthYear = 0;
     elseif new.birthYear > year(curdate()) then
       set new.birthYear = year(curdate());
     end if ;
    end //
    delimiter ;
insert into usertbl values ('DDD','디디디',1877,'서울','011','11111111',181,'2019-12-25','잠재고객');  
insert into usertbl values ('EEE','이이이',2877,'서울','011','11111111',181,'2019-12-25','잠재고객');  
select * from usertbl;

-- 주소가 ' 평양' 입력되면 '긴찹'
-- 전화번호가 '999' 입력하면 '010' 바꿔서 입력
delimiter //
  create trigger ubi2
       before insert
       on usertbl
       for each row
   begin
      if new.addr ='평양' then
        set new.addr = '외국';
     elseif new.mobile1 = '999' then
       set new.mobile1 = '010';
     end if ;
    end //
    delimiter ;
insert into usertbl values ('FFF','에프에',1877,'평양','011','11111111',181,'2019-12-25','잠재고객');  
insert into usertbl values ('GGG','지지지',2877,'서울','999','11111111',181,'2019-12-25','잠재고객');  
select * from usertbl;

drop database if exists triggerDB ;
create database if not exists triggerDB ;

use triggerDB ;



create table ordertbl (
	orderNo int auto_increment primary key,
    userid varchar(5),
    prodName varchar(5),
    orderamount int);
create table prodtbl (
    prodName varchar(5),
    account int);
    -- 배송테이블
create table deliverTbl
  ( deliverNo int auto_increment primary key,
  prodName varchar(5),
  account int );
-- 물품테이블에 물건을 삽입하기
insert into prodTbl values ('사과',100);
insert into prodTbl values ('배',100);
insert into prodTbl values ('귤',100);

select * from prodTbl;

drop trigger ordertg;

delimiter //
create trigger orderTg
  after insert
  on orderTbl
  for each row
begin
  update prodTbl set account = account - new.orderamount where prodName = nem.prodName ;
end //
delimiter ;

drop trigger prodtg;
-- 요구사항 물품테이블이 업데이트 뒨 후에 배송테이블에 삽입하기
delimiter //
  create trigger prodTg
  after update 
  on  prodtbl
  for each row
begin
  declare orderAmonut int;
  set orderAmonut = old.account - new.account ; -- 100-95=5 account
  insert into delivertbl values ( null, new.prodName, orderAmonut) ;
end //
delimiter ;

select * from ordertbl;
desc ordertbl;
insert into ordertbl values (null,'BBK','사과',5) ;

show triggers ;


