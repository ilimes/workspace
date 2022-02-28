-- 숫자 함수
-- 소수점 버림 함수
SELECT FLOOR(1.17) FROM DUAL;
-- 반올림 함수
SELECT 123.456, ROUND(123.456, 1), ROUND(123.456, 2) FROM DUAL;
-- 나머지를 구하는 함수 10 % 3
SELECT MOD(10, 3) FROM DUAL;

--문자와 관련된 함수
-- 대소문자 변경
SELECT 'aBcD', UPPER('aBcD'), LOWER('aBcD'), INITCAP('aBcD')
FROM DUAL;

SELECT * FROM BOARD;

-- 작성자에 'admin'이라는 글자를 포함한 작성자가 쓴글의
-- 제목, 작성자를 조회. 단 조회시 작성자의 대소문자는
-- 구분하지 않고 모든 데이터가 조회

SELECT TITLE, WRITER
FROM BOARD
WHERE UPPER(WRITER) LIKE LOWER('%admin%');

--문자열 길이 조회
SELECT 'HELLO', LENGTH('HELLO'), LENGTHB('HELLO')
        , LENGTH('안녕'), LENGTHB('안녕')
FROM DUAL;

--문자열 자르기
SELECT SUBSTR('ABCDEFG', 2, 3) FROM DUAL;

--빈 문자열 채우기
SELECT LPAD('ORACLE', 10, '#'), RPAD('ORACLE', 10, '#') FROM DUAL;

--문자 <-> 숫자
--문자 <-> 날짜
-- 숫자나 날짜를 문자로 변경 : TO_CHAR()
-- 문자를 숫자 : TO_NUMBER()
-- 문자를 날짜로 변경 : TO_DATE()
SELECT '10000', 10000, TO_NUMBER('10000'), TO_CHAR(10000) FROM DUAL;

SELECT SYSDATE 
    , TO_CHAR(SYSDATE, 'YYYY-MM-DD')
    , TO_CHAR(SYSDATE, 'YYYY.MM.DD HH24:MI:SS')
FROM DUAL;


