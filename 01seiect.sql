SELECT*from emp;
SELECT*from student;
SELECT*FROM dept;
SELECT dname from dept;
SELECT*FROM salgrade;

SELECT empno, ename,sal,job from emp;

/*������ �ּ�*/
-- ���� �ּ�
-- stu_id, stu_name, sex �÷��� �˻��ϱ�, ��ҹ��� ���� ����
SELECT stu_id, stu_name, sex from student;

-- ��������� ���� �÷�(��)�� �� �� �ִ�.
SELECT empno, ename,sal,sal*12,job from emp;

-- �÷��� [as] ��Ī (as�� ��������)
SELECT empno as �����ȣ, ename  as �����,sal as �޿�,sal*12 as ����, sal*12*0.33 as ������, job as ���� from emp;
SELECT empno �����ȣ, ename   �����,sal  �޿�,sal*12  ����, sal*12*0.33 ������, job  ���� from emp;

SELECT*FROM salgrade;

-- ��������� hisal 1000���� ���ϱ� losal+1500
SELECT grade, hisal, hisal+1000, losal, losal+1500 FROM salgrade;

-- ��Ī ���̱� = ���, �����ݾ�, �λ������ݾ�, �ִ�ݾ�, �λ��ִ�ݾ�
SELECT grade ���, hisal �����ݾ�, hisal+1000 �λ������ݾ�, losal �ִ�ݾ�, losal+1500 �λ��ִ�ݾ� FROM salgrade;

-- null�̶�? 0,������� �ƴ� ��Ȯ�� �˼����� �ǹ�, ������� �����𸣴� ������ �� �� ����
SELECT*FROM emp;

-- comm ���ʽ��� 100������ �����ϰڴ� / " �� �� �� "
SELECT comm, comm+100 FROM emp; -- null �÷��� ������ ���� �ʰ� null�� ��Ÿ����
SELECT comm, nvl(comm,0) +100 "�� �� ��" from emp; -- nvl(comm,0) null�̸� 0���� �ƴϸ� comm ������

-- ���ڿ� ���� || '  ' ||
SELECT ename || '�� ������' || job || '�Դϴ�' ���� FROM emp;

SELECT*FROM student;
-- �������� ���̴� 24���Դϴ�
SELECT stu_name ||'�� ���̴�' || age ||'�Դϴ�' ���� FROM student;

-- ��ü �ڽ��� �����Դϱ�? �ߺ� �����ϱ�
SELECT DISTINCT cou_id FROM student;

SELECT*FROM emp;
-- �μ��������� (�ߺ������ϱ�)
SELECT DISTINCT deptno FROM emp;

-- �μ����� 20�� ����� ����
SELECT * from emp WHERE deptno = 20;

-- job ����� ����
SELECT * FROM emp WHERE job = '���';

-- ����̰ų� �����̰ų�
SELECT * FROM emp WHERE job = '���' or job = '����';

-- �޿��� 400�̻��� �Ѵ� ����� ��ȣ,�̸�,�޿� ����
SELECT empno �����ȣ, ename �̸�, sal �޿� from emp where sal>=400;

-- sal 400�̻��̰� ������ ����� ����ȣ, �̸�, ����, �޿� ����
SELECT empno �����ȣ, ename �̸�,job ����, sal �޿� from emp where sal>=400 or job='����';

-- �Ի��� 2005/1/1 ������ �Ի��ѻ��
SELECT * FROM emp WHERE hiredate < '05/01/01';

-- �Ի��� 2005/1/1 ���Ŀ� �Ի��ѻ��
SELECT * from emp WHERE hiredate > '05/01/01';

-- �Ի��� 2006/01/01 ~ 2007/12/31 ���̿� �Ի��ѻ��
SELECT * from emp where '06/01/01' <= hiredate and hiredate <= '07/12/31';

-- �达 ���� ���� �����
select * from emp where ename like'��%'; -- like �����ϴ�

-- �̾��� �Ǵ� �־���
SELECT * FROM emp WHERE ename like '��%' or ename like'��%';

-- �̾� ���� �ƴѻ��
select * from emp where not ename like'��%'; -- like �����ϴ�

-- �̸��� �߰��۾��� '��'�λ��
select * from emp where ename like'%��%'; -- %�� ������ ����

