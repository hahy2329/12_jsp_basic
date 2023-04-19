<%@page import="_05_bean.ProductDAO"%>
<%@page import="_05_bean.ProductBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>beanPro</title>
</head>
<body>

	<!-- 방법1  --> 
	<%
		request.setCharacterEncoding("utf-8");
		
	
		ProductBean bean1 = new ProductBean();
	
		bean1.setPdCd(request.getParameter("pdCd"));
		bean1.setPdNm(request.getParameter("pdNm"));
		bean1.setDeptCd(request.getParameter("deptCd"));
		bean1.setDeptNm(request.getParameter("deptNm"));
		bean1.setMgrCd(request.getParameter("mgrCd"));
		bean1.setMgrNm(request.getParameter("mgrNm"));
		
		//auto mapping(ProductBean이랑 변수가 맞아야 자동 매핑이됨.)
	
	%>
	
	<!-- 방법 2 -->
	<jsp:useBean id="bean2" class="_05_bean.ProductBean"> <!--_05_bean.ProductBean여기에서! bean2를 new 해올거다.  -->
		<jsp:setProperty property="pdCd" name="bean2"/>
		<jsp:setProperty property="pdNm" name="bean2"/>
		<jsp:setProperty property="deptCd" name="bean2"/>
		<jsp:setProperty property="deptNm" name="bean2"/>
		<jsp:setProperty property="mgrCd" name="bean2"/>
		<jsp:setProperty property="mgrNm" name="bean2"/>
	</jsp:useBean>
	
	
	<!-- 방법3 -->
	<!-- ProductBean bean3 = new ProductBean();  아래와 같은 말이다.-->
	<jsp:useBean id="bean3" class="_05_bean.ProductBean">
		<jsp:setProperty property="*" name="bean3"/> <!-- bean3인스턴스의 모든 파라미터(pdCd,pdNm등등() (*) --> 
	</jsp:useBean> <!-- spring의 그림자 -->
	
	
	<%
		//확인 
		ProductDAO productDAO = new ProductDAO();
		productDAO.printData(bean1);
		productDAO.printData(bean2);
		productDAO.printData(bean3);
		
	
	%>
	


</body>
</html>