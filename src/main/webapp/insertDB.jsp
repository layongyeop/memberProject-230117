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
		
		String userID = request.getParameter("userID");
		String userPW = request.getParameter("userPW");
		String userMAIL = request.getParameter("userMAIL");

		
		String driverName = "com.mysql.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/webdb";
		String username = "root";
		String password = "1234";
		
		String sql="INSERT INTO join_member(id, passwd, email) VALUES(?,?,?)";
		
		
		Connection conn = null;//DB 연결 선언
		
		try {
			Class.forName(driverName);//드라이버 불러오기	
			
			conn = DriverManager.getConnection(url, username, password);//DB 연동
			
			PreparedStatement pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, userID);
			pstmt.setString(2, userPW);
			pstmt.setString(3, userMAIL);
			
			int dbCheck = pstmt.executeUpdate(sql);
			
			if(dbCheck ==1 ){
				response.sendRedirect("signupSuccess.jsp");
				
			}
			else {
				response.sendRedirect("signup.jsp");
			}

			pstmt.close();
	

			//System.out.println(conn);	
		} 
		catch(Exception e) {
			e.printStackTrace();
		} 
		finally {
			try {
				
				if(conn != null) {
					conn.close();
				}
			} 
			catch(Exception e) {
				e.printStackTrace();
			}
		}
	%>
		<br>
		<a href="withdraw.jsp">회원탈퇴로 가기</a>
		<br>
		<a href="memberList.jsp">회원리스트 보기</a>

</body>
</html>