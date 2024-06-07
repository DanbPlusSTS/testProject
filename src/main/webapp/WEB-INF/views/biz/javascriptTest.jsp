<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JavascriptTest</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
  
<body>

<div class="first">
	<input id="input" type="text" onkeyup="printName()"/>
	<div id="result"></div>
</div>

<br><br>

<div class="second">
	<input id="input2" type="text" onchange="printName2()"/>
	<div id="result2"></div>
</div>
<br><br>


<script type="text/javascript">
	
	function printName(){
		var inputElement = document.getElementById("input").value;
		document.getElementById("result").innerText = inputElement;
	} //자바스크립트
	/*
	function printName(){
		var inputElement = $('#input').val();
		$("#result").text(inputElement);
	} //제이쿼리
	*/
	
	
	
	function printName2(){
		var inputElement = document.getElementById("input2").value;
		document.getElementById("result2").innerText = inputElement;
	} //자바스크립트
	/*
	function printName2(){
		var inputElement = $('#input2').val();
		$("#result2").text(inputElement);
	} //제이쿼리
	*/
	
	
</script>

</body>
</html>


