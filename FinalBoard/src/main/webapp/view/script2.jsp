<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<input type="text" id="value1"><br>
<input type="text" id="value2"><br>
<input type="button" value="더하기" onclick="plus();"><br>
<input type="text" id="result">
<script type="text/javascript">
function plus(){
	//자바에서는 Integer.parseInt('10');
	//자바스크립트에서는 parseInt
	const value1 = parseInt(document.getElementById('value1').value);
	const value2 = parseInt(document.getElementById('value2').value);
	const resultInput = document.getElementById('result');
	const sum = value1 + value2;
	resultInput.value = sum;
}
</script>
</body>
</html>