-- in : ~�ȿ�
--job ����̰ų� �����̰ų� ������ ��� ����ϱ�
SELECT * FROM emp WHERE job = '���' or job = '����' or job = '����';
SELECT * FROM emp WHERE job in ('���','����','����');

-- �÷��� between ���ۼ� and ����  ���ۼ� ~ ��������
-- 300 <= sal <= 600 ������ ��� ����ϱ�
SELECT * FROM emp WHERE sal between 300 and 600; 

-- �Ի��� 2006/01/01 ~ 2007/12/31 ���̿� �Ի��ѻ��
SELECT * from emp where hiredate BETWEEN '06/01/01'  and '07/12/31';

-- ����
--mgr(������) �� 1010~1020���� ����ϱ�
SELECT * from emp where mgr BETWEEN 1010 and 1020;

-- comm�� null�λ�� ����ϱ� ( is )
SELECT * from emp WHERE comm is null;

-- �̸� ������������ ����ϱ�
SELECT * FROM emp ORDER by ename asc; -- asc(��������)�� ������ �� �ִ�

-- �޿� ������������ ����ϱ�
SELECT * FROM emp ORDER by sal desc; -- desc(��������)

-- �μ� ������������ ����ϱ�
SELECT * FROM emp ORDER by deptno;

-- �μ� �������� ���࿡ �����ϸ� empno(�����ȣ) ������� ����ϱ�
SELECT * FROM emp ORDER by deptno, empno;

--job ������������ ����ϱ�
SELECT * FROM emp ORDER by job desc;

-- �μ� �������� ���࿡ �����ϸ� (�޿�) �������� ������� ����ϱ�
SELECT * FROM emp ORDER by deptno, sal desc;

-- job�� �����̰ų� ������ ����� job������������ ����ϱ� / ���Ǿ��� ����
SELECT * FROM emp WHERE job in ('����','����') ORDER by job; 

-- deptno�� 10�̰ų� 30�� ����� mgr �������� deptno ������������
SELECT * FROM emp WHERE deptno in (10,30) ORDER by mgr, deptno;

--������ (�ߺ��� �� �ϳ��� ���
SELECT * FROM GROUP_STAR
UNION
SELECT * FROM SINGLE_STAR;

--������ (�ߺ��� �� ��� ���)
SELECT * FROM GROUP_STAR
UNION all
SELECT * FROM SINGLE_STAR;

--������
SELECT * FROM GROUP_STAR
INTERSECT
SELECT * FROM SINGLE_STAR;

--������ (�׷�Ȱ���� �ϰ� �ִ� ��Ÿ)
SELECT * FROM GROUP_STAR
MINUS
SELECT * FROM SINGLE_STAR;

--������ (�̱�Ȱ���� �ϰ� �ִ� ��Ÿ)
SELECT * FROM SINGLE_STAR
MINUS
SELECT * FROM GROUP_STAR;

--����

-- �޿��� 300������ ����� �����ȣ,����̸� , �޿��� ����ϱ�
SELECT empno �����ȣ, ename �̸�, sal �޿� FROM emp WHERE sal < 300;

-- �̸��� ����ȣ�� ����� �����ȣ ,�����, �޿��� ����ϱ�
SELECT empno �����ȣ,ename �����, sal �޿� FROM emp WHERE ename like '��%';

-- �޿��� 250�̰ų� 300�̰ų� 500�� ������� �����ȣ�� ������ �޿��� ����ϱ�
SELECT empno �����ȣ,ename �����, sal �޿� FROM emp WHERE sal in('250', '300', '500');

-- �޿��� 250��,300��,500�� �ƴ� ����� ����ϱ�
SELECT * FROM emp WHERE not sal in('250','300','500');

-- �̸��� ������ �����ϴ� ����� �̸��߿� �⸦ �����ϴ� ������ �����ȣ�� ����̸� ����ϱ�
SELECT empno �����ȣ,ename ����� FROM emp WHERE ename like '��%' or ename like '%%��';

-- ����ڰ� ���� ����� ����ϱ�
SELECT * FROM emp WHERE mgr is null;

-- �μ���ȣ�� ���� ������� ����ϵ� ���� �μ� ���� ����� ����� ��� �Ի����� ���� ������ ������� ����ϱ�
SELECT * FROM emp ORDER by deptno asc, hiredate asc;