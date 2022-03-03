<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
		작성자 : ${board.writer }<br>
		작성일 : ${board.createDate }<br>
		제목 : <input type="text" name="title" value="${board.title }"><br>
		내용 : <input type="text" name="content" value="${board.content }"><br>
		비밀글 여부 : <input type="radio" name="isPrivate" value="N" checked="checked"> 아니오 <input type="radio" name="isPrivate" value="Y"> 예<br>
		<c:choose>
			<c:when test="">
			
			</c:when>
		</c:choose>
		첨부파일 : <input type="file">
	</div>
	<div class="btnDiv">
		<div class="btn" onclick="location.href='updateBoardForm.bo?boardNum=${board.boardNum }';">수정하기</div> 
	</div>
</div>
</body>
</html>