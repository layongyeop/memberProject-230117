<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원탈퇴</title>

<script type="text/javascript">
	function idcheckFun() {
		if(document.drawf.drawid.value.length==0){
			alert("아이디를 입력해주세요");
			return false;
		}
		return true;
	}
	
</script>
</head>
<body>
	<form action="drawCheck.jsp" name="drawf">
		아이디 : <br>
		<input type="text" name="drawid" size="16"><br>
		<button type="submit" onclick="return idcheckFun()">회원탈퇴</button>
		
	</form>

</body>
</html>