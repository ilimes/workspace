<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/reg_board_form.css" rel="stylesheet">
</head>
<body>
<form action="regBoard.bo" method="post" name="regForm" id="boardWriteForm">
	<div class="regDiv">
		<div class="inputDiv">
			<h3>게시글 등록</h3><br>
			<div>
				<div>제목</div>
				<div><input type="text" name="title" required></div>
			</div>
			<div>
				<div>내용</div>
				<div><input type="text" name="content"></div>
			</div>
			<div>
				<div>작성자</div>
				<c:choose>
					<c:when test="${not empty sessionScope.loginInfo }">
						<div><input type="text" name="writer" value="${sessionScope.loginInfo.memId }" readonly></div>
					</c:when>
					<c:otherwise>
						<div><input type="text" name="writer"></div>
					</c:otherwise>
				</c:choose>
			</div>
			<div>
				<div>비밀글 <input id="chk" name="isPrivate" type="checkbox" onclick="setPassword();" value="Y"></div>
				<div id="pwDiv"></div>
			</div>
			<%-- <div>작성일 : <input type="date" name="createDate" value="${nowDate }" readonly="readonly"></div> --%>
		</div>
		<div class="btnDiv">
			<div class="btn" onclick="regForm.submit();">등록</div>
		</div>
	</div>
</form>
<script type="text/javascript" src="javascript/reg_board.js"></script>
</body>
</html>