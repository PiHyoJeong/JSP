<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8"); %>
    
<%
	String id = request.getParameter("id");
	if(id==null){
		%>
	<form action="" method="get">
		<p>로그인하기</p><br>
		
		아이디: <input type="text" name="id"><br>
		비밀번호: <input type="password" name="password"><br>
		
		<input type="submit" value="로그인">
	</form>
	<%
	}else{
	out.print(id + "님 로그인완료되었습니다.");
	}
%>

