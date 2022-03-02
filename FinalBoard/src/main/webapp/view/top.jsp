<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.memberDiv{
	text-align: right;
	font-weight: bold;
}
.titleDiv{
	text-align: center;
}
h1{
	font-size: 36px;
	font-weight: 700;
}
</style>
</head>
<body>
<div class="memberDiv">
	<c:choose>
		<c:when test="${not empty sessionScope.loginInfo }">
			${sessionScope.loginInfo.memName }님 환영합니다 😊 
			<a href="logout.me">Logout</a>
		</c:when>
		<c:otherwise>
			<a href="login.me">Login </a>
			<a href="join.me">Join</a>
		</c:otherwise>
	</c:choose>
</div>
<div class="titleDiv">
	<h1><a href="boardList.bo">B O A R D</a></h1>
</div>
</body>
</html>