<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="script/member.js"></script>
</head>
<body>
	<h2>id duplicate check</h2>
	<form action="idCheck.do" method="get" name="frm">
		id <input type="text" name="userid" value="${userid}">
		<input type="submit" value="duplicate check"><br>
		
		<c:if test="${result==1}"> 
			<script type="text/javascript">opener.document.frm.userid.value="";</script>
			${userid} is already used
		</c:if>
		<c:if test="${result==-1}">
			${userid} can use id
			<input type="button" value="use" class="cancel" onclick="idok()">
		</c:if>
	</form>
</body>
</html>