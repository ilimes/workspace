-- 주석!!
-- 데이터베이스는 명령어에서는 대소문자를 구분하지 않는다.
-- EMP 테이블 : 사원 정보
-- DEPT : 부서 정보
-- SALGRADE : 급여 정보

-- DML 중에서 데이터 조회(SELECT)
-- 데이터 조회 문법 : 
-- SELECT 컬럼명 
-- FROM 테이블명;
-- WHERE 조건;

-- EMP테이블에서 사원의 모든 사번 정보를 조회
SELECT EMPNO FROM EMP;

-- EMP테이블에서 모든 사원의 사번과 이름을 조회

SELECT EMPNO, ENAME FROM EMP;
SELECT * FROM EMP;
SELECT * FROM DEPT;

-- 특정 조건을 만족하는 행만 조회
-- EMP테이블에서 급여가 500을 초과하는 사원의 사번, 이름, 급여를 조회
SELECT EMPNO, ENAME, SAL 
FROM EMP 
WHERE SAL > 500; -- SAL >= 500, SAL = 500, SAL != 500   500 <> 500

-- EMP테이블에서 사번이 1005번 이상인 사원들의 모든 정보를 조회

SELECT *
FROM EMP
WHERE EMPNO >= 1005;

-- EMP 테이블에서 급여가 300 이상이고 800 이하인 사원의
-- 사번, 이름, 입사일, 급여를 조회

SELECT EMPNO, ENAME, HIREDATE, SAL
FROM EMP
WHERE SAL >= 300 AND SAL <= 800;

-- EMP 테이블에서 사원의 이름이 김사랑인 사원의 사번, 이름, 부서번호를 조회
SELECT EMPNO, ENAME, DEPTNO
FROM EMP
WHERE ENAME = '김사랑'; -- 문자열은 홀따옴표로 감싼다.

-- EMP 테이블에서 커미션이 null인 사원의 모든 정보를 조회
SELECT *
FROM EMP
WHERE COMM IS null;
-- WHERE COMM IS NOT null;


--연습문제
--1. EMP 테이블에서 급여가 400이상이면서 직급은 과장인 사원의
-- 사번, 이름, 직급, 급여를 조회

SELECT EMPNO, ENAME, JOB, SAL
FROM EMP
WHERE SAL >= 400 AND JOB = '과장';

--2. EMP 테이블에서 커미션은 NULL이면서 급여는 600을 넘는 사원의
-- 사번, 이름, 급여, 커미션, 입사일 조회

SELECT EMPNO, ENAME, SAL, COMM, HIREDATE
FROM EMP
WHERE COMM IS null AND SAL >= 600;

--3. EMP 테이블에서 부서번호가 10, 20 번인 사원 중 커미션은 NULL이고
-- 급여는 300 이상이면서 500은 아닌 사원의 모든 정보 조회

SELECT *
FROM EMP
WHERE (DEPTNO = 10 OR DEPTNO = 20) AND (COMM IS null AND SAL >=300 AND SAL != 500);

--4. EMP 테이블에서 직급이 사원이거나, 대리인 사원 중에서
-- 부서번호가 30번이 아니며, 급여는 500이하인 사원의
-- 사번, 이름, 직급, 급여, 입사일을 조회

SELECT EMPNO, ENAME, JOB, SAL, HIREDATE
FROM EMP
WHERE (JOB = '사원' OR JOB = '대리') AND (DEPTNO <> 30 AND SAL <= 500);
