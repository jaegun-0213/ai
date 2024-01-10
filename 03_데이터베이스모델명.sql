create table card( 
    CardNumber NUMBER(10) not null primary key,
    AccountNumber number(12)not null,
    CardKind VARCHAR2(8),
    Applicationdate date,
    Limitamount number(15),
    Paymentdate date
    
); 

insert into card values(
    1001,556677,'����',sysdate,5000,'2023/01/27'
);

insert into card values(
    1002,556677,'����',sysdate,5000,'2023/01/27'
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
-- ����121 �����̺�, �������̺� ����
create table uesrTab(
    userName varchar2(10) not null primary key,
    birthyear date not null,
    addr varchar2(20) not null,
    mobile VARCHAR2(15)
);

drop table userTb; -- ���̺� �����ϱ�
drop table buyTab;

drop table userTb;

CREATE TABLE buyTab(
    userName varchar2(10) not null primary key,
    prodName date not null,
    price number(10) not null,
    amount number(5) not null,
    constraint userName_fk foreign key(userName) references userTab(userName)
);

insert into userTb values('�̽±�','87/12/10','����','011-111-1111');


--

-- ����121 �����̺�, �������̺� ����
create table uesr1(
    userName varchar2(10) not null primary key,
    birthyear date not null,
    addr varchar2(20) not null,
    mobile VARCHAR2(15)
);

drop table user1; -- ���̺� �����ϱ�
drop table buy1;


CREATE TABLE buy1(
    userName varchar2(10) not null primary key,
    prodName date not null,
    price number(10) not null,
    amount number(5) not null,
    CONSTRAINT userName_fk FOREIGN key (userName)REFERENCES user1(userName)
);

insert into user1 values('�̽±�','87/12/10','����','011-111-1111');
insert into user1 values('���ȣ','71/12/10','����','011-111-1111');

insert into buy1 values('�̽±�','�ȭ',1000,1);
insert into buy1 values('���ȣ','��Ʈ��',10000,2);
-- ����insert into buy1 values('ȫ�浿','��Ʈ��',10000,2);


-- ���� �θ� ,mastee
CREATE TABLE bank (
    bankName VARCHAR2(20) not null primary key,
    jijum VARCHAR2(20) not null);
    
INSERT into bank VALUES('����','����');
INSERT into bank VALUES('����','����');
INSERT into bank VALUES('�츮','����');

select * from bank;
-- ���ݰ��� ���̺� �ڽ�,����,��
CREATE TABLE deAcc(
    bankName VARCHAR2(20) not null primary key, -- ���� : �θ�Ű�� ������ �ڷ����� �̸��� �������Ѵ�.
    acckind VARCHAR2(20),
    CONSTRAINT bankName_fk FOREIGN key (bankName) REFERENCES bank(bankName)
);

INSERT into deAcc VALUES('�츮','�Ϲݰ���');
INSERT into deAcc VALUES('����','�������');
INSERT into deAcc VALUES('����','���ǰ���');

-- �� ���̺� �θ�
CREATE TABLE custom (
    cardNumber number(10) not null  PRIMARY key,
    cName VARCHAR2(20)
);

drop TABLE custom;
drop TABLE cardTbl;
-- ī�� ���̺� �ڽ�
CREATE TABLE cardTbl (
    cardNumber number(10) not null  PRIMARY key,
    limitPrice number(10),
    CONSTRAINT cardNumber_fk FOREIGN key(cardNumber) references custom(cardNumber)
);

INSERT into custom VALUES (1234,'ȫ�浿');
INSERT into custom VALUES (1235,'�̼���');
INSERT into custom VALUES (1236,'�����');

SELECT * FROM custom;

INSERT into cardTbl VALUES(1236,9000);
INSERT into cardTbl VALUES(1234,3000);
--���� INSERT into cardTbl VALUES(1240,9000)