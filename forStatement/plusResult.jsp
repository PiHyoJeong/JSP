<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	int number = Integer.parseInt(request.getParameter("number"));
		
	int sum = 0;
%>
			
<%=
	"sum total : from 1 to " + number + "<br>"
%>

<%
	for(int i = 1; i <= number ; i++){
		if(i<number){
			out.print(i + "+");
			sum += i;
		}else if(i==number){
			out.print(i + "=");
			sum += i;
		}
	}
			
	out.print(sum);
%>
		
		
	
 <!-- 
 
<%
 	int number2 = Integer.parseInt(request.getParameter("number"));
 	int sum2 = 0;
 
 	for(int i = 1; i <= number2 ; i++){
 		sum2 += i;
 	} 	
 %>
 <%=
 	"sum total : from 1 to " + number2 + "<br>"
 %>
 <%
 	for(int i = 1; i < number2 ; i++){
 		out.print(i + "+"); 		
 	}
 
 	out.print(number2 + "=" + sum2);
%>-->
</body>
</html>