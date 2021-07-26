<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="javax.naming.*" %>
<%
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	ResultSetMetaData rsmd = null;
	
	String sql = request.getParameter("input");
	
	try{
		Context init = new InitialContext();
		DataSource ds = (DataSource)init.lookup("java:comp/env/jdbc/oracleDB");
		conn = ds.getConnection();
		
		pstmt = conn.prepareStatement(sql);
		
		rs = pstmt.executeQuery();
		rsmd = rs.getMetaData();
		
		out.print("<table border = '1'>");
		
			out.print("<tr>");
			
				for(int i = 1; i <= rsmd.getColumnCount(); i++){
					out.print("<td>");
					out.print(rsmd.getColumnName(i));
					out.print("</td>");
				}
			
			out.print("</tr>");
			
			while(rs.next()){
				out.print("<tr>");
				for(int i = 1; i <= rsmd.getColumnCount() ; i++){
					out.print("<td>");
						if(rsmd.getColumnTypeName(i) == "NUMBER"){
							out.print(rs.getInt(i));
						}else if(rsmd.getColumnTypeName(i) == "VARCHAR2"){
							out.print(rs.getString(i));
						}else{
							out.print(rs.getDate(i));
						}
					out.print("</td>");
				}
				out.print("</tr>");
			}
		
		out.print("</table>");
		
		
		
	}catch(Exception e){
		
	}finally{
		
		try{
			rs.close();
			pstmt.close();
			conn.close();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html>