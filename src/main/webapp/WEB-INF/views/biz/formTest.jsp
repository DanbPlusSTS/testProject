<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form class="first" name="formGetScript" action="/formTestResult" method="get">
		본인 정보 확인<br>
	    이름 : <input type="text" class="info" name="name"><br>
	    이메일 : <input type="email" class="info" name="email"><br>
	    전화번호 : <input type="tel" class="info" name="tell"><br>
	    생년월일 : <input type="date" class="info" name="birth"><br>
	    아이디 : <input type="text" class="info" name="id"><br>
	    비밀번호 : <input type="password" class="info" name="pass"><br>
	    <input type="submit" id="submit1"> <input type="reset" id="reset1">
	</form>
	
	<br><br><br>
	
	<form class="second" name="formPostScript" action="/formTestResult" method="post">
		본인 정보 확인<br>
	    이름 : <input type="text" class="info" name="name"><br>
	    이메일 : <input type="email" class="info" name="email"><br>
	    전화번호 : <input type="tel" class="info" name="tell"><br>
	    생년월일 : <input type="date" class="info" name="birth"><br>
	    아이디 : <input type="text" class="info" name="id"><br>
	    비밀번호 : <input type="password" class="info" name="pass"><br>
	    <input type="submit" id="submit2"> <input type="reset" id="reset2">
	</form>
	
	<script type="text/javascript">
	
	</script>

</body>
</html>