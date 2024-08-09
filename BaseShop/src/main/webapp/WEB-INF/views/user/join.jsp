<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>회원 가입</title>
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
	background-color: #d8c4e6;
	padding: 20px;
	border-radius: 8px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	margin: 0 auto;
}

h1 {
	color: #6a0dad;
	text-align: center;
	margin-bottom: 20px;
}

form {
	margin-bottom: 20px;
}

label {
	display: block;
	margin-bottom: 8px;
	color: #6a0dad;
}

input[type="text"], input[type="password"], input[type="datetime-local"]
	{
	width: calc(100% - 20px);
	padding: 10px;
	margin-bottom: 10px;
	border: 1px solid #aaaaaa;
	border-radius: 4px;
	box-sizing: border-box;
}

input[type="radio"] {
	margin-right: 10px;
}

input[type="submit"] {
	background-color: #6a0dad;
	color: #ffffff;
	border: none;
	padding: 12px 20px;
	font-size: 16px;
	cursor: pointer;
	border-radius: 4px;
	width: 100%;
}

input[type="submit"]:hover {
	background-color: #4f0a7d;
}

@media only screen and (max-width: 600px) {
	.container {
		padding: 10px;
	}
	input[type="text"], input[type="password"], input[type="datetime-local"]
		{
		width: 100%;
	}
}
</style>
</head>
<body>
	<div class="container">
		<script>
			// errorMessage 변수를 EL 표현식을 통해 가져옵니다.
			var errorMessage = "${errorMessage}";

			// errorMessage가 비어있지 않다면 alert 창을 띄웁니다.
			if (errorMessage) {
				alert(errorMessage);
			}
		</script>

		<h1>회원 가입</h1>

		<form action="/ex/user/insert" method="get">
			<label for="u_id">아이디</label> <input type="text" id="u_id" name="u_id"
				required><br> <label for="u_password">비밀번호</label> <input
				type="password" id="u_password" name="u_password" required><br> <label
				for="confirmpw">비밀번호 확인</label> <input type="password"
				id="confirmpw" name="confirmpw" required><br> <label
				for="u_name">이름</label> <input type="text" id="u_name" name="u_name"
				required><br> <label>성별 <input type="radio"
				name="u_gender" value="female" id="female"><label for="female" style="display: inline;">여자</label>
			<input type="radio" name="u_gender" value="male" id="male"><label
				for="male" style="display: inline;">남자</label><br><br>
				<label for="u_birthday">생일</label> <input
				type="datetime-local" id="u_birthday" name="u_birthday" required><br>

			<label for="u_email">이메일</label> <input type="text" id="u_email"
				name="u_email" required><br> <label for="u_phone">전화번호</label>
			<input type="text" id="u_phone" name="u_phone" required><br>

			<label for="u_address">주소</label> <input type="text" id="u_address"
				name="u_address" required><br> <input type="submit"
				value="가입"><br><br>
		</form>

		<form action="/ex/user/cancle" method="get">
			<input type="submit" value="취소">
		</form>
	</div>

</body>
</html>
 