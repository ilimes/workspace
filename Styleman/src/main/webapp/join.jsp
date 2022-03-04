<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.container{
	width: 1200px;
	margin: 0 auto;
}
.container > div > div:first-child {
	font-weight: bold;
	padding-bottom: 15px;
	
}
.form td{
	padding: 9px;
	border: 1px solid #D6D5D5;
	line-height: 150%;
}
.form{
	padding-bottom: 40px;
}
.form table{
	border: 1px solid #D6D5D5;
	border-collapse: collapse;
	width: 1200px;
	font-size: 13px;
	letter-spacing: -0.3px;
}
.form tr{
	padding: 9px;
	border: 1px solid #D6D5D5;
}
.right{
	font-size: 13px;
	letter-spacing: -0.3px;
	text-align: right;
	padding-bottom: 10px;
}
.form td:first-child {
	padding-left: 18px;
	background-color: #FAF9F9;
	width: 120px;
}
input[type="text"]{
	border: 1px solid #D5D5D5;
	height: 20px;
	margin-bottom: 3px;
}
.select{
	border: 1px solid #D5D5D5;
	width: 52px;
	height: 22px;
}
.menu input{
	vertical-align: middle;
	margin-top: 10px;
	margin-bottom: 10px;
}
</style>
</head>
<body>
<div class="container">
	<div class="form">
		<div>회원 가입</div>
		<div>
			<table>
				<tr>
					<td>회원구분 <font color="red" style="font-weight: bold;">*</font></td>
					<td>
						<input type="radio" name="isForeigner" checked>개인회원 
						<input type="radio" name="isForeigner">외국인회원(foreigner)
					</td>
				</tr>
			</table>
		</div>
	</div>
	<div class="form">
		<font style="size: 15px; font-weight: bold;">기본정보</font>
		<div class="right"><font color="red">*</font> 필수입력사항</div>
		<div>
			<table>
				<tr>
					<td>아이디 <font color="red">*</font></td>
					<td>
						<input type="text"> (영문소문자/숫자, 4~16자)
					</td>
				</tr>
				<tr>
					<td>비밀번호 <font color="red">*</font></td>
					<td>
						<input type="text"> (영문 대소문자/숫자/특수문자 중 2가지 이상 조합, 8자~16자)
					</td>
				</tr>
				<tr>
					<td>비밀번호 확인 <font color="red">*</font></td>
					<td>
						<input type="text">
					</td>
				</tr>
				<tr>
					<td>이름 <font color="red">*</font></td>
					<td>
						<input type="text">
					</td>
				</tr>
				<tr>
					<td>주소</td>
					<td>
						<div><input type="text" size="10"> <input type="button" value="우편번호"></div>
						<div><input type="text" size="40"> 기본주소</div>
						<div><input type="text" size="40"> 나머지주소 (선택입력가능)</div>
					</td>
				</tr>
				<tr>
					<td>일반전화</td>
					<td>
						<select class="select">
							<option>02</option>
						</select> -
						<input type="text" size="3"> -
						<input type="text" size="3"> 
					</td>
				</tr>
				<tr>
					<td>휴대전화 <font color="red">*</font></td>
					<td>
						<select class="select">
							<option>010</option>
						</select> -
						<input type="text" size="3"> -
						<input type="text" size="3"> 
					</td>
				</tr>
				<tr>
					<td>SMS 수신여부 <font color="red">*</font></td>
					<td>
						<div><input type="checkbox">동의함<br></div>
						<div>쇼핑몰에서 제공하는 유익한 이벤트 소식을 SMS로 받으실 수 있습니다.</div>
					</td>
				</tr>
				<tr>
					<td>이메일 <font color="red">*</font></td>
					<td>
						<input type="text">
					</td>
				</tr>
				<tr>
					<td>이메일 수신여부 <font color="red">*</font></td>
					<td>
						<div><input type="checkbox">동의함</div>
						<div>쇼핑몰에서 제공하는 유익한 이벤트 소식을 이메일로 받으실 수 있습니다.</div>
					</td>
				</tr>
				<tr>
					<td>평생회원</td>
					<td>
						<div>
							<input type="radio" name="isJoin">동의함 
							<input type="radio" name="isJoin" checked>동의안함
						</div>
						<div>- 평생회원으로 가입하시면 <span style="font-weight: bold;">스타일맨</span> 회원 탈퇴시까지는 휴면회원으로 전환되지 않으며, 고객님의 개인정보가 탈퇴시까지 안전하게 보관됩니다.</div>
						<div>- 지금 평생회원으로 가입하시면 쿠폰혜택을 드립니다. (쿠폰 혜택을 받으신 경우, 3개월간 평생회원을 유지하셔야 합니다.)</div>
					</td>
				</tr>
			</table>
		</div>
	</div>
	<div class="form">
		<div>추가정보</div>
		<div>
			<table>
				<tr>
					<td>생년월일 <font color="red">*</font></td>
					<td>
						<input type="text" size="4">년 <input type="text" size="2">월 <input type="text" size="2">일 <input type="radio" name="birthday" checked>양력 <input type="radio" name="birthday">음력 (14세 미만 회원가입을 제한하고 있습니다.)
					</td>
				</tr>
				<tr>
					<td>성별</td>
					<td>
						<input type="radio" name="gender" value="남자">남자 <input type="radio" name="gender" value="여자">여자
					</td>
				</tr>
				<tr>
					<td>상의 사이즈</td>
					<td><input type="checkbox">90-95 <input type="checkbox">100~105 <input type="checkbox">110~115 <input type="checkbox">120~125 <input type="checkbox">130~</td>
				</tr>
				<tr>
					<td>하의 사이즈</td>
					<td><input type="checkbox">~30 <input type="checkbox">32 <input type="checkbox">33 <input type="checkbox">34 <input type="checkbox">35 <input type="checkbox">36 <input type="checkbox">37 <input type="checkbox">38 <input type="checkbox">39 <input type="checkbox">40 <input type="checkbox">42~</td>
				</tr>
			</table>
		</div>
	</div>
</div>
</body>
</html>