-- 테이블 만들기
-- CREATE TABLE 테이블명( 컬럼명  자료형 제약조건);
CREATE TABLE dept_mission(
    dno number(2),
    dname VARCHAR2(14), -- 가변형 문자형으로 실제자리수만큼 바이트를 잡는다
    loc VARCHAR2(13));
    
CREATE TABLE emp_mission (
    eno number(4), --정수형 4자리
    ename VARCHAR2(10),
    dno number(2) );

CREATE TABLE emp01(
    empno NUMBER(4),
    ename VARCHAR2(14),
    sal NUMBER(7,3) ); -- 숫자 7자리 소숫점 3자리
    
-- 테이블 구조 변경하기
-- 구조를 바꾸면 테이블 자료가 삭제된다
ALTER TABLE emp01
    add( birth DATE);

ALTER TABLE emp_mission
    add ( deptno NUMBER(4), addr VARCHAR2(20) );

--테이블 고치기
ALTER TABLE emp01
    MODIFY(ename VARCHAR2(14) );
    
ALTER TABLE emp_mission
    MODIFY(ename VARCHAR2(25) );

-- 테이블 지우기
ALTER TABLE emp01
    drop column birth;

ALTER TABLE emp_mission
    DROP column deptno;
    
ALTER TABLE emp_mission
    DROP column addr;
    
-- 테이블의 구조보기
desc emp01;
desc emp_mission;
desc emp_mi;

--테이블명의 이름 변경하기
rename emp_mission to emp_mi;

-- 테이블 삭제하기
drop TABLE emp_mi;

SELECT * FROM emp;

-- emp의 검색결과(sel)로 나오는 것을 테이블로 만들기
CREATE TABLE emp_copy
as
SELECT * FROM emp

desc emp;
desc emp_copy;

-- emp_copy 테이블의 comm 컬럼 삭제하기
ALTER TABLE emp_copy
    DROP column comm; 

-- emp_copy 테이블의 hiredate 컬럼의 이름을 hire로 바꾸기
ALTER TABLE emp_copy
    rename column hiredate to hire;
    
SELECT * FROM emp_copy;

-- 모든 테이블 제거하기
delete FROM emp_copy;
TRUNCATE TABLE emp_copy;

----------------
-- 딕셔너리 : 테이터베이스 서버에서 제공해 주는 테이블
-- 딕셔너리는 수정은 안되고 읽기만 가능하다.
-- 용도 : 해당 데이터베이스를 관리할 때 주로 사용함
-- 데이터베이스안에 테이블의 목록들을 모두 본다
SELECT * FROM user_tables;
SELECT * FROM user_views;
SELECT * FROM user_indexes;

SELECT * FROM all_tables;
SELECT * FROM all_tables WHERE table_name ='EMP';

SELECT * FROM dba_tables; -- 데이터베이스 관리자는 오라클에서 이름이 지정되어 있음 sys(장치관리자-하드웨어, 논리적장치 - 소프트웨어)
                          -- system 논리적 장치관리함 - 소프트웨어
                          -- 필요에 따라서 사용자 만들어 쓸 수 있다.
                          

-- dbl문 insert,update,delete문 레코드 삽입, 수정, 삭제하기
SELECT * FROM emp01;

CREATE TABLE emp01(
    empno NUMBER(4),
    ename VARCHAR2(14),
    sal NUMBER(7,3) );

-- 레코드 삽입하기
-- 형식 insert into 테이블명 (컬럼명1, 컬럼명2) values (값1, 값2) []= 생략
-- 전체행에 다 넣는다
INSERT into emp01 VALUES(1000, '홍길동', 123.5); -- 컬럼명을 생략하면 구조 순서대로 va값을 넣는다

-- 행에 특정 열만 넣는다
INSERT into emp01(ename, empno, sal)VALUES('이순신',1001,256.7);

-- 번호, 이름만 넣기
INSERT into emp01 (empno,ename) VALUES (1002, '김수민');
INSERT into emp01 (sal) VALUES (100);
SELECT * FROM emp01;

-- 이름 공백으로 넣기
INSERT into emp01 (empno,ename,sal) VALUES (1004,' ',50);

desc emp01;

-- 입사일 컬럼 추가하기
ALTER TABLE emp01
    add hire date;
    
-- 박수미, 1010,80,23/01/09
INSERT into emp01 (ename, empno, sal, hire) VALUES ('박수미', 1010, 80,'23/01/09');
-- 1011,최경수,0,24/01/08
INSERT into emp01 (empno,ename, sal, hire) VALUES ( 1011,'최경수', 0, sysdate);

-- 수정하기
--UPDATE 테이블명 set 컬럼명 = 새로운 값 where = 조건절
-- 홍길동 급여를 200으로 바꾸기
UPDATE emp01 set sal = 200 WHERE ename = '홍길동';

--번호가 1004의 이름을 이진수로 바꾸기
UPDATE emp01 set ename = '이진수' WHERE empno = 1004;

-- 번호가 1010사람의 급여를 현재급여에 100 더하기, 입사일을 22년 10월 25일로 바꾸기
UPDATE emp01 set sal = sal + 100, hire ='22/10/25' WHERE empno =1010;

-- 모든 사람의 급여를 200만원씩 인상
UPDATE emp01 set sal = sal+200; -- null 경우는 포함이 되지않는다
UPDATE emp01 set sal = nvl(sal+200,200);

-- 급여가 500이 넘는사람은 삭제학
DELETE FROM emp01 WHERE sal >= 500;
SELECT * FROM emp01;

-- 트랜잭션
DELETE FROM emp01;
rollback;
SELECT * FROM emp01;
commit;
UPDATE emp01 set sal = nvl(sal+200, 200);

-- 모든 사람의 입사일을 오늘 날짜로 수정하기
UPDATE emp01 set hire = sysdate; 
ROLLBACK; -- 방금전에한 업데이트가 취소
SELECT * FROM emp01;
commit; -- 트랜잭션에 만들어진 dml(..)가 확정

-- 제약조건
SELECT * FROM dept;
--INSERT into dept VALUES(10, 'test','test'); 10은 pk로 구조를 만들어서 유일(unique)하여야 하므로 오류가 남
--INSERT into dept VALUES (null, 'test','test'); null은 pk로 구조를 만들어 null이아니어야(not null) 하므로 오류가 남

CREATE TABLE pTab(
    code NUMBER(4) PRIMARY key,
    name VARCHAR2(14)
);

SELECT * FROM user_constraints WHERE table_name = 'PTAB'; -- ptab의 제약조건을 보기

-- 네임이라는 컬럼에 제약조건을 not null로 고치기
ALTER TABLE pTab
    modify (name varchar2(14) not null);
    
--데이터 삽입하기
INSERT into pTab ( code, name) VALUES (1010,'a');
--INSERT into pTab ( code, name) VALUES (1010,'b'); 1010때문에 에러 발생
--INSERT into pTab ( code, name) VALUES (1011,'null'); null때문에 에러 발생

-- id컬럼 추가하기
ALTER TABLE pTab
    add id VARCHAR2(10);
desc pTab;

-- id 컬럼에 제약조건은 유니큐로 만들기
ALTER TABLE pTab
    MODIFY id VARCHAR2(10) UNIQUE;
    
SELECT * FROM user_constraints WHERE table_name = 'PTAB';

INSERT into pTab(code, name, id) VALUES (1012, 'c', 'a100');
--INSERT into pTab(code, name, id) VALUES (1013, 'd', 'a100'); a100 유일키때문에 에러가 난다.