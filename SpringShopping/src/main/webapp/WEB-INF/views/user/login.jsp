<%@page import="javafx.scene.control.Alert"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.error-message {
	color: red;
}

body {
	font-family: Arial, sans-serif;
	background-color: #f0f0f0;
	margin: 0;
	padding: 0;
}

.container {
	width: 80%;
	max-width: 600px;
	margin: 50px auto;
	background-color: #ffffff;
	padding: 20px;
	border-radius: 8px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

.container form label {
	display: inline-block; /* label을 인라인 블록 요소로 설정 */
	margin-bottom: 5px; /* 라벨과 체크박스 간의 간격 조정 */
}

.container h1 {
	color: #333333;
	text-align: center;
	margin-bottom: 20px;
}

.container form {
	margin-bottom: 20px;
}

.container form input[type="text"], .container form input[type="password"],
	 .container form input[type="submit"]
	{
	width: 100%;
	padding: 10px;
	margin-bottom: 10px;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}

.container form input[type="submit"] {
	background-color: #4CAF50;
	color: white;
	border: none;
	cursor: pointer;
}

.container form input[type="submit"]:hover {
	background-color: #45a049;
}

#alert {
	color: red;
	text-align: center;
	display: block;
	margin-top: 10px;
}


@media only screen and (max-width: 600px) {
	.container {
		width: 90%;
	}
}
</style>
</head>
<body>
	<div class="container">
		<h1>로그인</h1>

		<form action="/jdbc04/user/loginDB.user" method="get">
			<label for="id">아이디</label> <input type="text" id="id" name="id"><br>

			<label for="pw">비밀번호</label> <input type="password" id="pw" name="pw"><br>

			
				아이디 저장 <input type="checkbox" id="rememberId" name="rememberId"><br>
				자동 로그인&nbsp;<input type="checkbox" id="rememberUser" name="rememberUser"><br>
		

			<input type="submit" value="로그인">
		</form>

		<form action="/jdbc04/user/join.user" method="get">
			<input type="submit" value="회원가입">
		</form>

		<label id="alert"></label>
	</div>
	<%
		System.out.println(request.getAttribute("false"));
		if (request.getAttribute("false") != null) {
	%>
	<script>
		document.getElementById("alert").innerText = "로그인 실패! 정보를 다시 입력하세요.";
		document.getElementById("alert").classList.add("error-message");
	</script>
	<%
		}
	%>


</body>
</html>