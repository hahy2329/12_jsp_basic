<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>출력함수</title>
</head>
<body>

<%-- 
  
		# JSP(Java Server Page)는 html태그 위에 jsp태그가 추가된 형태로 사용되어진다.
		 
	    1) 지시자(Directive) 태그        	<%@    %>
	    2) 선언자(Declration) 태그      	<%!    %> 함수 만들기 
	    3) 표현식(Expression) 태그      	<%=    %> 자바 만든 걸 뽑아내기
	    4) 스크립트릿(Scriptlet) 태그  	<%     %>	자바코드 짜기

	 --%>
	
	<!-- html주석 : 개발자도구에서 볼 수 있습니다.-->
	<%-- jsp주석  : 개발자도구에서 볼 수 없습니다.--%>


	<h3>출력함수</h3> <!-- html -->
	
	<% 
		
		//java 
		String name = "팀 버너스 리";
		System.out.println(name); //이클립스 console에 데이터 출력 
		out.println(name); // html에 데이터 출력
	
	%>
	
	<hr>
	
	이름 : name 
	<hr>
	이름 : <%= name %> <!-- html에서 자바 변수 표기 법 --> 


</body>
</html>