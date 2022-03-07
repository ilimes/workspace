-- 게시판 최종 ver.1
-- 필요 테이블 : 게시판, 회원, 댓글
-- *게시글 테이블*
-- 글번호, 제목, 내용, 작성자, 작성일, 조회수, 비밀글여부, 게시글 비밀번호, 첨부파일명
-- *회원정보 테이블*
-- 아이디, 비번, 이름, 나이, 성별, 가입일, 관리자여부
-- *댓글 테이블*
-- 댓글번호, 내용, 작성일, 작성자, 원본 글번호

-- 외래키(Foreign Key)

-- 회원 정보 테이블
CREATE TABLE BOARD_MEMBER (
    MEM_ID VARCHAR2(100) PRIMARY KEY
    , MEM_PW VARCHAR2(100) NOT NULL
    , MEM_NAME VARCHAR2(100) NOT NULL
    , MEM_AGE NUMBER
    , GENDER VARCHAR2(20) -- FEMALE, MALE
    , JOIN_DATE DATE DEFAULT SYSDATE
    , IS_ADMIN VARCHAR2(10) -- Y, N
);

INSERT INTO BOARD_MEMBER (
    MEM_ID
    , MEM_PW
    , MEM_NAME
    , MEM_AGE
    , GENDER
    , JOIN_DATE
    , IS_ADMIN
) VALUES (
    '1234'
    , '1234'
    , '1234'
    , 12
    , '남'
    , '2011-01-01'
    , 'Y'
);

-- 게시글 테이블 생성문
CREATE TABLE BOARD (
    BOARD_NUM NUMBER PRIMARY KEY -- 1부터 1씩 증가
    , TITLE VARCHAR2(200) NOT NULL
    , CONTENT VARCHAR2(1000)    
    , WRITER VARCHAR2(100) REFERENCES BOARD_MEMBER (MEM_ID) ON DELETE CASCADE -- 부모를 지우면 자식도 같이 지워진다.
    , CREATE_DATE DATE DEFAULT SYSDATE
    , READ_CNT NUMBER DEFAULT 0
    , IS_PRIVATE VARCHAR2(10) -- Y, N
    , BOARD_PW VARCHAR2(100)
    , ATTACHED_NAME VARCHAR2(300) -- 첨부파일명
);

-- 댓글 정보 테이블
-- 댓글번호(PK), 작성자, 작성일, 내용(제목), 원본글번호
CREATE TABLE REPLY (
    REPLY_NUM NUMBER PRIMARY KEY -- 1부터 1씩 증가
    , CONTENT VARCHAR2(500) NOT NULL
    , WRITER VARCHAR2(100) REFERENCES BOARD_MEMBER (MEM_ID)
      ON DELETE CASCADE NOT NULL -- 외래키 조건, 부모 지우면 자식도 지워지게, NOT NULL 조건
    , CREATE_DATE DATE DEFAULT SYSDATE
    , BOARD_NUM NUMBER REFERENCES BOARD (BOARD_NUM) NOT NULL
);

SELECT * FROM REPLY;

INSERT INTO BOARD (
    BOARD_NUM
    , TITLE
    , CONTENT
    , WRITER
    , CREATE_DATE
    , READ_CNT
    , IS_PRIVATE
    , BOARD_PW
    , ATTACHED_NAME
) VALUES (
    1
    , '제목'
    , '내용'
    , '1234'
    , '2011-01-01'
    , 100
    , 'Y'
    , 'a123'
    , 'aaa'
);

SELECT * FROM BOARD;

SELECT NVL(MAX(BOARD_NUM), 0) FROM BOARD;

INSERT INTO BOARD_MEMBER VALUES ('admin', '1111', '관리자', 20, 'MALE', SYSDATE, 'Y');

SELECT * FROM BOARD_MEMBER;

DELETE BOARD_MEMBER;
