create table card( 
    CardNumber NUMBER(10) not null primary key,
    AccountNumber number(12)not null,
    CardKind VARCHAR2(8),
    Applicationdate date,
    Limitamount number(15),
    Paymentdate date
    
); 

insert into card values(
    1001,556677,'비자',sysdate,5000,'2023/01/27'
);

insert into card values(
    1002,556677,'비자',sysdate,5000,'2023/01/27'
);

insert into card values(
    1003,556679,'master',sysdate,10000,'2023/01/20'
);

insert into card values(
    1004,556680,'check',sysdate,null,null
);

insert into card values(
    1005,556681,'check',sysdate,null,null
);

SELECT * FROM card;

commit;
-- 교재121 고객테이블, 구매테이블 구현
create table uesrTab(
    userName varchar2(10) not null primary key,
    birthyear date not null,
    addr varchar2(20) not null,
    mobile VARCHAR2(15)
);

drop table userTb; -- 테이블 삭제하기
drop table buyTab;

drop table userTb;

CREATE TABLE buyTab(
    userName varchar2(10) not null primary key,
    prodName date not null,
    price number(10) not null,
    amount number(5) not null,
    constraint userName_fk foreign key(userName) references userTab(userName)
);

insert into userTb values('이승기','87/12/10','서울','011-111-1111');


--

-- 교재121 고객테이블, 구매테이블 구현
create table uesr1(
    userName varchar2(10) not null primary key,
    birthyear date not null,
    addr varchar2(20) not null,
    mobile VARCHAR2(15)
);

drop table user1; -- 테이블 삭제하기
drop table buy1;


CREATE TABLE buy1(
    userName varchar2(10) not null primary key,
    prodName date not null,
    price number(10) not null,
    amount number(5) not null,
    CONSTRAINT userName_fk FOREIGN key (userName)REFERENCES user1(userName)
);

insert into user1 values('이승기','87/12/10','서울','011-111-1111');
insert into user1 values('김경호','71/12/10','전남','011-111-1111');

insert into buy1 values('이승기','운동화',1000,1);
insert into buy1 values('김경호','노트북',10000,2);
-- 에러insert into buy1 values('홍길동','노트북',10000,2);


-- 은행 부모 ,mastee
CREATE TABLE bank (
    bankName VARCHAR2(20) not null primary key,
    jijum VARCHAR2(20) not null);
    
INSERT into bank VALUES('국민','강동');
INSERT into bank VALUES('신한','강남');
INSERT into bank VALUES('우리','송파');

select * from bank;
-- 예금계좌 테이블 자식,서브,종
CREATE TABLE deAcc(
    bankName VARCHAR2(20) not null primary key, -- 조건 : 부모키와 동일한 자료형과 이름을 가져야한다.
    acckind VARCHAR2(20),
    CONSTRAINT bankName_fk FOREIGN key (bankName) REFERENCES bank(bankName)
);

INSERT into deAcc VALUES('우리','일반계좌');
INSERT into deAcc VALUES('신한','대출계좌');
INSERT into deAcc VALUES('국민','증권계좌');

-- 고객 테이블 부모
CREATE TABLE custom (
    cardNumber number(10) not null  PRIMARY key,
    cName VARCHAR2(20)
);

drop TABLE custom;
drop TABLE cardTbl;
-- 카드 테이블 자식
CREATE TABLE cardTbl (
    cardNumber number(10) not null  PRIMARY key,
    limitPrice number(10),
    CONSTRAINT cardNumber_fk FOREIGN key(cardNumber) references custom(cardNumber)
);

INSERT into custom VALUES (1234,'홍길동');
INSERT into custom VALUES (1235,'이순신');
INSERT into custom VALUES (1236,'김명자');

SELECT * FROM custom;

INSERT into cardTbl VALUES(1236,9000);
INSERT into cardTbl VALUES(1234,3000);
--에러 INSERT into cardTbl VALUES(1240,9000)