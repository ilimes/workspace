<%@page import="dto.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%

	//세션 영역에 저장된 데이터를 삭제
	//session.removeAttribute("memberInfo");
	//세션에 저장된 모든 데이터를 삭제
	//session.invalidate();
	Member member = (Member)session.getAttribute("memberInfo");

%>

<%=member.getId() %><br>
<%=member.getPassword() %><br>
<%=member.getAge() %><br>
</body>
</html>