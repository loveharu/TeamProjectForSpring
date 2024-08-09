<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page session="false" %>
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
	justify-content: center;
	align-items: center;
	height: 100vh;
	margin: 0;
	background-color: #ffffff; /* 흰색 배경 */
}

h1 {
	text-align: center;
	color: #ffffff; /* 흰색 텍스트 */
	margin-bottom: 20px;
}

.buttonBox {
	text-align: center;
	margin-bottom: 20px;
}

.buttonBox form {
	display: inline-block;
	margin-right: 10px;
}

.buttonBox input[type="submit"] {
	display: flex;
	justify-content: center;
	padding: 10px 20px;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	transition: background-color 0.3s ease; /* 배경색 변화 애니메이션 */
	background-color: #28a745; /* 녹색 배경 */
	color: #ffffff; /* 흰색 텍스트 */
	text-decoration: none; /* 링크 밑줄 제거 */
	font-size: 16px;
}

.buttonBox input[type="submit"]:hover {
	opacity: 0.8; /* 마우스 호버 시 투명도 조절 */
}

.product-container {
	position: relative;
	display: flex;
	flex-wrap: wrap;
	justify-content: center;
	gap: 20px;
	margin: 50px auto; /* 상단 여백 추가 및 중앙 정렬 */
	max-width: 1200px;
	padding: 20px;
	background-color: #fff; /* 배경색 지정 */
	border-radius: 10px; /* 모서리 둥글게 */
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* 그림자 효과 */
}

.product-box {
	position: relative;
	border: 2px solid #ffc107; /* 주황색 테두리 */
	padding: 10px;
	margin-bottom: 20px;
	width: calc(30% - 40px); /* 제품 상자 너비 */
	border-radius: 10px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	background-color: #fff3cd; /* 연한 노란색 배경 */
	transition: transform 0.3s ease; /* 변환 애니메이션 */
	text-align: center;
	overflow: hidden; /* 수정된 부분: 내부 오버플로우 숨김 */
}

.product-box:hover {
	transform: translateY(-10px); /* 마우스 호버 시 상자 위로 이동 */
}

.product-box h2 {
	margin-top: 0;
}

.product-box p {
	margin-bottom: 10px;
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
	z-index: 1; /* 수정된 부분: 다른 요소 위에 표시 */
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
	text-decoration: none; /* 링크 밑줄 제거 */
	font-size: 14px;
}

.edit-delete input[type="submit"]:hover {
	opacity: 0.8; /* 마우스 호버 시 투명도 조절 */
}

/* 수정된 부분: 마우스를 product-box 위에 올렸을 때 edit-delete 보이기 */
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
		<form action="/jdbc04/shop/productsBtn.shop" method="get">
			<input type="submit" value="상품등록" name="Btn">
		</form>

		<form action="/jdbc04/shop/products.shop" method="get">
			<input type="submit" value="상품 목록" name="btn">
		</form>
	</div>

	<div class="product-container">
		<c:if test="${not empty dtos}">
			<c:forEach items="${dtos}" var="dto">
				<div class="product-box">
					<h2>${dto.productName}</h2>
					<p>
						<strong>제품 ID:</strong> ${dto.productId}
					</p>
					<p>제품 카테고리 ID: ${dto.categoryId}</p>
					<p>
						<img src="${dto.img}" alt="상세페이지 이미지" width="300px" height="300px">
					</p>
					<p>
						<strong>가격:</strong> ${dto.price} 원
					</p>
					<p>
						<strong>설명:</strong>
					</p>
					<p>${dto.des}</p>
					<div class="edit-delete">
						<form action="/jdbc04/shop/productEdit.shop" method="get">
							<input type="hidden" value="${dto.productId}" name="id">
							<input type="submit" value="수정" name="update"> <input
								type="submit" value="삭제" name="delete">
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
