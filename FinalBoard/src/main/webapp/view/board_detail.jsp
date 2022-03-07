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
.replyDiv{
	padding-top: 20px;
}
textarea{
	resize: none;
}
.replyListDiv{
	margin-top: 20px;
	line-height: 1.2em;
}
.replyListDiv tr{

}
.replyListDiv table td > div:nth-child(1){
	font-size: 14px;
	font-weight: bold;
}
.replyListDiv table td > div:nth-child(2){
	font-size: 14px;
	color: #999999;
}
.replyListDiv table td > div:nth-child(3){
	font-size: 16px;
	margin-bottom: 20px;
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
	<div class="replyDiv">
		<c:if test="${not empty sessionScope.loginInfo }">
			<div class="regReply">
				<form action="regReply.bo" method="post" name="replyForm">
					<input type="hidden" name="boardNum" value="${board.boardNum }">
					<div>
						<textarea name="content" rows="3" cols="50" placeholder="댓글을 작성해주세요."></textarea>
					</div>
					<div>
						<!-- <input type="button" value="댓글 등록"> --> 
						<div class="btn" onclick="replyForm.submit();">댓글 등록</div>
					</div>
				</form>
			</div>
		</c:if>
		<div class="replyListDiv">
			<c:forEach items="${replyList }" var="reply">
				<table>
					<colgroup>
						<col width="80%">
						<col width="*">
					</colgroup>
					<tr>
						<td>
							<div>${reply.writer }</div>
							<div>${reply.createDate }</div>
							<div>${reply.content }</div>
						</td>
						<td>
							<c:if test="${(reply.writer eq sessionScope.loginInfo.memId) or (sessionScope.loginInfo.isAdmin eq 'Y')}">
								<input type="button" value="댓글 삭제" onclick="location.href='deleteReply.bo?boardNum=${reply.boardNum }&replyNum=${reply.replyNum }';">
							</c:if>
						</td>
					</tr>
				</table>
			</c:forEach>
		</div>
	</div>
</div>
</body>
</html>