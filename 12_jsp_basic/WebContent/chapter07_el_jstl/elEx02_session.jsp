<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>el 세션 연습</title>
</head>
<body>
	
	<%
		//String id = (String)session.getAttribute("id");
		//String name = (String)session.getAttribute("name");
	
	%>

	세션 아이디 : ${sessionScope.id } <br>
	세션 이름 : ${sessionScope.name }
</body>
</html>