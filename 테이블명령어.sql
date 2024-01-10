-- ���̺� �����
-- CREATE TABLE ���̺��( �÷���  �ڷ��� ��������);
CREATE TABLE dept_mission(
    dno number(2),
    dname VARCHAR2(14), -- ������ ���������� �����ڸ�����ŭ ����Ʈ�� ��´�
    loc VARCHAR2(13));
    
CREATE TABLE emp_mission (
    eno number(4), --������ 4�ڸ�
    ename VARCHAR2(10),
    dno number(2) );

CREATE TABLE emp01(
    empno NUMBER(4),
    ename VARCHAR2(14),
    sal NUMBER(7,3) ); -- ���� 7�ڸ� �Ҽ��� 3�ڸ�
    
-- ���̺� ���� �����ϱ�
-- ������ �ٲٸ� ���̺� �ڷᰡ �����ȴ�
ALTER TABLE emp01
    add( birth DATE);

ALTER TABLE emp_mission
    add ( deptno NUMBER(4), addr VARCHAR2(20) );

--���̺� ��ġ��
ALTER TABLE emp01
    MODIFY(ename VARCHAR2(14) );
    
ALTER TABLE emp_mission
    MODIFY(ename VARCHAR2(25) );

-- ���̺� �����
ALTER TABLE emp01
    drop column birth;

ALTER TABLE emp_mission
    DROP column deptno;
    
ALTER TABLE emp_mission
    DROP column addr;
    
-- ���̺��� ��������
desc emp01;
desc emp_mission;
desc emp_mi;

--���̺���� �̸� �����ϱ�
rename emp_mission to emp_mi;

-- ���̺� �����ϱ�
drop TABLE emp_mi;

SELECT * FROM emp;

-- emp�� �˻����(sel)�� ������ ���� ���̺�� �����
CREATE TABLE emp_copy
as
SELECT * FROM emp

desc emp;
desc emp_copy;

-- emp_copy ���̺��� comm �÷� �����ϱ�
ALTER TABLE emp_copy
    DROP column comm; 

-- emp_copy ���̺��� hiredate �÷��� �̸��� hire�� �ٲٱ�
ALTER TABLE emp_copy
    rename column hiredate to hire;
    
SELECT * FROM emp_copy;

-- ��� ���̺� �����ϱ�
delete FROM emp_copy;
TRUNCATE TABLE emp_copy;

----------------
-- ��ųʸ� : �����ͺ��̽� �������� ������ �ִ� ���̺�
-- ��ųʸ��� ������ �ȵǰ� �б⸸ �����ϴ�.
-- �뵵 : �ش� �����ͺ��̽��� ������ �� �ַ� �����
-- �����ͺ��̽��ȿ� ���̺��� ��ϵ��� ��� ����
SELECT * FROM user_tables;
SELECT * FROM user_views;
SELECT * FROM user_indexes;

SELECT * FROM all_tables;
SELECT * FROM all_tables WHERE table_name ='EMP';

SELECT * FROM dba_tables; -- �����ͺ��̽� �����ڴ� ����Ŭ���� �̸��� �����Ǿ� ���� sys(��ġ������-�ϵ����, ������ġ - ����Ʈ����)
                          -- system ���� ��ġ������ - ����Ʈ����
                          -- �ʿ信 ���� ����� ����� �� �� �ִ�.
                          

-- dbl�� insert,update,delete�� ���ڵ� ����, ����, �����ϱ�
SELECT * FROM emp01;

CREATE TABLE emp01(
    empno NUMBER(4),
    ename VARCHAR2(14),
    sal NUMBER(7,3) );

-- ���ڵ� �����ϱ�
-- ���� insert into ���̺�� (�÷���1, �÷���2) values (��1, ��2) []= ����
-- ��ü�࿡ �� �ִ´�
INSERT into emp01 VALUES(1000, 'ȫ�浿', 123.5); -- �÷����� �����ϸ� ���� ������� va���� �ִ´�

