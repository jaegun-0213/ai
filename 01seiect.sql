SELECT*from emp;
SELECT*from student;
SELECT*FROM dept;
SELECT dname from dept;
SELECT*FROM salgrade;

SELECT empno, ename,sal,job from emp;

/*여러줄 주석*/
-- 한줄 주석
-- stu_id, stu_name, sex 컬럼만 검색하기, 대소문자 구분 없음
SELECT stu_id, stu_name, sex from student;

-- 산술연산자 숫자 컬럼(열)만 할 수 있다.
SELECT empno, ename,sal,sal*12,job from emp;

-- 컬럼명 [as] 별칭 (as는 생략가능)
SELECT empno as 사원번호, ename  as 사원명,sal as 급여,sal*12 as 연봉, sal*12*0.33 as 연세금, job as 직급 from emp;
SELECT empno 사원번호, ename   사원명,sal  급여,sal*12  연봉, sal*12*0.33 연세금, job  직급 from emp;

SELECT*FROM salgrade;

-- 산술연산자 hisal 1000만원 더하기 losal+1500
SELECT grade, hisal, hisal+1000, losal, losal+1500 FROM salgrade;

-- 별칭 붙이기 = 등급, 최저금액, 인상최저금액, 최대금액, 인상최대금액
SELECT grade 등급, hisal 최저금액, hisal+1000 인상최저금액, losal 최대금액, losal+1500 인상최대금액 FROM salgrade;

-- null이란? 0,빈공간도 아닌 미확정 알수없는 의미, 어떤값인지 아직모르니 연산을 할 수 없다
SELECT*FROM emp;

-- comm 보너스를 100만원씩 지급하겠다 / " 보 너 스 "
SELECT comm, comm+100 FROM emp; -- null 컬럼은 연산이 되지 않고 null로 나타난다
SELECT comm, nvl(comm,0) +100 "보 너 스" from emp; -- nvl(comm,0) null이면 0으로 아니면 comm 값으로

-- 문자열 연결 || '  ' ||
SELECT ename || '의 직급은' || job || '입니다' 직급 FROM emp;

SELECT*FROM student;
-- 문종헌의 나이는 24살입니다
SELECT stu_name ||'의 나이는' || age ||'입니다' 나이 FROM student;

-- 전체 코스는 무엇입니까? 중복 제거하기
SELECT DISTINCT cou_id FROM student;

SELECT*FROM emp;
-- 부서명종류는 (중복제거하기)
SELECT DISTINCT deptno FROM emp;

-- 부서명이 20인 사원들 보기
SELECT * from emp WHERE deptno = 20;

-- job 사원만 보기
SELECT * FROM emp WHERE job = '사원';

-- 사원이거나 과장이거나
SELECT * FROM emp WHERE job = '사원' or job = '과장';

-- 급여가 400이상인 넘는 사람의 번호,이름,급여 보기
SELECT empno 사원번호, ename 이름, sal 급여 from emp where sal>=400;

-- sal 400이상이고 부장인 사람의 사용번호, 이름, 직급, 급여 보기
SELECT empno 사원번호, ename 이름,job 직급, sal 급여 from emp where sal>=400 or job='부장';

-- 입사일 2005/1/1 이전에 입사한사람
SELECT * FROM emp WHERE hiredate < '05/01/01';

-- 입사일 2005/1/1 이후에 입사한사람
SELECT * from emp WHERE hiredate > '05/01/01';

-- 입사일 2006/01/01 ~ 2007/12/31 사이에 입사한사람
SELECT * from emp where '06/01/01' <= hiredate and hiredate <= '07/12/31';

-- 김씨 성을 가진 사람만
select * from emp where ename like'이%'; -- like 유사하다

-- 이씨성 또는 최씨성
SELECT * FROM emp WHERE ename like '이%' or ename like'오%';

-- 이씨 성이 아닌사람
select * from emp where not ename like'이%'; -- like 유사하다

-- 이름의 중간글씨가 '동'인사람
select * from emp where ename like'%동%'; -- %는 임의의 글자

