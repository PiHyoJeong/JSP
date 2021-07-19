<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	if(session.getAttribute("username")==null){
		response.sendRedirect("loginForm.jsp");
	}else{
		%> <%=session.getAttribute("username") %> 님 환영합니다.
	
	<form action="logout.jsp" method="post">
		<input type="submit" value="logout">
	</form>
		 
	<%}%>
	
</body>
</html>