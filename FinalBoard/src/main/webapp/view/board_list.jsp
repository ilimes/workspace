<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
table{
	width: 800px;
	border-collapse: collapse;
}
thead{
	border-top: 2px solid #105084;
	border-bottom: 1px solid #D3D3D3;
	background-color: #F7F7F7;
	text-align: center;
	font-weight: bold;
}
tbody{
	text-align: center;
}
tbody > tr > td:nth-child(2){
	text-align: left;
}
tr, td{
	height: 40px;
	border-bottom: 1px solid #D3D3D3;
}
tbody > tr:nth-child(even){
	background-color: #E1E1E1;
}
tbody > tr:hover{
	background-color: #3276AC;
}
</style>
</head>
<body>
<div class="container">
	<div class="boardDiv">
		총 ${count }건
	</div>
	<div>
		<table>
			<colgroup>
				<col width="10%">
				<col width="*">
				<col width="10%">
				<col width="15%">
				<col width="10%">
				<col width="15%">
			</colgroup>
			<thead>
				<tr>
					<td>No</td>
					<td>제목</td>
					<td>작성자</td>
					<td>작성일</td>
					<td>조회수</td>
					<td>첨부파일</td>
				</tr>
			</thead>
			<tbody>
				<c:choose>
					<c:when test="${empty list }">
						<tr>
							<td colspan="6"><center>조회된 데이터가 없습니다.</center></td>
						</tr>
					</c:when>
					<c:otherwise>
						<c:forEach items="${list }" var="board">
							<tr>
								<td>${board.boardNum }</td>
								<td><a href="boardDetail.bo?boardNum=${board.boardNum }">${board.title }</a></td>
								<td>${board.writer }</td>
								<td>${board.createDate }</td>
								<td>${board.readCnt }</td>
								<td>${board.attachedName }</td>
							</tr>
						</c:forEach>
					</c:otherwise>
				</c:choose>
			</tbody>
		</table>
	</div>
	<div class="btnDiv">
		<c:choose>
			<c:when test="${not empty sessionScope.loginInfo }">
				<div class="btn" onclick="location.href='regBoardForm.bo';">글쓰기</div>
			</c:when>
			<c:otherwise>
				현재 로그아웃 상태입니다. 로그인 해주세요 :)
			</c:otherwise>
		</c:choose>
	</div>
</div>
</body>
</html>