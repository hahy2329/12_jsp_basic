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
	
		String sendAccount = request.getParameter("sendAccount");
		int sendMoney = Integer.parseInt(request.getParameter("sendMoney"));
		
		String myAccount = request.getParameter("myAccount");
		String yourAccount = request.getParameter("yourAccount");
		int myMoney = Integer.parseInt(request.getParameter("myMoney"));
		
		
		if(sendAccount.equals(yourAccount)){
			if(sendMoney<=myMoney){
	%>	
			<h2><%=yourAccount %>계좌에 <%=sendMoney %>원을 이체 완료!</h2>
		<%
			}
			else{
		%>
			<h2><%=myAccount %>계좌에 잔액이 <%=sendMoney-myMoney %>원 만큼 부족합니다.</h2>
		<%
		
			}
		%>
			
	<%		
		}
		
		else{
	%>
	
		<h2>없는 계좌번호 입니다.</h2>
	
	<%
	
		}
	
	%>
	
	
</body>
</html>