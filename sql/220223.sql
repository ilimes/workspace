-- 데이터 수정 쿼리

-- BASIC_BOARD 에서 글번호가 1번인 게시글의
-- 제목을 '변경된 제목', 내용을 '변경된 내용'
-- 으로 수정하세요.

UPDATE BASIC_BOARD 
SET 
TITLE = '변경된 제목'
, CONTENT = '변경된 내용' 
WHERE BOARD_NUM = 7;

SELECT * FROM BASIC_BOARD;

-- 학생 관리 기능
-- 학번, 이름, 나이, 국어, 영어, 수학, 총점
CREATE TABLE STU (
    STU_NUM NUMBER PRIMARY KEY
    , STU_NAME VARCHAR2(100) NOT NULL
    , STU_AGE NUMBER
    , KOR_SCORE NUMBER
    , ENG_SCORE NUMBER
    , MATH_SCORE NUMBER
    , TOTAL_SCORE NUMBER
);

SELECT STU_NUM
    , STU_NAME
    , STU_AGE
    , KOR_SCORE
    , ENG_SCORE
    , MATH_SCORE
    , TOTAL_SCORE
FROM STU;

DELETE STU;

INSERT INTO STU (
    STU_NUM
    , STU_NAME
    , STU_AGE
    , KOR_SCORE
    , ENG_SCORE
    , MATH_SCORE
    , TOTAL_SCORE
) VALUES (
    (SELECT NVL(MAX(STU_NUM), 0) + 1 FROM STU)
    , '이름3'
    , 10
    , 100
    , 100
    , 100
    , 300
);

UPDATE STU
SET 
KOR_SCORE = 99
, ENG_SCORE = 99
, MATH_SCORE = 99
, TOTAL_SCORE = 99 + 99 + 99
WHERE STU_NUM = 1;

SELECT * FROM STU;
