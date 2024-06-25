<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%-- <%//자바스크립트는 post방식에서 값을 받아 올 수 없기 때문에 페이지 로드 시에 값을 가져와야한다.
request.setCharacterEncoding("utf-8"); //한글

String name = request.getParameter("name"); //직접 <body>에 자바코드로 입력 해도 됨
String email = request.getParameter("email");
String tell = request.getParameter("tell");
String birth = request.getParameter("birth");
String id = request.getParameter("id");
String pass = request.getParameter("pass");
%> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- <div>
		<h2>1</h2>
		아이디 : <%= id %><br>
		비밀번호 : <%= pass %><br>
		생년월일 : <%= birth %><br>
		이메일 : <%= email %><br>
		전화번호 : <%= tell %><br>
		<%= name %>님 안녕하세요!	
	</div>

	<br><br><br>
	
	<div>
		<h2>2</h2>
		아이디 : ${param.id }<br>
		비밀번호 : ${param.pass }<br>
		생년월일 : ${param.birth }<br>
		이메일 : ${param.email }<br>
		전화번호 : ${param.tell }<br>
		${param.name }님 안녕하세요!		
	</div> --%>



	<%
		request.setCharacterEncoding("euc-kr");
		Enumeration param = request.getParameterNames();
		while (param.hasMoreElements()){
			String name = (String)param.nextElement();
			out.println(name + ":" + request.getParameter(name) + "<br>");
		}
	%>


	<script type="text/javascript">
	
	</script>

</body>
</html>