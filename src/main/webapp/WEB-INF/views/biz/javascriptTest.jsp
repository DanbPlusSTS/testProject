<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JavascriptTest</title>
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
	    <input type="submit" id="submit1"/>
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
		<input type="button" id="button" onclick="fruit()" value="확인"/>
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
	
		document.getElementById("submit1").onclick = function() { 
			var values = [];
			var info = document.querySelectorAll(".info");
			info.forEach(function(info) {
				values.push(info.value);
			});
			document.getElementById("result1").textContent = values.join(" / ");
		};
		
		
		
		
		
		function fruit() {
			var checkboxes = document.querySelectorAll(".fruit");
			var printButton = document.getElementById("button");
			var selectedValuesElement = document.getElementById("result2");
			var selectedValues = [];
			 // 모든 체크박스를 순회하면서, checked = true인 체크박스의 value를 리스트에 저장
			  checkboxes.forEach(function(checkbox) {
			    if (checkbox.checked) {
			      selectedValues.push(checkbox.value);
			    }
			  });

			  // 저장된 리스트를 화면에 출력
			  if (selectedValues.length > 0) {
			    selectedValuesElement.textContent = "선택된 값 : " + selectedValues.join(", ");
			  } else {
			    selectedValuesElement.textContent = "선택된 값이 없습니다.";
			  }
	    }
		
		
		
		
		function where(){
			var value = "";
			value += document.querySelector('input[name="where"]:checked').value;
			document.getElementById("result3").textContent = value; 
		}
		
	</script>

</body>
</html>


