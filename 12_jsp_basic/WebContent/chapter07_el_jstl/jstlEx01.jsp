<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSTL 기본 문법</title>
</head>

	<%-- 
	
		# JSTL (JSP Standard Tag Library) 
		
		- JSP 개발을 단순화하기 위한 태그 library
		- jstl-x.x.jar파일을 lib폴더에 넣어주고 사용한다.
		- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 태그라이브러리를 선언해주고 jstl core구문을 사용한다.  

		1) 변수 생성
		
			[형식]
		
			<c:set var="변수 이름" value="값"/>
		
			- 선언된 변수를 EL 형식 ${변수이름}으로 사용 가능하지만 스크립트 표현식으로 사용할 수 없다. 
		
		
		
		2) 변수 삭제
		
			[형식]
		
			<c:remove var="변수이름" />		
		
		
		
		3) 데이터 출력
		
			[형식]
		
			<c:out value="" />		
					
	--%>
	
<body>
	
	<h3>변수 생성, 출력, 삭제</h3>
	<c:set var="name1" value="팀 버너스리" />
	<c:out value="${name1 }"/> / ${name1 }<br>
	
	<c:set var="name2" value="Timothy John Berners Lee" /> <!-- 끝에 '/'이 기호는 꼭 필수로 써줘야함 -->
	<c:out value="${name2 }"/>/${name2 }<br>
	
	<c:remove var="name1"/>
	<!-- name1 변수 삭제 -->
	<c:out value="${name1 }"/> / ${name1 }<br>
	<c:out value="${name2 }"/>/${name2 }<br>
	
	

</body>
</html>