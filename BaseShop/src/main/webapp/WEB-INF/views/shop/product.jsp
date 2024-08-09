<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.human.dto.ShopDto"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>상품 상세 페이지</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #ffffff; /* 흰색 배경 */
	margin: 0;
	padding: 20px;
	box-sizing: border-box;
	color: #333333;
}

.product-box {
	border: 2px solid #e0e0e0; /* 연한 회색 테두리 */
	padding: 20px;
	margin-bottom: 20px;
	width: 400px;
	border-radius: 10px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	background-color: #f9f9f9; /* 연한 회색 배경 */
	transition: transform 0.3s ease-in-out; /* 변환 효과 */
}

.product-box:hover {
	transform: translateY(-5px); /* 호버 시 약간 위로 떠오르는 효과 */
}

.product-box h2 {
	margin-top: 0;
	color: #333333;
}

.product-box p {
	margin-bottom: 10px;
	color: #666666;
}

.product-box img {
	max-width: 100%;
	height: auto;
	display: block;
	margin: 10px 0;
	border-radius: 5px;
	box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
}
</style>
</head>

<body>
	<h1>상품 상세 페이지</h1>
	<div class="product-box">
		<h2>${dto.getProduct_name()}</h2>
		<p>
			<strong>제품 ID:</strong> ${dto.getProduct_id()}
		</p>
		<p>제품 카테고리 ID: ${dto.getCategory_id()}</p>
		<p>
			<img src="${dto.getProduct_image()}" alt="상세페이지 이미지">
		</p>
		<p>
			<strong>가격:</strong> ${dto.getPrice()} 원
		</p>
		<p>
			<strong>설명:</strong>
		</p>
		<p>${dto.getDescription()}</p>
	</div>

	<script>
		// 자바스크립트 예시: 특정 요소에 호버 효과를 주는 스크립트
		const productBox = document.querySelector('.product-box');

		productBox.addEventListener('mouseover', function() {
			this.style.transform = 'translateY(-5px)';
		});

		productBox.addEventListener('mouseout', function() {
			this.style.transform = 'translateY(0)';
		});
	</script>

</body>
</html>
