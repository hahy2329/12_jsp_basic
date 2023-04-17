<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session</title>
</head>
<body>
	<%
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		
		//DB에서 SELECT쿼리로 인증 작업
		
		// 세션등록 > session.setAttribute("세션명",값);
		session.setAttribute("id", id);
		session.setAttribute("role", "admin");
		
		//세션 유효기간 설정(초)
		//session.setMaxInactiveInterval(60); // 1분
		//session.setMaxInactiveInterval(60 *10); // 10분
		session.setMaxInactiveInterval(60 * 60); // 1시간
		//session.setMaxInactiveInterval(60 * 60 *24); // 1일
		
		String role="admin";
	
	
	%>
	
	<h3>로그인 되었습니다.</h3>
	<p><%=id %>(<%=role %>)님 로그인중</p>
	
	
	<hr>
	
	<p><a href="sessionEx02_03.jsp">마이페이지</a></p>
	<p><a href="sessionEx02_04.jsp">카트리스트</a></p>
	<p><a href="sessionEx02_05.jsp">로그아웃</a></p>
</body>
</html>