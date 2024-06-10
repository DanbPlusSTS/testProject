<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>AjaxJavascript</h1>
	과목(get방식) : <input type="text" id="kwamok"></input>
	<button id="ajaxGet">확인</button>
	
	<h2><span id="subject"></span> : <span id="entry"></span>점</h2>
	
	<br><br><br><br>
	
	과목(post방식) : <input type="text" id="kwamok2"></input>
	<button id="ajaxPost">확인</button>
	
	<h2><span id="subject2"></span> : <span id="entry2"></span>점</h2>



	<script type="text/javascript">
	window.onload = function() {
		
		
		var httpRequest;
		//console.log(httpRequest);
		document.getElementById("ajaxGet").addEventListener("click", function(){
			var kwamok = document.getElementById("kwamok").value;
			//console.log(input);
			httpRequest = new XMLHttpRequest();
			//console.log(console);
			httpRequest.onreadystatechange = function(){
				//console.log(httpRequest);
				if (httpRequest.readyState === XMLHttpRequest.DONE) {
					console.log(httpRequest);
					if (httpRequest.status === 200) {
				    	var result = httpRequest.response;
				    	console.log(result);
				    } else {
				    	alert('해당 과목에 대한 점수가 없습니다');
				    }
			    }
			};
			httpRequest.open('GET', '/ajaxJavascriptTest?kwamok=' + kwamok);
			httpRequest.responseType = "json";
			httpRequest.send();
		});
		
		
		
	}
		
	</script>

</body>
</html>