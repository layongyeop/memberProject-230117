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
		
		String idCheck = request.getParameter("idCheck");
		
		String driverName = "com.mysql.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/webdb";
		String username = "root";
		String password = "1234";
		
		//String sql="INSERT INTO join_member(id, passwd, email) VALUES('"+userID+"','"+userPW+"','"+userMAIL+"')";
		//String sql = "INSERT INTO join_member(id, passwd, email) VALUES(?,?,?)";
		//String sql = "SELECT * FROM join_member WHERE id = '"+idCheck+"'";
		String sql = "SELECT * FROM join_member WHERE id = ?";
		Connection conn = null;//DB 연결 선언
		
		try {
			Class.forName(driverName);//드라이버 불러오기	
			
			conn = DriverManager.getConnection(url, username, password);//DB 연동
			
			//Statement stmt = conn.createStatement();
			
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, idCheck);
			ResultSet rs = pstmt.executeQuery();
			
			
			
			if(rs.next()){
				out.println("중복된 아이디입니다");
			}
			else{
				out.println("회원가입 가능한 아이디입니다");
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
	<br><hr>
	<form action="signup.jsp">
		<input type="submit" value="뒤로가기">
	</form>
	
</body>
</html>