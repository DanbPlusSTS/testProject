<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ajaxJavascriptTest</title>
</head>
<body>

	<h1>AjaxJavascript</h1>
	<br><br>
	
	과목(get방식) : <input type="text" id="kwamok"></input>
	<button id="ajaxGet">확인</button>
	
	<h2><span id="subject"></span> : <span id="entry"></span>점</h2>
	
	<br><br><br><br>
	
	과목(post방식) : <input type="text" id="kwamok2"></input>
	<button id="ajaxPost">확인</button>
	
	<h2><span id="subject2"></span> : <span id="entry2"></span>점</h2>



	<script type="text/javascript">
	window.onload = function() {

		//get방식
		document.getElementById("ajaxGet").addEventListener("click", function(){
			var kwamok = document.getElementById("kwamok").value;
			//console.log("과목"+kwamok);
			var httpRequest = new XMLHttpRequest();
			httpRequest.open('GET', '/ajaxJavascriptAction?kwamok=' + kwamok, true);
			httpRequest.responseType = "json";
			httpRequest.send();
			httpRequest.onreadystatechange = function(){
				console.log("result Get : " + httpRequest.readyState);
				if (httpRequest.readyState === XMLHttpRequest.DONE) {
					if (httpRequest.status === 200) {
						for(var key in httpRequest){
							//console.log("###httpRequest key: " + key + " || value : " + httpRequest[key]);
						}
						//console.log("###httpRequest data 11: " + httpRequest);
						//console.log(httpRequest);
				    	var result = httpRequest.response;
				    	console.log("@@@ Result  : "+ result);
				    	console.log("@@@ Result Data : " + JSON.stringify(result));
				    	console.log("@@@ Result subject : " + result.subject);
				    	document.getElementById("subject").innerText = result.subject;
				        document.getElementById("entry").innerText = result.entry;
				    } else {
				    	alert('오류입니다');
				    }
			    }
			};
			
		});
		
		
		
		
		
		//post방식
		document.getElementById("ajaxPost").addEventListener("click", function(){
			var kwamokPost = document.getElementById("kwamok2").value;
			/* 입력된 데이터 Json 형식으로 변경 */
			var reqJson = new Object();
			reqJson.kwamok = kwamokPost;
			//console.log(reqJson.kwamok);
			var httpRequest = new XMLHttpRequest();
			httpRequest.open('POST', '/ajaxJavascriptAction2', true);
			httpRequest.responseType = "json";
		    httpRequest.setRequestHeader('Content-Type', 'application/json');
		    httpRequest.send(JSON.stringify(reqJson));
		    //console.log(JSON.stringify(reqJson));
			httpRequest.onreadystatechange = function(){
				if (httpRequest.readyState === XMLHttpRequest.DONE) {
					//console.log("###httpRequest data 22: " + JSON.stringify(httpRequest));
					if (httpRequest.status === 200) {
						/* for(var key in httpRequest){
							console.log("###httpRequest key: " + key + " || value : " + httpRequest[key]);
						} */
				    	var result = httpRequest.response;
						console.log("httpRequest.response : " + JSON.stringify(result));
				    	/* document.getElementById("subject2").innerText = result.subject;
				        document.getElementById("entry2").innerText = result.entry; */
				    } else {
				    	alert('오류입니다');
				    }
			    }
			};
		});
		
		
		
		
	}
		
	</script>

</body>
</html>