<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>연습문제</title>
</head>
<body>

	<!-- 
	
		# 데이터 출력
		
		- JstlEx14_정답예시 Servlet에서 pdCdList를 전달받고 데이터를 화면에 테이블 형식으로 출력해보시오.
		Ex) 
		
		    No  PdCd
			1 "0x001" 
			2 "0x002"  
			3 "0x003"  
			4 "0x004" 
			5 "0x005"  
			6 "0x006" 
			7 "0x007"	
		
	 -->
	 
	 <table border="1">
		 <c:forEach var="pdCd" items="${pdCdList }">
		 	<tr>
		 		<td>${pdCd }</td>
		 	</tr>	
		 
		 </c:forEach>
	 </table>
	 
</body>
</html>