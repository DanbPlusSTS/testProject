<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ajaxJqueryTest</title>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
</head>
<body>

	<h1>AjaxJquery</h1>
	<br><br>
	GET<br>
	이름 : <input type="text" id="name1"/> <br>
	이메일 : <input type="email" id="email1"/> <br>
	<input type="button" id="sendButton1" value="보내기">
	<br/>
	<div id="resultDIV1"></div>
	
	<br><br>
	
	POST<br>
	이름 : <input type="text" id="name2"/> <br>
	이메일 : <input type="email" id="email2"/> <br>
	<input type="button" id="sendButton2" value="보내기">
	<br/>
	<div id="resultDIV2"></div>


<script type="text/javascript">
$(document).ready(function(){

	//GET방식
	$("#sendButton1").on("click", function(){	
		var name = $("#name1").val();
		var email = $("#email1").val();
		//console.log(name + " / " + email);
		$.ajax({
			url: "http://vcut.danbplus.com/data/SystemInfo.act",
			data: {"name" : name, "email" : email},
			method: "GET",
			dataType: "json",
			success : function(res){
						console.log("GET 성공!!!!!! : " + JSON.stringify(res));
						//$("#resultDIV1").html("이름 : " + res.name + "<br>이메일 : " + res.email);
					  },
			error : function(xhr){
						console.log("GET 실패ㅠㅠㅠㅠㅠ");
					}
		});
	});
	
	
	
	//POST방식
	$("#sendButton2").on("click", function(){	
		var name = $("#name2").val();
		var email = $("#email2").val();
		//console.log(name + " / " + email);
		$.ajax({
			method: "POST",
			url: "/ajaxJqueryAction2",
			data: JSON.stringify({"name" : name, "email" : email}),
			dataType: "json",
			headers : {"Content-Type" : "application/json"},
			success : function(res){
						console.log("POST 성공!!!!!!: " + JSON.stringify(res));
						//$("#resultDIV2").html("이름 : " + res.name + "<br>이메일 : " + res.email);
					  },
			error : function(xhr){
						console.log("POST 실패ㅠㅠㅠㅠㅠ");
					}
		});	
	});
	
	
	
	
	
	
	
	
	
});



</script>
</body>
</html>