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
	String id = "hyojeong";
	String pwd = "1234";
	String name = "dong";
	
	if(id.equals(request.getParameter("id")) && pwd.equals(request.getParameter("pwd"))){
		session.setAttribute("username", name);
		response.sendRedirect("main.jsp");
	}else{
		%> <script>alert("비밀번호cvhk");
		location.href="loginForm.jsp";</script>
		<%
	}
%>

<script type="text/javascript">
	
</script>
</body>
</html>