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
	<h2>설문조사</h2>
	<form action="request_research.jsp" method="post">
		<table>
			<tr>
				<td>name</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>성별</td>
				<td>여자<input type="radio" name="gender" value="male">
					남자<input type="radio" name="gender" value="female">
				</td>
			</tr>
			<tr>
				<td>좋아하는 계절</td>
				<td>봄<input type="checkbox" name="weather" value="spring">
					여름<input type="checkbox" name="weather" value="summer"> 가을<input
					type="checkbox" name="weather" value="fall" checked="checked">
					겨울<input type="checkbox" name="weather" value="winter">
				</td>
			</tr>
			<tr>
				<td align="center"><input type="submit" value="회원가입"> <input
					type="reset" value="취소"></td>
			</tr>
		</table>
	</form>
</body>
</html>