-- �࿡ Ư�� ���� �ִ´�
INSERT into emp01(ename, empno, sal)VALUES('�̼���',1001,256.7);

-- ��ȣ, �̸��� �ֱ�
INSERT into emp01 (empno,ename) VALUES (1002, '�����');
INSERT into emp01 (sal) VALUES (100);
SELECT * FROM emp01;

-- �̸� �������� �ֱ�
INSERT into emp01 (empno,ename,sal) VALUES (1004,' ',50);

desc emp01;

-- �Ի��� �÷� �߰��ϱ�
ALTER TABLE emp01
    add hire date;
    
-- �ڼ���, 1010,80,23/01/09
INSERT into emp01 (ename, empno, sal, hire) VALUES ('�ڼ���', 1010, 80,'23/01/09');
-- 1011,�ְ��,0,24/01/08
INSERT into emp01 (empno,ename, sal, hire) VALUES ( 1011,'�ְ��', 0, sysdate);

-- �����ϱ�
--UPDATE ���̺�� set �÷��� = ���ο� �� where = ������
-- ȫ�浿 �޿��� 200���� �ٲٱ�
UPDATE emp01 set sal = 200 WHERE ename = 'ȫ�浿';

--��ȣ�� 1004�� �̸��� �������� �ٲٱ�
UPDATE emp01 set ename = '������' WHERE empno = 1004;

-- ��ȣ�� 1010����� �޿��� ����޿��� 100 ���ϱ�, �Ի����� 22�� 10�� 25�Ϸ� �ٲٱ�
UPDATE emp01 set sal = sal + 100, hire ='22/10/25' WHERE empno =1010;

-- ��� ����� �޿��� 200������ �λ�
UPDATE emp01 set sal = sal+200; -- null ���� ������ �����ʴ´�
UPDATE emp01 set sal = nvl(sal+200,200);

-- �޿��� 500�� �Ѵ»���� ������
DELETE FROM emp01 WHERE sal >= 500;
SELECT * FROM emp01;

-- Ʈ�����
DELETE FROM emp01;
rollback;
SELECT * FROM emp01;
commit;
UPDATE emp01 set sal = nvl(sal+200, 200);

-- ��� ����� �Ի����� ���� ��¥�� �����ϱ�
UPDATE emp01 set hire = sysdate; 
ROLLBACK; -- ��������� ������Ʈ�� ���
SELECT * FROM emp01;
commit; -- Ʈ����ǿ� ������� dml(..)�� Ȯ��

-- ��������
SELECT * FROM dept;
--INSERT into dept VALUES(10, 'test','test'); 10�� pk�� ������ ���� ����(unique)�Ͽ��� �ϹǷ� ������ ��
--INSERT into dept VALUES (null, 'test','test'); null�� pk�� ������ ����� null�̾ƴϾ��(not null) �ϹǷ� ������ ��

CREATE TABLE pTab(
    code NUMBER(4) PRIMARY key,
    name VARCHAR2(14)
);

SELECT * FROM user_constraints WHERE table_name = 'PTAB'; -- ptab�� ���������� ����

-- �����̶�� �÷��� ���������� not null�� ��ġ��
ALTER TABLE pTab
    modify (name varchar2(14) not null);
    
--������ �����ϱ�
INSERT into pTab ( code, name) VALUES (1010,'a');
--INSERT into pTab ( code, name) VALUES (1010,'b'); 1010������ ���� �߻�
--INSERT into pTab ( code, name) VALUES (1011,'null'); null������ ���� �߻�

-- id�÷� �߰��ϱ�
ALTER TABLE pTab
    add id VARCHAR2(10);
desc pTab;

-- id �÷��� ���������� ����ť�� �����
ALTER TABLE pTab
    MODIFY id VARCHAR2(10) UNIQUE;
    
SELECT * FROM user_constraints WHERE table_name = 'PTAB';

INSERT into pTab(code, name, id) VALUES (1012, 'c', 'a100');
--INSERT into pTab(code, name, id) VALUES (1013, 'd', 'a100'); a100 ����Ű������ ������ ����.