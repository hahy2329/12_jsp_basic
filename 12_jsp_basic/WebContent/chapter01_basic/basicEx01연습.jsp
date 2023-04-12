<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>출력함수</title>
</head>
<body>


	<h3>출력함수</h3>
	
	<%
	
		String name = "팀 버너스 리";
		System.out.println(name); //이클립스 콘솔창에 출력
		out.println(name); // html에 데이터 출력 
		
		
	
	
	%>
	
	<hr>
	이름 : name
	<hr>
	이름 : <%= name %> <!-- html에서 자바 변수 표기 법 -->
	
	
	

</body>
</html>