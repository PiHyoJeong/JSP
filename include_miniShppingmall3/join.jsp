<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%
	String name=request.getParameter("name");

	if(name==null){
		%>
		
	<form action="./template.jsp" method="post">
		<p>회원가입</p><br>
		
		아이디 : <input type="text" name="name"><br>
		주소 : <input type="text" name="addr"><br>
		생년월일 : <input type="number" name="birth"><br>
		
		<input type="hidden" name="page" value="join">
		<input type="submit" value="회원가입">
	</form>
<%
	}else{
		out.print(name+"님 회원가입 완료되었습니다.");
	}
%>