<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
반갑습니다.<br>	
여기는 회원 전용 공간입니다.<br>
회원을 탈퇴하려면 버튼을 눌러주세요.<br>


	<table>
			<tr>	
				<td>
					<form action="main.jsp">	
						<input type="submit" value="메인화면">
					</form>
				</td>
				<td>
					<form action="withdraw.jsp">
						<input type="submit" value="회원 탈퇴하기">
					</form>
				</td>
			</tr>
		</table>

</body>
</html>