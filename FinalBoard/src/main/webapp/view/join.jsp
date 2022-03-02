<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/join.css" rel="stylesheet">
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