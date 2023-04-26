<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h3>세션확인 : ${sessionScope.id } </h3>
	
	<hr>
	
	<h3>리퀘스트 확인 : ${name }/ ${contact }</h3>
	<!-- 혹은 ${requestScope.name}도 가능함. -->

</body>
</html>