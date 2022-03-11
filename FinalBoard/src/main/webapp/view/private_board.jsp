<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body{
text-align: center;
}
</style>
<script type="text/javascript">
	function checkPw(boardNum, boardPw){
		const inputPw = document.getElementById('password');
		if(inputPw.value == boardPw){
			location.href='boardDetail.bo?boardNum=' + boardNum;
		}
		else{
			alert('다시 입력해주세요.');
			inputPw.value = '';
			inputPw.focus();
		}
	}
</script>
</head>
<body>
<span style="font-weight: bold;">비밀글 입니다</span><br><br>
비밀번호 : <input type="password" id="password" name="password">
<input type="button" value="확인" onclick="checkPw(${board.boardNum }, ${board.boardPw });">
</body>
</html>