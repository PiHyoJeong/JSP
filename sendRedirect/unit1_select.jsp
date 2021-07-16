<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form action="unit1_domain.jsp">
		<h1>검색 엔진 정보 페이지</h1>
		<h2>검색 엔진을 선택하세요</h2>
		<select name="domain">
			<option value="http://www.google.com">google</option>
			<option value="http://www.naver.com">naver</option>
			<option value="http://www.daum.net">daum</option>		
		</select>
		<input type="submit" value="확인">
	</form>
</body>
</html>