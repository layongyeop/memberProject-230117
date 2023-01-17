<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입 화면</title>
	<script type="text/javascript">
		function checkFun() {
			
			var f = document.user_info;
			
			if(f.userID.value.length == 0){
				alert("아이디는 필수 입력사항입니다.");
				return false;
			}
			
			if(!(f.userID.value.length >= 3 && f.userID.value.length <= 15)){
				alert("아이디는 3자리이상 15자리 이하이여야 합니다."); 
				return false;	
			}
			
			if(f.userPW.value.length == 0){
				alert("비밀번호는 필수 입력사항입니다.")
				return false;
			}
			
			if(f.userPW.value.length < 4){
				alert("비밀번호는 4자리 이상 입력해야 합니다."); 
				return false;
			}
			
			if(f.userMAIL.value.length == 0){
				alert("이메일은 필수 입력사항입니다."); 
				return false;
			}
			
			return true;
			
		}	
	
	</script>
</head>
<body>
	<form action="insertDB.jsp" method="post" name="user_info">
	
		아이디 : <br>
		<input type="text" name="userID" size="16"><br><br>
		비밀번호 : <br>
		<input type="text" name="userPW" size="16"><br><br>
		이메일 : <br>
		<input type="text" name="userMAIL" size="30"><br>
		<hr>
		<input type="reset" value="다시작성" >
		<button type="submit" onclick="return checkFun()">가입하기</button>
	</form>

</body>
</html>