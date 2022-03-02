<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.contentDiv{
	line-height: 1.6em;
}
</style>
</head>
<body>
<div class="container">
	<div class="contentDiv">
		글 번호 : ${board.boardNum }<br>
		제목 : ${board.title }<br>
		내용 : ${board.content }<br>
		작성자 : ${board.writer }<br>
		조회수 : ${board.readCnt }<br>
		작성일 : ${board.createDate }<br><br>
	</div>
	<div class="btnDiv">
		<div class="btn" onclick="location.href='boardList.bo';">뒤로가기</div> 
		<div class="btn" onclick="location.href='';">수정</div> 
		<div class="btn" onclick="location.href='deleteBoard.bo?boardNum=${board.boardNum }';">삭제</div>
	</div>
</div>
</body>
</html>