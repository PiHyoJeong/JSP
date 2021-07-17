<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%
	String pagefile = request.getParameter("page");
	if(pagefile==null){
		pagefile="login";
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<table border="1" width="800px" height="800px" align="center">
	
		<tr height="20%" align="center">
			<td colspan="4">
				<jsp:include page="top.jsp"/>
			</td>
		</tr>
		
		<tr height="60%" align="center">
			<td colspan="4">
				<jsp:include page='<%=pagefile + ".jsp" %>'/>
			</td>
		</tr>
		
		<tr height="20%" align="center">
			<td colspan="4">
				<jsp:include page = "bottom.jsp"/>
			</td>
		</tr>
		
	</table>

</body>
</html>