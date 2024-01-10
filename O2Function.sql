SELECT 24*60 ��� FROM dual; -- dual ����Ŭ���� �����ϴ� ���̺� �뵵 ����

SELECT sign(10) FROM dual;
SELECT ROund(3.456,2) FROM dual;
SELECT trunc(5354.45671, -2) FROM dual; -- � �Ҽ����ڸ����� ������ 2ĭ���� �޺κ� �ڸ���
SELECT trunc(5354.45671, 2) FROM dual; -- � �Ҽ����ڸ����� �ڷ� 2ĭ���� �޺κ� �ڸ���
SELECT mod(25,4) FROM dual; -- 25 ������ 4 ������

SELECT * FROM student;

SELECT upper(stu_email) FROM student;
SELECT lower(stu_email), initcap(stu_email), upper(stu_email) FROM student;

SELECT length('oracle'), length('����Ŭ')FROM dual;
SELECT lengthb('oracle'), lengthb('����Ŭ')FROM dual;

-- substr (���,������ġ, ������ ����)
SELECT substr('Weicome to Oracle', 9,2) FROM dual; -- ù��ġ�� 1������

-- �������� �̸��� �պκ� �����ϱ�
SELECT substr (stu_email, 1, 4) FROM student WHERE stu_email= '������';

-- stu_id�� 101~110���� ����� �̸��� �� �޺κ� �� com �����ϱ�
SELECT substr(stu_email, -3, 3)FROM student WHERE stu_id between 101 and 110; -- -3�� �ڿ������� 3��°

--instr(���, ã�¹���) ��󿡼� ã�� ������ ��ġ�� ���ڷ� ��ȯ�Ѵ�
SELECT instr('Weicome to Oracle','e') FROM dual; -- ���� �տ����� 'e'�� ã���ش�

--instr(���, ã�¹���,������ġ) ��󿡼� ã�� ������ ��ġ�� ���ڷ� ��ȯ�Ѵ�
SELECT instr('Weicome to Oracle','e',3) FROM dual; -- ������ġ���� 'e'�� ã���ش�

--instr(���, ã�¹���,������ġ,���°�߰�) ��󿡼� ã�� ������ ��ġ�� ���ڷ� ��ȯ�Ѵ�
SELECT instr('Weicome to Oracle','e',3,2) FROM dual; -- ������ġ���� 'e'�� ã�µ� 2��° �߰��� ��

SELECT * FROM student;

-- ����л��� �̸��� ����� �����ϱ�
SELECT instr (stu_email ,'@') FROM student;

--����л��� id ���ϱ�
SELECT substr (stu_email,1, instr (stu_email ,'@') -1 ) id FROM student;

-- LPAD
SELECT lpad('orcle',20,'#')FROM dual;
-- RPAD
SELECT rpad('orcle',20,'#')FROM dual;

SELECT lpad('orcle',20,'#')FROM dual;
SELECT rpad('orcle',20,'#')FROM dual;

SELECT * FROM emp;
SELECT lpad(job,10,' ') FROM emp;
SELECT rpad(job,10,' ') FROM emp;

-- ����ȯ�Լ�
-- ����ð��� �����ش�
SELECT sysdate FROM dual;

SELECT sysdate, to_char(sysdate, 'YYYY-MM-dd day am hh:mi:ss')from dual;
SELECT * FROM emp;
SELECT hiredate, to_char(hiredate, 'yyy-mm-dd dy')FROM emp;

SELECT to_char(12345678, '000,000,000') FROM dual; -- ������ 0���� ä���
SELECT to_char(12345678, '000,000') FROM dual; -- ���ڶ�� #���� ä���

SELECT to_char(12345678, '999,999,999') FROM dual; --   ����12,345,678
SELECT to_char(12345678, '999,999') FROM dual; -- ���ڶ�� #���� ä���

SELECT to_char(12345678, 'L999,999,999') FROM dual; -- ��ȭ��ȣ12,345,678

-- to_date() ��¥������ �ٲٱ� ***
-- ����Ŭ���� �⺻ ��¥���� 'mm/dd/yy'
-- to_date���� ('����','����') ���ڰ� �������� �ٲ� ��¥���� �ȴ�
-- to_date���� (����,'����') ���ڰ� �������� �ٲ� ��¥���� �ȴ�
SELECT * FROM emp;
--SELECT*FROM emp WHERE hiredate =20070402; �����߻�
SELECT*FROM emp WHERE hiredate =to_date (20070402, 'yyyymmdd');
SELECT*FROM emp WHERE hiredate =to_date ('20070402', 'yyyymmdd');

--���ó�¥-�۳���� ���ϱ�
SELECT trunc (sysdate -to_date( '20230213', 'yyyymmdd' ), 0)FROM dual;

select *FROM emp;
SELECT to_date('070321','yyyymmdd')-to_date('070310', 'yyymmdd') FROM dual;

-- to_number(',�� �ִ� ����','����')
SELECT to_number('20,000','99,999') - to_number('10,000','99,999') FROM dual;

SELECT '20000' - '10000' FROM dual;

-- ��¥�Լ�
SELECT sysdate +2 FROM dual;
--���� ���� ����
SELECT sysdate-1 ����, sysdate ����, sysdate +1 ���� FROM dual;

SELECT to_char(sysdate-1, 'yyyy-mm-dd day' )����, sysdate ����, sysdate +1 ���� FROM dual;

--months_between
SELECT months_between(sysdate, '2023/12/04') FROM dual;
SELECT add_months('2023/10/01',10)FROM dual;
SELECT round(to_date('20/07/17','yy/mm/dd'), 'year') FROM dual;

SELECT hiredate, trunc (hiredate,'months') from emp; --�Ի����� ���� ��� 01�Ϸ� ��ġ��

