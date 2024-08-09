<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.human.dto.ShopDto"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>상품 편집</title>
<style>
body {
	font-family: Arial, sans-serif;
	display: flex;
	flex-direction: column; /* 수직 정렬 */
	align-items: center;
	height: 100vh;
	margin: 0;
	background-color: #fff0f5; /* 딸기 테마: 연한 핑크 배경 */
}

h1 {
	text-align: center;
	color: #d4005f; /* 딸기 테마: 딸기색 텍스트 */
	margin-bottom: 20px;
}

.buttonBox {
	width: 100%; /* 화면 상단에 가로로 꽉 차게 */
	text-align: center;
	margin-bottom: 20px;
	background-color: #ff6f91; /* 딸기 테마: 딸기색 배경 */
	padding: 10px 0;
}

.buttonBox form {
	display: inline-block;
	margin-right: 10px;
}

.buttonBox input[type="submit"] {
	padding: 10px 20px;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	transition: background-color 0.3s ease; /* 배경색 변화 애니메이션 */
	background-color: #ff477e; /* 딸기 테마: 진한 딸기색 배경 */
	color: #ffffff; /* 흰색 텍스트 */
	font-size: 16px;
}

.buttonBox input[type="submit"]:hover {
	opacity: 0.8; /* 마우스 호버 시 투명도 조절 */
}

.product-container {
	display: flex;
	flex-wrap: wrap;
	justify-content: center;
	gap: 20px;
	width: 100%;
	max-width: 1200px;
	padding: 20px;
	background-color: #fff; /* 흰색 배경 */
	border-radius: 10px; /* 모서리를 둥글게 */
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* 그림자 효과 */
	margin-top: 20px;
}

.product-box {
	position: relative;
	border: 2px solid #d4005f; /* 딸기 테마: 딸기색 테두리 */
	padding: 10px;
	width: calc(30% - 40px); /* 제품 상자 너비 */
	border-radius: 10px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	background-color: #ffe6f0; /* 딸기 테마: 연한 딸기색 배경 */
	transition: transform 0.3s ease; /* 변환 애니메이션 */
	text-align: center;
	overflow: hidden; /* 내부 오버플로우 숨김 */
}

.product-box:hover {
	transform: translateY(-10px); /* 마우스 호버 시 상자 위로 이동 */
}

.product-box h2 {
	margin-top: 0;
	color: #d4005f; /* 딸기 테마: 딸기색 텍스트 */
}

.product-box p {
	margin-bottom: 10px;
	color: #333; /* 일반 텍스트 색상 */
}

.product-box img {
	max-width: 100%;
	height: auto;
	display: block;
	margin: 10px auto; /* 이미지 중앙 정렬 */
	border-radius: 5px;
}

.edit-delete {
	position: absolute;
	bottom: 10px;
	right: 10px;
	display: none; /* 초기에는 숨김 */
	z-index: 1; /* 다른 요소 위에 표시 */
}

.edit-delete form {
	display: inline-block;
	margin-right: 5px;
}

.edit-delete input[type="submit"] {
	padding: 8px 16px;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	transition: background-color 0.3s ease; /* 배경색 변화 애니메이션 */
	background-color: #007bff; /* 파란색 배경 */
	color: #ffffff; /* 흰색 텍스트 */
	font-size: 14px;
}

.edit-delete input[type="submit"]:hover {
	opacity: 0.8; /* 마우스 호버 시 투명도 조절 */
}

/* 마우스를 product-box 위에 올렸을 때 edit-delete 보이기 */
.product-box:hover .edit-delete {
	display: flex;
}

@media ( max-width : 768px) {
	.product-box {
		width: 100%; /* 화면 작을 때 한 줄에 하나씩 배치 */
	}
	.buttonBox form {
		margin-right: 0;
		margin-bottom: 10px;
	}
}
</style>
<script>
document.addEventListener("DOMContentLoaded", function() {
	const productBoxes = document.querySelectorAll(".product-box");
	productBoxes.forEach(box => {
		box.addEventListener("mouseenter", function() {
			const editDelete = box.querySelector(".edit-delete");
			editDelete.style.display = "flex";
		});
		box.addEventListener("mouseleave", function() {
			const editDelete = box.querySelector(".edit-delete");
			editDelete.style.display = "none";
		});
	});
});
</script>
</head>
<body>
	<div class="buttonBox">
		<form action="/ex/shop/selectMenu" method="get">
			<input type="hidden" value="${userId}" name="userId"> <input
				type="submit" value="상품등록" name="Btn">
		</form>
		<form action="/ex/shop/selectAll" method="get">
			<input type="hidden" value="${userId}" name="userId"> <input
				type="submit" value="상품 목록" name="btn">
		</form>
		&nbsp;&nbsp;&nbsp;&nbsp;
		<p>User: ${userId}</p>
	</div>
	<div class="product-container">
		<c:if test="${not empty dtos}">
			<c:forEach items="${dtos}" var="dto">
				<div class="product-box">
					<h2>${dto.product_name}</h2>
					<p>
						<strong>제품 ID:</strong> ${dto.product_id}
					</p>
					<p>제품 카테고리 ID: ${dto.category_id}</p>
					<p>
						<img src="${dto.product_image}" alt="상세페이지 이미지" width="300px"
							height="300px">
					</p>
					<p>
						<strong>가격:</strong> ${dto.price} 원
					</p>
					<p>
						<strong>설명:</strong>
					</p>
					<p>${dto.description}</p>
					<div class="edit-delete">
						<form action="/ex/shop/edit" method="get">
							<input type="hidden" value="${dto.product_id}" name="id">
							<input type="hidden" value="${userId}" name="userId"> <input
								type="submit" value="수정" name="Btn"> <input
								type="submit" value="삭제" name="Btn">
						</form>
						<form action="/ex/cart/insert" method="get">
							<input type="hidden" value="${userId}" name="u_id"> <input
								type="hidden" value="${dto.product_id}" name="p_id"> <input
								type="submit" value="추가" name="Btn">
						</form>
					</div>
				</div>
			</c:forEach>
		</c:if>
		<c:if test="${empty dtos}">
			<p>등록된 제품이 없습니다.</p>
		</c:if>
	</div>
</body>
</html>
