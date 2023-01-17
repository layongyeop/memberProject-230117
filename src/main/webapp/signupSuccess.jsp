<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

축하합니다!!<br>
관리자인 경우만 로그인 수행이 가능합니다.

	<table>
			<tr>	
				<td>
					<form action="login.jsp">	
						<input type="submit" value="관리자 모드 이동">
					</form>
				</td>
				<td>
					<form action="membership.jsp">
						<input type="submit" value="사용자 전용 공간 이동">
					</form>
				</td>
			</tr>
		</table>
</body>
</html>