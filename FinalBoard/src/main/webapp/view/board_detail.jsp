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
		제목 : ${board.title }<br>
		내용 : ${board.content }<br>
		작성자 : ${board.writer }<br>
		조회수 : ${board.readCnt }<br>
		작성일 : ${board.createDate }<br>
		비밀글 여부 : ${board.isPrivate }<br>
		<c:choose>
			<c:when test="${empty board.boardPw }">
				글 비밀번호 : 데이터 없음<br>
			</c:when>
			<c:otherwise>
				글 비밀번호 : ${board.boardPw }<br>
			</c:otherwise>
		</c:choose>
		<c:choose>
			<c:when test="${empty board.attachedName }">
				첨부파일명 : 데이터 없음<br><br>
			</c:when>
			<c:otherwise>
				첨부파일명 : ${board.attachedName }<br><br>
			</c:otherwise>
		</c:choose>
	</div>
	<div class="btnDiv">
		<div class="btn" onclick="location.href='boardList.bo';">목록으로</div> 
		<!-- 해당 글의 작성자와 현재 로그인한 사람의 id가 일치.. -->
		<c:if test="${board.writer eq sessionScope.loginInfo.memId }">
			<div class="btn" onclick="location.href='updateBoardForm.bo?boardNum=${board.boardNum }';">수정</div> 
		</c:if>
		<!-- 해당 글의 작성자와 현재 로그인한 사람의 id가 일치.. -->
		<!-- 또는, 로그인한 사람이 관리자일 경우 -->
		<c:if test="${(board.writer eq sessionScope.loginInfo.memId) or (sessionScope.loginInfo.isAdmin eq 'Y') }">
			<div class="btn" onclick="location.href='deleteBoard.bo?boardNum=${board.boardNum }';">삭제</div>
		</c:if>
		
	</div>
</div>
</body>
</html>