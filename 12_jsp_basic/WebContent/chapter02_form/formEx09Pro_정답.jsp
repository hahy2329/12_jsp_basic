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
	
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		String name = request.getParameter("name");
		int age = Integer.parseInt(request.getParameter("age"));
		String sex = request.getParameter("sex");
		String[] hobby = request.getParameterValues("hobby");
		String travel = request.getParameter("travel");
		String memo = request.getParameter("memo");
	
	
	%>
	
	<fieldset>
		<p> 아이디 : <%=id %></p>
		<p> 비밀번호 : <%=passwd %></p>
		<p> 이름 : <%=name %></p>
		<p> 나이 : <%=age %>살</p>
		<p> 성별 : <%=sex %></p>
		<p> 취미 : 
			<%
				for(int i=0; i<hobby.length; i++){
			
			
			%>
		
				<%=hobby[i] %> &nbsp;
		
		
			<%
			
				}
			
			%>
		</p>
		<p> 가고 싶은 여행지 : <%=travel %></p>
		<p> 메모 : <%=memo %></p>
		
	
	
	
	
	
	</fieldset>
	
	
	
	
	
</body>
</html>