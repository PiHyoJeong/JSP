<%@page import="java.net.URLEncoder"%>
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
	String id = "worriId";
	String password = "1234";
	String name = "worriName";
	
	if(id.equals(request.getParameter("id")) && password.equals(request.getParameter("password"))){
		response.sendRedirect("response_mian.jsp?name="+URLEncoder.encode(name,"UTF-8"));
	}else{
		response.sendRedirect("response_loginForm.jsp");
	}
%>
</body>
</html>