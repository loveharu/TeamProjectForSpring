<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 성공!</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f0f0f0;
	margin: 0;
	padding: 20px;
}

.container {
	width: 80%;
	max-width: 600px;
	background-color: #ffffff;
	padding: 20px;
	border-radius: 8px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	margin: 50px auto;
}

.header {
	display: flex;
	justify-content: space-between;
	align-items: center;
	margin-bottom: 20px;
}

.header h1 {
	color: #333333;
}

.user-info {
	text-align: right;
}

.user-info strong {
	font-weight: bold;
	color: #4CAF50;
	margin-left: 10px;
}

.success-message {
	text-align: center;
	margin-bottom: 20px;
}

.success-message strong {
	font-weight: bold;
	color: #4CAF50;
}

.button-container {
	text-align: center;
}

.button-container input[type="submit"] {
	background-color: #4CAF50;
	color: white;
	border: none;
	padding: 10px 20px;
	font-size: 16px;
	cursor: pointer;
	border-radius: 4px;
}

.button-container input[type="submit"]:hover {
	background-color: #45a049;
}
</style>
</head>
<body>
	<div class="container">
		<div class="header">
			<h1>로그인 성공!</h1>
			<div class="user-info">
				<strong>${id}</strong>님 환영합니다!
			</div>
		</div>

		

		<form action="/jdbc04/user/completeLogin.user" method="get"
			class="button-container">
			<input type="submit" value="확인">
		</form>
	</div>

</body>
</html>