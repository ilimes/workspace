-- 사원명에 '이'라는 글자가 들어있는 사원의 모든 정보 조회
-- 와이들카드 : %  _
-- '%' : 글자 수 상관없는 랜덤한 글자
-- '_' : 하나의 랜덤한 글자
-- '이%' : '이'로 시작하는 모든 글자.     '이응'   '이사장'   '이'
-- '%이' : '이'로 끝나는 모든 글자.
-- '%이%' : '이'가 들어간 모든 글자.
-- '이_' : '이'로 시작하는 두 글자.
-- '이__' : '이'로 시작하는 3글자.
-- '_이_' : 가운데 글자가 '이'인 3글자.
-- '_이___' : 두 번째 글자가 '이'인 5글자.
-- '__이%' : 세 번째 글자가 '인' 모든 글자.

SELECT *
FROM EMP
WHERE ENAME LIKE '%이%';

-- 이름에 '이'가 포함되지 않는 사원의 모든 정보 조회
SELECT *
FROM EMP
WHERE ENAME NOT LIKE '%이%';

-- 모든 사원의 전체 정보를 조회하되, 급여 기준 오름차순으로 정렬하여 조회
-- 오름차순 : ascending
-- 내림차순 : descending
SELECT *
FROM EMP
ORDER BY SAL ASC; -- ASC는 생략가능

SELECT *
FROM EMP
ORDER BY SAL;

-- 모든 사원의 전체 정보를 조회하되, 사번 기준 내림차순으로 정렬하여 조회
SELECT *
FROM EMP
ORDER BY EMPNO DESC;

-- 모든 사원의 전체 정보를 조회하되,
-- 먼저 부서번호 기준 내림차순으로 정렬 후, 이름 기준으로 오름차순으로 정렬
SELECT * 
FROM EMP
ORDER BY DEPTNO DESC, ENAME ASC; 

-- 문제
-- 1. EMP 테이블에서 직급을 조회하되, 중복되는 직급은 제거하여 조회.
-- 2. EMP테이블에서 부서번호가 10번이 아닌 사원들 중에 커미션은 NULL이며, 이름에 성이 '김'씨인 사원들의
--    사번, 이름, 급여, 커미션, 부서번호를 조회
-- 3. 급여가 250도 300도 500도 아닌 사원의 모든 정보 조회
-- 4. 급여가 300에서 600 사이이면서 커미션은 NULL이 아닌 사원을 조회하되,
--    직급기준 오름차순으로 정렬하여 조회
-- 5. 사원들 중 이름이 '김' 으로 시작하는 사람과 이름에 '기' 를 포함하는 사원의 사번과 이름을 조회
-- 6. 상급자가 없는 사원의 모든 정보를 조회
-- 7. 부서번호가 30번이 아닌 사원들의 사번, 이름, 급여, 연간수입을 조회
--    연간수입은 급여 * 12로 계산하고 별칭을 사용하여 컬럼명은 '연간 급여'로 나타내어라.

-- 1. EMP 테이블에서 직급을 조회하되, 중복되는 직급은 제거하여 조회.
SELECT DISTINCT JOB
FROM EMP;

-- 2. EMP테이블에서 부서번호가 10번이 아닌 사원들 중에 커미션은 NULL이며, 이름에 성이 '김'씨인 사원들의
--    사번, 이름, 급여, 커미션, 부서번호를 조회
SELECT EMPNO, ENAME, SAL, COMM, DEPTNO
FROM EMP
WHERE (DEPTNO <> 10) AND (COMM IS NULL) AND (ENAME LIKE '김__');

-- 3. 급여가 250도 300도 500도 아닌 사원의 모든 정보 조회
SELECT *
FROM EMP
WHERE SAL NOT IN(250, 300, 500);

-- 4. 급여가 300에서 600 사이이면서 커미션은 NULL이 아닌 사원을 조회하되,
--    직급기준 오름차순으로 정렬하여 조회
SELECT *
FROM EMP
WHERE (SAL >= 300 AND SAL <= 600) AND COMM IS NOT NULL
ORDER BY JOB ASC;

-- 5. 사원들 중 이름이 '김' 으로 시작하는 사람과 이름에 '기' 를 포함하는 사원의 사번과 이름을 조회
SELECT EMPNO, ENAME
FROM EMP
WHERE ENAME LIKE '김%' OR ENAME LIKE '%기%';

-- 6. 상급자가 없는 사원의 모든 정보를 조회
SELECT *
FROM EMP
WHERE MGR IS NULL;

-- 7. 부서번호가 30번이 아닌 사원들의 사번, 이름, 급여, 연간수입을 조회
--    연간수입은 급여 * 12로 계산하고 별칭을 사용하여 컬럼명은 '연간 급여'로 나타내어라.
SELECT EMPNO, ENAME, SAL, SAL * 12 "연간 급여"
FROM EMP
WHERE DEPTNO != 30;
