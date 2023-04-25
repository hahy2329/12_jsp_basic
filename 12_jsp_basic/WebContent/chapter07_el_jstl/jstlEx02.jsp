<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>분기문</title>
</head>	 
<body>

	<%-- 

		1) if문
			
			<c:if test="조건식"></c:if>   
		
			- 자바의 if문 기능을 한다.
			- test값의 조건식이 true면 실행된다.
			- EL로 조건식을 사용한다.
			

			
		2)	when ~ otherwise문
		
			[형식]
		
			<c:choose> 								> 특정한 기능은 하지 않지만 문법적으로 사용해야 된다.
				<c:when test="조건식"> </c:when>		> 조건식이 참일 경우 수행된다. 조건식은 EL로 사용한다.
				<c:otherwise> </c:otherwise>  		> 조건식이 거짓일 경우 수행된다.
			</c:choose>
			
			- 자바의 if ~ else문 기능을 한다.
		
		
		
		3) 	when , when ~ otherwise문	
		
			[형식]
	
			<c:choose> 								 > 특정한 기능은 하지 않지만 문법적으로 사용해야 된다.
				<c:when test="조건식"></c:when> 	 	 > 조건식이 참일 경우 수행된다. 
				<c:when test="조건식"></c:when>								  
				<c:when test="조건식"></c:when>  
				<c:otherwise></c:otherwise>   		 
			</c:choose>
		
			- 자바의 if ~ else if문 기능을 한다.
			- 다중 택일로서 특정 구문이 실행되면 이하 구문은 실행되지 않는다.

	 --%>
	 
	 <h3>if문</h3>
	 <c:set var="grade" value="85"/> <!-- 사실상 value는 String형이지만 정수랑 비교할 땐 정수로 인식함. -->
	 <c:if test="${grade >= 90 }">
	 	<c:out value="A학점"/>
	 	
	 </c:if>
	 <c:if test="${grade>=80 }">
	 	<c:out value="B학점"/>
	 </c:if>
	 
	 <c:if test="${grade >=70 }">
	 	<c:out value="C학점"/>
	 </c:if>
	 <hr>
	 
	 <h3>2) when ~ otherwise문</h3>
	 
	 
	 <c:choose> <!-- if ~ else문  -->
		 <c:when test="${grade ge 60 }">
		 	<c:out value="합격"/>
		 </c:when>
		 <c:otherwise>
		 	<c:out value="불합격"></c:out>
		 </c:otherwise>
	 </c:choose> <!-- 여기까지가 한 세트임.. -->
	 
	 <hr>
	 
	 <h3>3) when ~ when ~ otherwise문</h3>
	 <c:choose> <!-- if ~ else if문 -->
	 	<c:when test="${grade >= 90 }">
	 		<c:out value="A학점"/>
	 	</c:when>
	 	<c:when test="${grade >= 80 }">
	 		<c:out value="B학점"/>
	 	</c:when>
	 	<c:when test="${grade >= 70 }">
	 		<c:out value="C학점"/>
	 	</c:when>
	 	<c:when test="${grade >= 60 }">
	 		<c:out value="D학점"/>
	 	</c:when>
	 	<c:otherwise>
	 		<c:out value="F학점"></c:out>
	 	</c:otherwise>
	 </c:choose>
	 
	 
	
</body>
</html>