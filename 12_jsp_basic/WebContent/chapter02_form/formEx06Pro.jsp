<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>연습문제</title>
</head>
<body>
	
	<%
		request.setCharacterEncoding("utf-8");
	
		double height = Double.parseDouble(request.getParameter("height"));
		
		String withParents = request.getParameter("withParents");
		
		
		if(height >= 120.0){
			out.println("놀이기구를 이용할 수 있습니다.");
		
		
	%>
	
		<h2>놀이기구를 이용할 수 있습니다.</h2>	
		
	<%	
		}
		else if(height< 120.0){
			if(withParents.equals("yes")){
	%>
			<h2>놀이기구 이용 가능합니다.</h2>
	
	<%
			}
			else{
	%>		
			<h2>놀이기구 이용 불가합니다.</h2>	
				
	<%		
			}
		}
	%>
	
	

</body>
</html>