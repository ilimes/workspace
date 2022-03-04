<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String contentPage = "main.jsp";
	
	String paramPage = request.getParameter("contentPage");
	
	if(paramPage != null){
		contentPage = paramPage;		
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div>
	<div><jsp:include page="menu.jsp"></jsp:include></div>
	<div><jsp:include page="<%=contentPage %>"></jsp:include></div>
</div>
</body>
</html>