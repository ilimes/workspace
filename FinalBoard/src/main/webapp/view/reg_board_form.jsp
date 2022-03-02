<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.inputDiv{
	width: 300px;
	margin: 0 auto;
	line-height: 1.8em;
}
.regDiv{
	background-color: #E1E1E1;
	padding: 20px;
	padding-bottom: 10px;
	margin: 0 auto;
	width: 400px;
	border-radius: 20px;
}
.inputDiv{
	width: 400px;
	margin: 0 auto;
	line-height: 1.8em;
}
.inputDiv div:first-child{
	font-weight: bold;
	font-style: italic;
}
input[type="text"]{
	width: 98%;
	height: 30px;
	border-radius: 6px;
	border: 1px solid black;
	outline: none;
}
h3{
	font-weight: bold;
	font-size: 24px;
	text-align: center;
	padding-bottom: 20px;
	border-bottom: 2px solid #cccccc;
}
.btn{
	width: 99%;
}
</style>
</head>
<body>
<form action="regBoard.bo" method="post" name="regForm">
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
			<%-- <div>작성일 : <input type="date" name="createDate" value="${nowDate }" readonly="readonly"></div> --%>
		</div>
		<div class="btnDiv">
			<div class="btn" onclick="regForm.submit();">등록</div>
		</div>
	</div>
</form>
</body>
</html>