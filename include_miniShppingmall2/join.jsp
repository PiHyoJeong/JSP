<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String name = request.getParameter("name");

	if(name != null){
		out.print(name + "님 회원가입 완료 되었습니다.");
	}else{
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>회원가입</h1>
	
	<form action="./template.jsp" method="get">
	
		회원명 : <input type="text" name="name"><br>
		주소 : <input type="text" name="addr"><br>
		전화번호 : <input type="text" name="tel"><br>
		취미 : <input type="text" name="hobby"><br>
		<input type="hidden" name="page" value="join">
		<input type="submit" value="회원가입"/>
		
	</form>
</body>
</html>
<%}%>