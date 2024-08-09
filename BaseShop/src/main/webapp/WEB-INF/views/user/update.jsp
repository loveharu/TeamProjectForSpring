<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>회원 정보 수정</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f0f0f0;
	margin: 0;
	padding: 20px;
	box-sizing: border-box;
}

.container {
	width: 100%;
	max-width: 600px;
	background-color: #e0e8f0;
	padding: 20px;
	border-radius: 8px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	margin: 0 auto;
}

h1 {
	color: #0066cc;
	text-align: center;
	margin-bottom: 20px;
}

form {
	margin-bottom: 20px;
}

label {
	display: block;
	margin-bottom: 8px;
	color: #333333;
}

input[type="text"], input[type="datetime-local"] {
	width: 100%;
	padding: 10px;
	margin-bottom: 10px;
	border: 1px solid #cccccc;
	border-radius: 4px;
	box-sizing: border-box;
}

input[type="radio"] {
	margin-right: 10px;
}

input[type="submit"] {
	background-color: #0066cc;
	color: #ffffff;
	border: none;
	padding: 12px 20px;
	font-size: 16px;
	cursor: pointer;
	border-radius: 4px;
	width: 100%;
}

input[type="submit"]:hover {
	background-color: #0052a3;
}

@media only screen and (max-width: 600px) {
	.container {
		padding: 10px;
	}
	input[type="submit"] {
		width: auto;
	}
}
</style>
</head>
<body>
	<div class="container">
		<h1>회원 정보 수정</h1>
		<form action="/ex/user/update" method="get">
			<div>${u_id}</div>
			<input type="hidden" value="${u_id}" name="u_id"> <label
				for="u_name">이름</label> <input type="text" id="u_name" name="u_name"
				><br> <label>성별</label> 여자&nbsp;<input
				type="radio" name="u_gender" value="female" id="female">&nbsp&nbsp
			남자 <input type="radio" name="u_gender" value="male" id="male"><br>
			<br> <label for="u_birthday">생일</label> <input
				type="datetime-local" id="u_birthday" name="u_birthday" ><br>

			<label for="u_email">이메일</label> <input type="text" id="u_email"
				name="u_email" ><br> <label for="u_phone">전화번호</label>
			<input type="text" id="u_phone" name="u_phone" ><br>

			<label for="u_address">주소</label> <input type="text" id="u_address"
				name="u_address" ><br> <input type="submit"
				value="수정" name="Btn"><br>
			<br> <input type="submit" value="탈퇴" name="Btn"
				>
		</form>


	</div>
	
</body>
</html>