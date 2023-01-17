<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>	
	<%
	request.setCharacterEncoding("utf-8");
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	String driverName = "com.mysql.jdbc.Driver";
	String url = "jdbc:mysql://localhost:3306/webdb";
	String username = "root";
	String password = "1234";
	
	
	String sql = "SELECT * FROM join_member WHERE id = ?";
	Connection conn = null;//DB 연결 선언
	
	try {
		Class.forName(driverName);//드라이버 불러오기	
		
		conn = DriverManager.getConnection(url, username, password);//DB 연동
		
		//Statement stmt = conn.createStatement();
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		ResultSet rs = pstmt.executeQuery();
		
		
		while(rs.next()){
			String db_id = rs.getString("id");
			String db_pw = rs.getString("passwd");
			if(db_id.equals(id)&&db_pw.equals(pw)){
				session.setAttribute("id", id);
				session.setAttribute("pw", pw);
				
			}
				
		}
	
		
		if(rs != null){
			rs.close();
		}
		if(pstmt != null){
			pstmt.close();
		}
		if(conn != null) {
			conn.close();
		}

		//System.out.println(conn);	
	} 
	catch(Exception e) {
		e.printStackTrace();
	} 
	
	
	%>

</body>
</html>