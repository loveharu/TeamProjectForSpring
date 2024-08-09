<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ page session="false" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>상품 등록 페이지</title>
<style>
body {
	font-family: Arial, sans-serif;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
	margin: 0;
	background-color: #f0f9ff; /* 연한 하늘색 배경 */
}

.form-container {
	width: 80%;
	max-width: 600px;
	padding: 20px;
	border: 1px solid #ccc;
	border-radius: 5px;
	box-sizing: border-box;
	text-align: center;
	background-color: #ffffff; /* 흰색 배경 */
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* 약한 그림자 효과 */
}

.form-container label {
	display: inline-block;
	width: 30%; /* 라벨 너비 조정 */
	text-align: left;
	margin-right: 10px;
}

.form-container input[type="file"], .form-container input[type="text"] {
	width: calc(70% - 20px); /* 입력 필드 너비 조정 */
	padding: 10px;
	margin-top: 5px;
	box-sizing: border-box;
	border: 1px solid #ccc;
	border-radius: 5px;
}

.form-container input[type="submit"] {
	width: 100%;
	padding: 10px;
	margin-top: 10px;
	border: none;
	background-color: #007bff; /* 파란색 배경 */
	color: #ffffff; /* 흰색 텍스트 */
	border-radius: 5px;
	cursor: pointer;
	transition: background-color 0.3s ease; /* 배경색 변화 애니메이션 */
}

.form-container input[type="submit"]:hover {
	background-color: #0056b3; /* 마우스 호버 시 색상 변화 */
}

.bottom-buttons {
	text-align: center;
	margin-top: 20px;
}

.bottom-buttons form {
	display: inline-block;
}

.bottom-buttons input[type="submit"] {
	padding: 10px 20px;
	margin: 0 5px;
	border: none;
	background-color: #70D2B4; /* 연한 녹색 배경 */
	color: #ffffff; /* 흰색 텍스트 */
	border-radius: 5px;
	cursor: pointer;
	transition: background-color 0.3s ease; /* 배경색 변화 애니메이션 */
}

.bottom-buttons input[type="submit"]:hover {
	background-color: #4CAF88; /* 마우스 호버 시 색상 변화 */
}
</style>
</head>
<body>

	<div class="form-container">
		<form action="/jdbc04/shop/productsAdd.shop" method="get">
			<label for="file">상품 이미지</label> <input type="file" name="file"
				id="file"><br> <label for="id">상품 코드</label> <input
				type="text" name="id" id="id"><br> <label for="name">상품
				명</label> <input type="text" name="name" id="name"><br> <label
				for="price">상품 가격</label> <input type="text" name="price" id="price"><br>
			<label for="info">상세 정보</label> <input type="text" name="info"
				id="info"><br> <label for="category">카테고리</label> <input
				type="text" name="category" id="category"><br> <input
				type="submit" value="등록" name="goList">
		</form>
		<form action="/jdbc04/shop/products.shop" method="get">
			<input type="submit" value="목록">
		</form>
	</div>

</body>
</html>
