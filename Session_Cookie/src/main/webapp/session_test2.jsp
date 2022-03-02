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
	String id = request.getParameter("id");
	
	//세션 영역에 저장된 데이터를 받아 온다.
	//리턴 타입 Object
	String id2 = (String)session.getAttribute("id");
	int age = (int)session.getAttribute("age");
	
	//session 영역에 저장된 회원의 id 값을 가져오세요.
	Member member = (Member)session.getAttribute("memberInfo");
	String id3 = member.getId();
	
	//session 영역에 저장된 회원의 나이값을 가져오는데 코드 한줄!
	int age2 = ((Member)session.getAttribute("memberInfo")).getAge();
	
%>

아이디 : <%=id3 %><br> 
나이 :  <%=age2 %><br>

<a href="session_test3.jsp">페이지 이동</a>

</body>
</html>