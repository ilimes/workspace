<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
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
	width: 100%;
	height: 30px;
	border-radius: 6px;
	border: 1px solid black;
	outline: none;
}
input[type="password"]{
	width: 100%;
	height: 30px;
	border-radius: 6px;
	border: 1px solid black;
	outline: none;
}
h3{
	font-weight: bold;
	font-size: 24px;
	text-align: center;
}
.loginDiv{
	background-color: #E1E1E1;
	padding: 30px;
	margin: 0 auto;
	width: 400px;
	border-radius: 20px;
}
.red{
	font-size: 13px;
	color: red;
}
</style>
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