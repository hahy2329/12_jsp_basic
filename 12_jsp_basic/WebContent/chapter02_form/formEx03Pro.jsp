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
		
			String me = request.getParameter("me");
			String com = request.getParameter("com");
			
					
		
		%>
		
		
		<%
			if(me.equals("가위")){
				
				out.println("com 승리!");
			}
		
			else if(me.equals("바위")){
				
				out.println("비겼다.");
			}
		
			else{
				out.println("내가 이겼다!");
			}
		
		
		%>
		



</body>
</html>