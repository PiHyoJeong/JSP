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
	session.invalidate();
%>
<script type="text/javascript">
	alert("logout �Ǿ����ϴ�.");
	location.href="loginForm.jsp";
</script>
</body>
</html>