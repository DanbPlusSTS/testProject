<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JqueryTest</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
  
<body>

	<div class="first">
		본인 정보 확인<br>
	    이름 : <input type="text" class="info" id="st_name"><br>
	    이메일 : <input type="email" class="info" id="st_email"><br>
	    전화번호 : <input type="tel" class="info" id="st_tell"><br>
	    생년월일 : <input type="date" class="info" id="st_birth"><br>
	    나이(연나이) : <input type="number" class="info" value="0" id="st_years"><br>
	    아이디 : <input type="text" class="info" id="st_id"><br>
	    비밀번호 : <input type="password" class="info" id="st_pass"><br>
	    <input type="submit" id="submit1">
	    <div id="result1"></div>
	</div>
	   
	<br><br>
	   
	<div class="second">
		좋아하는 과일을 고르세요<br>
	    <input type="checkbox" class="fruit" value="apple"/>사과<br>
		<input type="checkbox" class="fruit" value="strawberry"/>딸기<br>
		<input type="checkbox" class="fruit" value="lemon"/>레몬<br>
		<input type="checkbox" class="fruit" value="mango"/>망고<br>
		<input type="checkbox" class="fruit" value="melon"/>메론<br>
		  
		<button id="button" onclick="test()">확인</button>
		<div id="result2"></div>
  
	</div>
	
	<br><br>
	   
	<div class="second">
		주말에 가고싶은 곳<br>
	    <input type="radio" name="where" value="성수"/>성수<br>
		<input type="radio" name="where" value="용산"/>용산<br>
		<input type="radio" name="where" value="홍대"/>홍대<br>
		<input type="radio" name="where" value="강남"/>강남<br>
		<input type="radio" name="where" value="북촌"/>북촌<br>
		<input type="button" id="button2" onclick="where()" value="접수"/>
		<div id="result3"></div>
	</div>


<script type="text/javascript">

	
	
</script>

</body>
</html>