-- in : ~안에
--job 사원이거나 과장이거나 부장인 사람 출력하기
SELECT * FROM emp WHERE job = '사원' or job = '과장' or job = '부장';
SELECT * FROM emp WHERE job in ('사원','과장','부장');

-- 컬럼명 between 시작수 and 끝수  시작수 ~ 끝수사이
-- 300 <= sal <= 600 사이인 사람 출력하기
SELECT * FROM emp WHERE sal between 300 and 600; 

-- 입사일 2006/01/01 ~ 2007/12/31 사이에 입사한사람
SELECT * from emp where hiredate BETWEEN '06/01/01'  and '07/12/31';

-- 문제
--mgr(멘토사번) 이 1010~1020사이 출력하기
SELECT * from emp where mgr BETWEEN 1010 and 1020;

-- comm이 null인사람 출력하기 ( is )
SELECT * from emp WHERE comm is null;

-- 이름 오름차순으로 출력하기
SELECT * FROM emp ORDER by ename asc; -- asc(오름차순)는 생략할 수 있다

-- 급여 내림차순으로 출력하기
SELECT * FROM emp ORDER by sal desc; -- desc(내림차순)

-- 부서 오름차순으로 출력하기
SELECT * FROM emp ORDER by deptno;

-- 부서 오름차순 만약에 동일하면 empno(사원번호) 순서대로 출력하기
SELECT * FROM emp ORDER by deptno, empno;

--job 내림차순으로 출력하기
SELECT * FROM emp ORDER by job desc;

-- 부서 오름차순 만약에 동일하면 (급여) 내림차순 순서대로 출력하기
SELECT * FROM emp ORDER by deptno, sal desc;

-- job이 과장이거나 부장인 사람의 job오름차순으로 출력하기 / 조건쓰고 정렬
SELECT * FROM emp WHERE job in ('과장','부장') ORDER by job; 

-- deptno가 10이거나 30인 사람의 mgr 오름차순 deptno 오름차순으로
SELECT * FROM emp WHERE deptno in (10,30) ORDER by mgr, deptno;

--합집합 (중복된 것 하나만 출력
SELECT * FROM GROUP_STAR
UNION
SELECT * FROM SINGLE_STAR;

--합집합 (중복된 것 모두 출력)
SELECT * FROM GROUP_STAR
UNION all
SELECT * FROM SINGLE_STAR;

--교집합
SELECT * FROM GROUP_STAR
INTERSECT
SELECT * FROM SINGLE_STAR;

--차집합 (그룹활동만 하고 있는 스타)
SELECT * FROM GROUP_STAR
MINUS
SELECT * FROM SINGLE_STAR;

--차집합 (싱글활동만 하고 있는 스타)
SELECT * FROM SINGLE_STAR
MINUS
SELECT * FROM GROUP_STAR;

--문제

-- 급여가 300이하인 사원의 사원번호,사원이름 , 급여를 출력하기
SELECT empno 사원번호, ename 이름, sal 급여 FROM emp WHERE sal < 300;

-- 이름이 오지호인 사원의 사원번호 ,사원명, 급여를 출력하기
SELECT empno 사원번호,ename 사원명, sal 급여 FROM emp WHERE ename like '오%';

-- 급여가 250이거나 300이거나 500인 사원들의 사원번호와 사원명과 급여를 출력하기
SELECT empno 사원번호,ename 사원명, sal 급여 FROM emp WHERE sal in('250', '300', '500');

-- 급여가 250도,300도,500도 아닌 사원들 출력하기
SELECT * FROM emp WHERE not sal in('250','300','500');

-- 이름이 김으로 시작하는 사람과 이름중에 기를 포함하는 가원의 사원번호와 사원이름 출력하기
SELECT empno 사원번호,ename 사원명 FROM emp WHERE ename like '김%' or ename like '%%기';

-- 상급자가 없는 사원을 출력하기
SELECT * FROM emp WHERE mgr is null;

-- 부서번호가 빠른 사원부터 출력하되 같은 부서 내의 사원을 출력할 경우 입사한지 가장 오래된 사원부터 출력하기
SELECT * FROM emp ORDER by deptno asc, hiredate asc;