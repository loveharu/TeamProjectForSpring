<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
body {
	font-family: 'Comic Sans MS', cursive, sans-serif;
	background-color: #ffebee;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
	margin: 0;
}

.container {
	width: 80%;
	max-width: 600px;
	text-align: center;
	background-color: #ffffff;
	padding: 20px;
	border-radius: 8px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

.container h1 {
	color: #333333;
	margin-bottom: 20px;
}

.container form {
	margin-bottom: 10px;
}

.container form input[type="submit"] {
	padding: 10px 20px;
	font-size: 16px;
	cursor: pointer;
	background-color: #4CAF50;
	color: white;
	border: none;
	border-radius: 4px;
	margin-right: 10px;
}

.container form input[type="submit"]:hover {
	background-color: #45a049;
}

.container form input[type="submit"]:last-child {
	margin-right: 0; /* 마지막 버튼의 오른쪽 마진 제거 */
}

.strawberry-text {
	color: #d32f2f;
	text-shadow: 2px 2px #ffab91;
	font-size: 3em;
	font-weight: bold;
	text-align: center;
	margin-top: 20%;
}

.strawberry {
	display: inline-block;
	width: 50px;
	height: 50px;
	background: radial-gradient(circle at center, #d32f2f 40%, #c2185b 60%);
	border-radius: 50% 50% 50% 50%/60% 60% 40% 40%;
	position: relative;
	margin: 0 10px;
}

.strawberry:before, .strawberry:after {
	content: '';
	position: absolute;
	top: -10px;
	left: 10px;
	width: 30px;
	height: 10px;
	background: green;
	border-radius: 10px 10px 0 0;
}

.strawberry:after {
	left: 20px;
	top: -20px;
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<div class="strawberry-text">
			<div class="strawberry"></div>
			ViVa Velvet
			<div class="strawberry"></div>
		</div>
		<form action="/ex/user/login" method="get">
			<input type="submit" value="로그인">
		</form>
	</div>

	</form>
</body>
</html>