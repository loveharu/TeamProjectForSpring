<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f0f0f0;
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
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<h1>메인 메뉴</h1>
		<p>shop 쇼핑몰 입니다.</p>
		<form action="/" method="get">
			<input type="submit" value="상품목록">
		</form>
		<form action="ex/login" method="get">
			<input type="submit" value="로그인">
		</form>
	</div>

	</form>
</body>
</html>