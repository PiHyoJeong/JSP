<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%
	String name=request.getParameter("name");

	if(name==null){
		%>
		
	<form action="./template.jsp" method="post">
		<p>ȸ������</p><br>
		
		���̵� : <input type="text" name="name"><br>
		�ּ� : <input type="text" name="addr"><br>
		������� : <input type="number" name="birth"><br>
		
		<input type="hidden" name="page" value="join">
		<input type="submit" value="ȸ������">
	</form>
<%
	}else{
		out.print(name+"�� ȸ������ �Ϸ�Ǿ����ϴ�.");
	}
%>