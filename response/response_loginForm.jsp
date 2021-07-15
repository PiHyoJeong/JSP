<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="response_loginTest.jsp" method="post">
		<h1>로그인하기</h1>
		<label for="userId">아이디 입력 : </label>
		<input type="text" name="id"><br>
		
		<label for="userPassword">비밀번호 입력 :</label> 
		<input type = "password" name = "password"><br>
		
		<input type = "submit" value="로그인">
	</form>
</body>
</html>