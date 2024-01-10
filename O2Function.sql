SELECT 24*60 계산 FROM dual; -- dual 오라클에서 제공하는 테이블 용도 계산용

SELECT sign(10) FROM dual;
SELECT ROund(3.456,2) FROM dual;
SELECT trunc(5354.45671, -2) FROM dual; -- 어떤 소숫점자리에서 앞으로 2칸가서 뒷부분 자르기
SELECT trunc(5354.45671, 2) FROM dual; -- 어떤 소숫점자리에서 뒤로 2칸가서 뒷부분 자르기
SELECT mod(25,4) FROM dual; -- 25 나누기 4 나머지

SELECT * FROM student;

SELECT upper(stu_email) FROM student;
SELECT lower(stu_email), initcap(stu_email), upper(stu_email) FROM student;

SELECT length('oracle'), length('오라클')FROM dual;
SELECT lengthb('oracle'), lengthb('오라클')FROM dual;

-- substr (대상,시작위치, 추출할 갯수)
SELECT substr('Weicome to Oracle', 9,2) FROM dual; -- 첫위치는 1번부터

-- 문종헌의 이메일 앞부분 추출하기
SELECT substr (stu_email, 1, 4) FROM student WHERE stu_email= '문종헌';

-- stu_id가 101~110까지 사람들 이메일 맨 뒷부분 즉 com 추출하기
SELECT substr(stu_email, -3, 3)FROM student WHERE stu_id between 101 and 110; -- -3은 뒤에서부터 3번째

--instr(대상, 찾는문자) 대상에서 찾는 문자의 위치를 숫자로 반환한다
SELECT instr('Weicome to Oracle','e') FROM dual; -- 제일 앞에부터 'e'를 찾아준다

--instr(대상, 찾는문자,시작위치) 대상에서 찾는 문자의 위치를 숫자로 반환한다
SELECT instr('Weicome to Oracle','e',3) FROM dual; -- 시작위치부터 'e'를 찾아준다

--instr(대상, 찾는문자,시작위치,몇번째발견) 대상에서 찾는 문자의 위치를 숫자로 반환한다
SELECT instr('Weicome to Oracle','e',3,2) FROM dual; -- 시작위치부터 'e'를 찾는데 2번째 발견한 것

SELECT * FROM student;

-- 모든학생의 이메일 골뱅이 추출하기
SELECT instr (stu_email ,'@') FROM student;

--모든학생의 id 구하기
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

-- 형변환함수
-- 현재시간을 구해준다
SELECT sysdate FROM dual;

SELECT sysdate, to_char(sysdate, 'YYYY-MM-dd day am hh:mi:ss')from dual;
SELECT * FROM emp;
SELECT hiredate, to_char(hiredate, 'yyy-mm-dd dy')FROM emp;

SELECT to_char(12345678, '000,000,000') FROM dual; -- 남으면 0으로 채운다
SELECT to_char(12345678, '000,000') FROM dual; -- 모자라면 #으로 채운다

SELECT to_char(12345678, '999,999,999') FROM dual; --   공백12,345,678
SELECT to_char(12345678, '999,999') FROM dual; -- 모자라면 #으로 채운다

SELECT to_char(12345678, 'L999,999,999') FROM dual; -- 통화기호12,345,678

-- to_date() 날짜형으로 바꾸기 ***
-- 오라클에서 기본 날짜형은 'mm/dd/yy'
-- to_date형식 ('문자','형식') 문자가 형식으로 바뀌어서 날짜형이 된다
-- to_date형식 (숫자,'형식') 숫자가 형식으로 바뀌어서 날짜형이 된다
SELECT * FROM emp;
--SELECT*FROM emp WHERE hiredate =20070402; 에러발생
SELECT*FROM emp WHERE hiredate =to_date (20070402, 'yyyymmdd');
SELECT*FROM emp WHERE hiredate =to_date ('20070402', 'yyyymmdd');

--오늘날짜-작년생일 구하기
SELECT trunc (sysdate -to_date( '20230213', 'yyyymmdd' ), 0)FROM dual;

select *FROM emp;
SELECT to_date('070321','yyyymmdd')-to_date('070310', 'yyymmdd') FROM dual;

-- to_number(',가 있는 숫자','형식')
SELECT to_number('20,000','99,999') - to_number('10,000','99,999') FROM dual;

SELECT '20000' - '10000' FROM dual;

-- 날짜함수
SELECT sysdate +2 FROM dual;
--어제 오늘 내일
SELECT sysdate-1 어제, sysdate 오늘, sysdate +1 내일 FROM dual;

SELECT to_char(sysdate-1, 'yyyy-mm-dd day' )어제, sysdate 오늘, sysdate +1 내일 FROM dual;

--months_between
SELECT months_between(sysdate, '2023/12/04') FROM dual;
SELECT add_months('2023/10/01',10)FROM dual;
SELECT round(to_date('20/07/17','yy/mm/dd'), 'year') FROM dual;

SELECT hiredate, trunc (hiredate,'months') from emp; --입사일의 일을 모두 01일로 고치기

select *FROM emp;