select *FROM emp;

-- �ٹ����,�ٹ��ϼ�
-- ���ó�¥ - �Ի��� ��� �޼�
SELECT ename �����, sysdate ������,hiredate �Ի���, trunc (months_between(sysdate, hiredate), 0) �ٹ��޼� FROM emp;

--���
SELECT ename �����, sysdate ������,hiredate �Ի���, trunc (months_between(sysdate, hiredate)/12, 0) �ٹ���� FROM emp;

-- ������� �Ի��� ���糯¥ �ټӳ� �ټӿ� �ټ���
SELECT ename �����, hiredate �Ի���, sysdate ���糯¥, trunc (months_between(sysdate, hiredate)/12, 0) �ٹ����,
    trunc (months_between(sysdate, hiredate), 0) �ٹ�����,
    trunc (months_between(sysdate, hiredate), 0)*30 �ٹ��ϼ�
FROM emp;

-- ���� ��¥�� �������� ���ʷ� �����ϴ� ������ ��¥��?
SELECT to_char (next_day(sysdate, '��'), 'yyyy/mm/dd')FROM dual;

SELECT last_day('24/01/01')FROM dual;

SELECT * FROM emp;
commit;

SELECT empno �����ȣ,last_day(sysdate) �޿��� FROM emp;

SELECT*from emp;
SELECT comm, nvl(comm ,0) FROM emp;

SELECT * FROM emp WHERE hiredate is null;

-- �Ի����� null�̸� ���ó�¥�� �־��ֱ�
SELECT hiredate, nvl(hiredate,sysdate)FROM emp WHERE hiredate is null;
SELECT hiredate, nvl(hiredate,sysdate)FROM emp;

-- �̸��� null �������� job null�̸� ���
SELECT empno, nvl(ename, '����'), nvl(job,'���') FROM emp;

SELECT*FROM emp;
SELECT ename �����, sal �޿�, nvl2(comm, sal*12+comm, sal*12) ���� FROM emp;

--�޿��� null�ڷ� �����ϱ�
INSERT into emp values(1019,null,'�븮',1003,sysdate,null,null,20);
INSERT into emp values(1020,null,'�븮',1003,sysdate,null,100,20);

SELECT comm, sal, coalesce(comm,sal,0)FROM emp;

SELECT * from emp;

SELECT deptno, decode(deptno,10, '�渮��', 20,'�λ��','�����') FROM emp;

SELECT*FROM student;
SELECT sex, decode(sex,'M','����','F','����')FROM student;

--�׷��Լ�
SELECT count(ename) FROM emp; --20�� �Է� 1�� ��� �׷��Լ�
SELECT (ename)FROM emp; -- 20�� �Է� ��� �������Լ�
SELECT sex, decode(sex,'M','����','F','����')FROM student;

SELECT sum(asl) FROM emp;
SELECT sum(asl), count(ename),avg(sal),max(sal),min(sal)FROM emp;

--���ʽ��� �޴� ����� ��
SELECT count(comm) FROM emp;

--��������
SELECT count(DISTINCT job) FROM emp;

SELECT*FROM emp ORDER by deptno;

--�� �μ����� ���� ���� �޿� ����ϱ�
SELECT deptno, max(sal) from emp group by deptno ORDER by deptno;

-- job���� ���� ���� �޿� ���
SELECT job, min(sal) FROM emp GROUP by job ORDER by job;

-- JOb���� �޿� ��� ����ϱ�

-- ����̰ų� �븮�̰ų� ������ �޿� �հ踦 ���ϱ�

-- 1�ܰ� ���,�븮,���� ���
SELECT*FROM emp WHERE job in ('���','�븮','����');
-- 2�ܰ� �׷����� �����ϱ�
SELECT job, round(avg(sal)) FROM emp WHERE job in ('���','�븮','����') GROUP by job;

-- �ִ� �޿��� 700�� �ʰ��ϴ� �μ��� ���ؼ� �ִ�޿��� �ּұ޿��� ���ϱ�
-- ��� 20 1000 300
SELECT deptno, max(sal) FROM emp GROUP by deptno;

SELECT deptno, max(sal) FROM emp GROUP by deptno having max(sal) > 700;

-- ���޺��� �޿��� ����� 500�̻��� ����,�޿� ����� ����ϱ�
-- 1�ܰ�
SELECT job , avg(sal) FROM emp GROUP by job;
-- 2�ܰ�
SELECT job , avg(sal) FROM emp GROUP by job having avg(sal) >= 500;
-- ��� �޿� ������������ ����ϱ�
SELECT job , avg(sal) FROM emp GROUP by job having avg(sal) >= 500 ORDER by avg(sal) asc ;

SELECT*FROM student;

-- �ִ볪�� ���ϱ�
SELECT max(age) FROM student;
-- �ּҳ��� ���ϱ�
SELECT min(age) FROM student;
-- ��ճ��� ���ϱ�
SELECT avg(age) FROM student;

--���� �ִ볪��, ���� �ִ볪��
SELECT sex ����, max(age) FROM student GROUP by sex;

--cou_id���� ��� ���� ���ϱ�
SELECT cou_id, round(avg(age) ) FROM student GROUP by cou_id;

-- ��ճ��� 25���̻� ���ϱ�
SELECT cou_id, round(avg(age) ) FROM student GROUP by cou_id having avg(age) >= 25;

-- ���ڸ� ���
SELECT*from student WHERE sex in ('M');

-- ������ ��쿡�� ��ճ��� 25���̻� ���ϱ�
SELECT round(avg(age)),cou_id FROM student WHERE sex in ('M') GROUP by cou_id having avg(age) >= 25 ORDER by avg(age);