<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
var result = confirm('회원가입 되었습니다. \n로그인 하시겠습니까?');

if(result){
	location.href='login.me';
}else{
	location.href='boardList.bo';
}
</script>
</head>
<body>

</body>
</html>