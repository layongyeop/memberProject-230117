<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function modiCheck() {
		if(document.modi.uid.value.length==0){
			alert("아이디를 입력해주세요");
			return false;
		}
		if(document.modi.upw.value.length==0){
			alert("비밀번호를 입력해주세요");
			return false;
		}
		return true;
		
	}
</script>
</head>
<body>
	<form action="modifyCheck.jsp" name="modi">
		아이디 : <input type="text" name ="uid" size="16"><br>
		비밀번호 수정: <input type="password" name = "upw" size="16"><br>
		<button type="submit" onclick="return modiCheck()">정보수정</button>
	</form>

</body>
</html>