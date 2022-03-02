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
	width: 98%;
	height: 30px;
	border-radius: 6px;
	border: 1px solid black;
	outline: none;
}
input[type="password"]{
	width: 98%;
	height: 30px;
	border-radius: 6px;
	border: 1px solid black;
	outline: none;
}
input[type="radio"]{
	width: 20px;
	height: 20px;
}
h3{
	font-weight: bold;
	font-size: 24px;
	text-align: center;
	padding-bottom: 20px;
	border-bottom: 2px solid #cccccc;
}
.joinDiv{
	background-color: #E1E1E1;
	padding: 20px;
	padding-bottom: 10px;
	margin: 0 auto;
	width: 400px;
	border-radius: 20px;
}
.red{
	font-size: 13px;
	color: red;
}
.btn{
	width: 99%;
}
</style>
</head>
<body>
<form action="joinMember.me" method="post" name="joinForm">
	<div class="joinDiv">
		<div class="inputDiv">
			<h3>회원 가입</h3><br>
			<div>
				<div>아이디</div>
				<div><input type="text" name="id"></div>
			</div>
			<div>
				<div>비밀번호</div>
				<div><input type="password" name="pw"></div>
			</div>
			<div>
				<div>이름</div>
				<div><input type="text" name="name"></div>
			</div>
			<div>
				<div>나이 <span class="red">*반드시 숫자만 입력해주세요</span></div>
				<div><input type="text" name="age"></div>
			</div>
			<div>
				<div class="gender">성별 <input type="radio" name="gender" value="MALE" checked>남 <input type="radio" name="gender" value="FEMALE">여</div>
			</div>
		</div>
		<div class="btnDiv">
			<div class="btn" onclick="joinForm.submit();">가입하기</div>
		</div>
	</div>
</form>
</body>
</html>