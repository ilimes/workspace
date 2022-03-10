-- 조인(JOIN) ★★★★★ : 여러 테이블의 데이터를 동시에 조회
SELECT * FROM EMP; -- 14
SELECT * FROM DEPT; -- 4

SELECT EMP.EMPNO, EMP.ENAME
FROM EMP;

-- 사원들의 사번, 사원명, (부서번호), 부서명을 조회
-- 조인 조건문 : 두 테이블이 동시에 지니는 컬럼의 값이 같은것만 조회.
SELECT EMPNO, ENAME, DNAME, EMP.DEPTNO
FROM EMP, DEPT
WHERE EMP.DEPTNO = DEPT.DEPTNO;

-- 경리부에 근무하는 사원의 이름과 입사일을 조회
SELECT ENAME, HIREDATE
FROM EMP, DEPT
WHERE EMP.DEPTNO = DEPT.DEPTNO 
AND DEPT.DNAME = '경리부';

-- 이문세 사원이 소속된 부서명을 조회
SELECT DNAME
FROM EMP, DEPT
WHERE EMP.DEPTNO = DEPT.DEPTNO
AND EMP.ENAME = '이문세';

SELECT * FROM BOARD;
SELECT * FROM BOARD_MEMBER;

-- 게시글의 제목, 작성일, 작성자, 관리자여부를 조회
SELECT TITLE, CREATE_DATE, WRITER, IS_ADMIN SSSS
FROM BOARD B, BOARD_MEMBER M -- 컬럼에 별칭 쓸때는 AS 사용이 가능했는데 테이블명에는 AS라는 키워드를 사용할 수 없다.
WHERE B.WRITER = M.MEM_ID; -- 조인할때는 별칭을 많이 쓰고 작업을 한다.

-- 이문세 사원이 소속된 부서명을 조회
SELECT DNAME
FROM DEPT
WHERE DEPTNO = (SELECT DEPTNO
                FROM EMP
                WHERE ENAME = '이문세');