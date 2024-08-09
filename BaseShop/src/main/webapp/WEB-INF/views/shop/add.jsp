<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
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
	background-color: #fff0f5; /* 딸기 테마: 연한 핑크 배경 */
}

.form-container {
	width: 80%;
	max-width: 600px;
	padding: 20px;
	border: 1px solid #ff6f91; /* 딸기 테마: 연한 딸기색 테두리 */
	border-radius: 10px; /* 모서리를 둥글게 */
	box-sizing: border-box;
	text-align: center;
	background-color: #ffffff; /* 흰색 배경 */
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* 약한 그림자 효과 */
}

.form-container label {
	display: block; /* 라벨을 블록 요소로 변경 */
	margin: 15px 0 5px; /* 라벨과 입력 필드 간의 간격 조정 */
	color: #ff6f91; /* 딸기 테마: 딸기색 텍스트 */
}

.form-container input[type="text"], .form-container input[type="radio"]
	{
	width: calc(100% - 20px); /* 입력 필드 너비 조정 */
	padding: 10px;
	margin-top: 5px;
	margin-bottom: 15px;
	box-sizing: border-box;
	border: 1px solid #ff6f91; /* 딸기 테마: 딸기색 테두리 */
	border-radius: 5px;
}

.form-container input[type="submit"] {
	width: 100%;
	padding: 10px;
	margin-top: 10px;
	border: none;
	background-color: #ff6f91; /* 딸기 테마: 딸기색 배경 */
	color: #ffffff; /* 흰색 텍스트 */
	border-radius: 5px;
	cursor: pointer;
	transition: background-color 0.3s ease; /* 배경색 변화 애니메이션 */
}

.form-container input[type="submit"]:hover {
	background-color: #ff3e6c; /* 마우스 호버 시 색상 변화 */
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
		<form action="/ex/shop/insert" method="get">
			<label for="file"> <label for="product_id">상품 코드</label> <input
				type="text" name="product_id" id="product_id"><br> <label
				for="name">상품 명</label> <input type="text" name="product_name"
				id="product_name"><br> <label for="price">상품 가격</label>
				<input type="text" name="price" id="price"><br> <label
				for="info">상세 정보</label> <input type="text" name="description"
				id="description"><br> <label for="category">카테고리를 선택하세요</label><br>
				딸기 <input type="radio" name="category_id" id="category_id" value=1>
				음료 <input type="radio" name="category_id" id="category_id" value=2>
				마카롱 <input type="radio" name="category_id" id="category_id" value=3>
				케이크 <input type="radio" name="category_id" id="category_id" value=4>
				<input type="hidden" value="${userId}" name="userId">
				<input type="submit" value="등록" name="goList">
		</form>
		<form action="/ex/shop/selectAll" method="get">
			<input type="hidden" value="${userId}" name="userId">
			<input type="submit" value="목록">
		</form>
	</div>

</body>
</html>
