<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>연습문제</title>
</head>
<body>
	<table border="1">
		<%
			for(int i =0; i<10; i++){
				if(i%2==0){
					
				
		%>
				<tr>
					<td style ="background-color: skyblue;"><%=i %>번</td>
				</tr>
		<% 		
				}
				else{
		%>		
			<tr>
				<td style="background-color: yellow;"><%=i %>번</td>
			</tr>		
					
		<% 			
				}
				
				
			}
		
		
		%>
	
	
	
	
	
	</table>
	
</body>
</html>