<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 로그인</title>
</head>
<script type="text/javascript">
	function loginCheck() {
		if(document.login_form.id.value.length==0){
			alert("아이디를 입력해주세요");
			return false;
		}
		if(document.login_form.pw.value.length==0){
			alert("비밀번호를 입력해주세요");
			return false;
		}
		return true;
		
	}
</script>
<body>
	<form action="loginSuccess.jsp" name="login_form">
		아이디 : <input type="text" size="16" name="id"><br>
		비밀번호 : <input type="password" size="16" name = "pw"><br>
		<button type="submit" onclick="return loginCheck()">로그인 </button>
	</form>
</body>
</html>