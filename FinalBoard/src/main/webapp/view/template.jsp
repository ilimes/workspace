<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/reset.css" rel="stylesheet">
<style type="text/css">
.container{
	width: 800px;
	margin: 0 auto;
	margin-top: 30px;
}
.topDiv{
	margin-bottom: 30px;
}
</style>
</head>
<body>
<div class="container">
	<div class="topDiv">
		<jsp:include page="/view/top.jsp"></jsp:include>
	</div>
	<div>
		<jsp:include page="/view/${contentPage }.jsp"></jsp:include>
	</div>
</div>
</body>
</html>