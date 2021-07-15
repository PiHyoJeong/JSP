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
	<%
		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
		String[] weathers = request.getParameterValues("weather");
		
		out.print("이름은 " + name + " 입니다.<br>");
		
		out.print("성별은 ");
		if(gender.equals("male")){
			out.print("남자입니다");
		}else if(gender.equals("female")){
			out.print("여자입니다.");
		}
	
		out.print("<br>좋아하는 날씨는 ");
		for(String choice : weathers){
			switch(choice){
			case "spring" : out.print("봄을 좋아합니다.");
				break;
			case "summer" : out.print("여름을 좋아합니다.");
				break;
			case "fall" : out.print("가을을 좋아합니다.");
				break;
			case "winter" : out.print("겨울을 좋아합니다.");
				break;
			}
		}			
	%>
	
	<br>
	
	<b><a href="javascript:history.go(-1)">back</a></b>
	
</body>
</html>