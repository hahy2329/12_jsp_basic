<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session</title>
</head>
<body>

	<h3>카트리스트</h3>
	
	<%
		String id = (String)session.getAttribute("id"); // 반환이 object형이기에 String으로 바꿔줘야함.
		String role = (String)session.getAttribute("role");
		
	%>
	<p><%=id %>(<%=role %>)님 로그인중</p>
	
	
</body>
</html>