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
	
		request.setCharacterEncoding("utf-8");
	
		int num1 = Integer.parseInt(request.getParameter("num1"));
		int num2 = Integer.parseInt(request.getParameter("num2"));
		int num3 = Integer.parseInt(request.getParameter("num3"));
		
		
		int max = num1;
		
		if(max < num2){
			max = num2;
		}
		if(max<num3){
			max = num3;
		}
		
	%>
	
	<h2>가장 큰 숫자는 <%=max %>입니다.</h2>

</body>
</html>