-- 근무년수,근무일수
-- 오늘날짜 - 입사일 년수 달수
SELECT ename 사원명, sysdate 현재일,hiredate 입사일, trunc (months_between(sysdate, hiredate), 0) 근무달수 FROM emp;

--년수
SELECT ename 사원명, sysdate 현재일,hiredate 입사일, trunc (months_between(sysdate, hiredate)/12, 0) 근무년수 FROM emp;

-- 출력형식 입사일 현재날짜 근속년 근속월 근속일
SELECT ename 사원명, hiredate 입사일, sysdate 현재날짜, trunc (months_between(sysdate, hiredate)/12, 0) 근무년수,
    trunc (months_between(sysdate, hiredate), 0) 근무월수,
    trunc (months_between(sysdate, hiredate), 0)*30 근무일수
FROM emp;

-- 오늘 날짜를 기준으로 최초로 도래하는 수요일 날짜는?
SELECT to_char (next_day(sysdate, '수'), 'yyyy/mm/dd')FROM dual;

SELECT last_day('24/01/01')FROM dual;

SELECT * FROM emp;
commit;

SELECT empno 사원번호,last_day(sysdate) 급여일 FROM emp;

SELECT*from emp;
SELECT comm, nvl(comm ,0) FROM emp;

SELECT * FROM emp WHERE hiredate is null;

-- 입사일이 null이면 오늘날짜로 넣어주기
SELECT hiredate, nvl(hiredate,sysdate)FROM emp WHERE hiredate is null;
SELECT hiredate, nvl(hiredate,sysdate)FROM emp;

-- 이름이 null 무명으로 job null이면 사원
SELECT empno, nvl(ename, '무명'), nvl(job,'사원') FROM emp;

SELECT*FROM emp;
SELECT ename 사원명, sal 급여, nvl2(comm, sal*12+comm, sal*12) 연봉 FROM emp;

--급여가 null자료 삽입하기
INSERT into emp values(1019,null,'대리',1003,sysdate,null,null,20);
INSERT into emp values(1020,null,'대리',1003,sysdate,null,100,20);

SELECT comm, sal, coalesce(comm,sal,0)FROM emp;

SELECT * from emp;

SELECT deptno, decode(deptno,10, '경리부', 20,'인사부','전산부') FROM emp;

SELECT*FROM student;
SELECT sex, decode(sex,'M','남자','F','여자')FROM student;

--그룹함수
SELECT count(ename) FROM emp; --20행 입력 1행 출력 그룸함수
SELECT (ename)FROM emp; -- 20행 입력 출려 단일행함수
SELECT sex, decode(sex,'M','남자','F','여자')FROM student;

SELECT sum(asl) FROM emp;
SELECT sum(asl), count(ename),avg(sal),max(sal),min(sal)FROM emp;

--보너스를 받는 사원의 수
SELECT count(comm) FROM emp;

--직위종류
SELECT count(DISTINCT job) FROM emp;

SELECT*FROM emp ORDER by deptno;

--각 부서별로 제일 높은 급여 출력하기
SELECT deptno, max(sal) from emp group by deptno ORDER by deptno;

-- job별로 제일 낮은 급여 출력
SELECT job, min(sal) FROM emp GROUP by job ORDER by job;

-- JOb별로 급여 평균 출력하기

-- 사원이거나 대리이거나 과장의 급여 합계를 구하기

-- 1단계 사원,대리,과장 출력
SELECT*FROM emp WHERE job in ('사원','대리','과장');
-- 2단계 그룹으로 지정하기
SELECT job, round(avg(sal)) FROM emp WHERE job in ('사원','대리','과장') GROUP by job;

-- 최대 급여가 700을 초과하는 부서에 대해서 최대급여와 최소급여를 구하기
-- 결과 20 1000 300
SELECT deptno, max(sal) FROM emp GROUP by deptno;

SELECT deptno, max(sal) FROM emp GROUP by deptno having max(sal) > 700;

-- 직급별로 급여의 평균이 500이상인 직급,급여 평균을 출력하기
-- 1단계
SELECT job , avg(sal) FROM emp GROUP by job;
-- 2단계
SELECT job , avg(sal) FROM emp GROUP by job having avg(sal) >= 500;
-- 평균 급여 오름차순으로 출력하기
SELECT job , avg(sal) FROM emp GROUP by job having avg(sal) >= 500 ORDER by avg(sal) asc ;

SELECT*FROM student;

-- 최대나이 구하기
SELECT max(age) FROM student;
-- 최소나이 구하기
SELECT min(age) FROM student;
-- 평균나이 구하기
SELECT avg(age) FROM student;

--남자 최대나이, 여자 최대나이
SELECT sex 나이, max(age) FROM student GROUP by sex;

--cou_id별로 평균 나이 구하기
SELECT cou_id, round(avg(age) ) FROM student GROUP by cou_id;

-- 평균나이 25살이상 구하기
SELECT cou_id, round(avg(age) ) FROM student GROUP by cou_id having avg(age) >= 25;

-- 남자만 출력
SELECT*from student WHERE sex in ('M');

-- 남자인 경우에만 평균나이 25살이상 구하기
SELECT round(avg(age)),cou_id FROM student WHERE sex in ('M') GROUP by cou_id having avg(age) >= 25 ORDER by avg(age);