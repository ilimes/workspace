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
	//request.setAttribute("id", "java");	
	
	//세션에 데이터가 저장되는 기간을 설정
	//매개변수에 정수 -> 초단위
	session.setMaxInactiveInterval(10);
	
	session.setAttribute("id", "java");
	session.setAttribute("age", 20);
	
	Member member = new Member();
	member.setId("admin");
	member.setPassword("1111");
	member.setAge(30);
	
	session.setAttribute("memberInfo", member);
	
%>
<a href="session_test2.jsp">페이지 이동</a>
</body>
</html>