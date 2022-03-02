<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/login.css" rel="stylesheet">
</head>
<body>
<form action="loginMember.me" method="post" name="loginForm">
	<div class="loginDiv">
		<div class="inputDiv">
			<h3>로그인</h3><br>
			<div>
				<div>아이디</div>
				<div><input type="text" name="id" required></div>
			</div>
			<div>
				<div>비밀번호</div>
				<div><input type="password" name="pw" required></div>
			</div>
		</div>
		<div class="btnDiv">
			<div class="btn" onclick="loginForm.submit();">로그인</div>
		</div>
	</div>
</form>
</body>
</html>