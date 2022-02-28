SELECT * FROM EMP;

-- EMP테이블에서 모든 사원에 대해 사번, 사원명, 급여, 연봉
-- 연봉은 급여 * 12로 계산한다.
-- 컬럼도 사칙연산이 가능하다.
-- 연산에 NULL이 포함되어 결과는 무조건 NULL이 된다.
-- NULL이라는 것은 데이터가 없다는 뜻이다? -> X
-- NULL : 어떤 데이터가 들어올지 정해지지 않았다.
-- 컬럼명 뒤에 AS 키워드를 붙인 후 사용자 지정 컬럼명을 부여할 수 있다. -> 별칭
-- AS키워드는 생략할 수 있다.
-- 별칭을 부여할 때 띄어쓰기를 사용한다면 반드시 쌍따옴표로 별칭을 감싸야 한다.
SELECT EMPNO AS 사번, ENAME 사원명, SAL, SAL * 12 "연간 급여", SAL * 12 + COMM AS ANNY_SAL, COMM
FROM EMP;

-- 컬럼값 연결
-- || 기호로 조회 결과를 문자열처럼 연결하여 조회할 수 있다.
SELECT EMPNO, ENAME, EMPNO||'_'||ENAME AS EMP_INFO
FROM EMP;

-- 모든 사원의 부서번호를 중복 제거하여 조회
-- DISTINCT는 컬럼의 값에서 중복을 제외하고 조회가 됨.
-- 만약 컬럼이 여러개라면 여러컬럼의 모든 값이 같아야 중복으로 처리
-- 컬럼이 여러개일때 하나의 컬럼에만 DISTINCT를 주는 것은 불가능
SELECT DISTINCT DEPTNO 
FROM EMP;

-- 모든 사원의 사번과 이름, 부서번호를 조회하되, 중복된 부서번호는 한 번씩만 조회하세요...

-- 급여가 300이상 700이하인 사원들의 사번, 이름, 급여를 조회
SELECT EMPNO, ENAME, SAL 
FROM EMP
WHERE SAL >= 300 AND SAL <= 700;

SELECT EMPNO, ENAME, SAL 
FROM EMP
WHERE SAL BETWEEN 300 AND 700;

-- 급여가 300이거나 500이거나 600인 사원의 사원명과 급여를 조회
SELECT ENAME, SAL
FROM EMP
WHERE SAL = 300 OR SAL = 500 OR SAL = 600;

SELECT ENAME, SAL
FROM EMP
WHERE SAL IN (300, 500, 600);

