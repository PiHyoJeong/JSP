<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="script/member.js"></script>

</head>
<body>
<h2>회원가입</h2>
'*' is a required field to be entered.
<form action = "join.do" method="post" name="frm">
	<table>
		<tr>
			<td style="size:30;">name</td>
			<td><input type="text" name="name" size="20">*</td>
		</tr>
		<tr>
			<td>id</td>
			<td>
				<input type="text" name="userid" size="20" id="userid">*
				<input type="hidden" name="reid" size="20">
				<input type="button" value="double check" onclick="idCheck()">
			</td>			
		</tr>
		<tr>
			<td>password</td>
			<td><input type="text" name="pwd" size="20">*</td>
		</tr>
		<tr height="30" >
			<td width="80">password check</td>
			<td><input type="text" name="pwd_check" size="20">*</td>
		</tr>
		<tr>
			<td>email</td>
			<td><input type="text" name="email" size="20"></td>
		</tr>
		<tr>
			<td>phone number</td>
			<td><input type="text" name="phone" size="20"></td>
		</tr>
		<tr>
			<td>grade</td>
			<td>
				<input type="radio" name="admin" value="0" checked="checked">user
				<input type="radio" name="admin" value="1">manager
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="submit" value="confirm" onclick="return joinCheck()">
				<input type="reset" value="reset">
			</td>
		</tr>
		<tr>
			<td colspan="2">${message}</td>
		</tr>
	</table>
</form> 
</body>
</html>