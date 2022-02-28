<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
</style>
</head>
<body>
<form action="regBoard.bo" method="post">
	<div class="container">
		<div class="inputDiv">
			<div>제목 : <input type="text" name="title" required></div>
			<div>내용 : <input type="text" name="content"></div>
			<div>작성자 : <input type="text" name="writer"></div>
			<div>작성일 : <input type="date" name="createDate" value="${nowDate }"></div>
		</div>
		<div class="btnDiv">
			<input type="submit" class="btn" value="등록">	
		</div>
	</div>
</form>
</body>
</html>