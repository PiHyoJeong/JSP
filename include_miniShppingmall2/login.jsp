<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
    
<%
	String id = request.getParameter("id");

	if(id == null){
	
%>

<form action="" method="post">
	<h1>로그인</h1>
	아이디 : <input type="text" name="id"/><br>
	비밀번호 : <input type="text" name="passwd"><br>
	<input type="hidden" name="page" value="login">
	<input type="submit" value="로그인"/>
	</form>
	
	
<%}else{ %>
<%=request.getParameter("id") %> 로그인하셨습니다.
<%}%>