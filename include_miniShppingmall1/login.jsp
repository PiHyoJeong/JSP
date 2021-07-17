<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");

	if(id != null){
		out.print(id + "님 로그인 하셨습니다.");
	}else{
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>로그인</h1>
	<form action="./template.jsp" method="get">
	아이디 : <input type="text" name="id"/><br>
	비밀번호 : <input type="text" name="passwd"><br>
	<input type="hidden" name="page" value="login">
	<input type="submit" value="로그인"/>
	</form>
</body>
</html>
<%}%>