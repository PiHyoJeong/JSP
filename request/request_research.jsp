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
	<h2>설문조사 결과</h2>
	<%
		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
		String[] weather = request.getParameterValues("weather");
	%>
	<table>
		<tr>
			<td>이름 : <%=name %></td>
		</tr>
		<tr>
			<td>성별 : <%=gender %></td>
		</tr>
		<tr>
			<td>좋아하는 계절 : <% for(String choice : weather){%> <%=choice %> <% } %>
			</td>
		</tr>
		<tr>
			<a href="javascript:history.back();"> <input type="button"
				value="돌아가기" onclick="goBack();">
			</a>
		</tr>
	</table>
</body>
</html>