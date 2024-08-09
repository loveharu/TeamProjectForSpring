<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="com.human.dto.ShopDto"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품목록</title>
<style>
table {
	width: 100%;
	border-collapse: collapse;
}

th, td {
	border: 1px solid black;
	padding: 8px;
	text-align: left;
}

body {
	font-family: Arial, sans-serif;
	background-color: #f7f7f7;
	margin: 0;
	padding: 20px;
	box-sizing: border-box;
	color: #333333;
}

h1 {
	color: #ff007f;
	text-align: center;
	margin-bottom: 20px;
}

p {
	text-align: center;
	font-size: 18px;
	margin-bottom: 20px;
}

form {
	text-align: center;
	margin-bottom: 20px;
}

input[type="submit"] {
	background-color: #ff007f;
	color: #ffffff;
	border: none;
	padding: 12px 20px;
	font-size: 16px;
	cursor: pointer;
	border-radius: 4px;
	margin-right: 10px;
}

input[type="submit"]:hover {
	background-color: #e60073;
}

table {
	width: 100%;
	border-collapse: collapse;
	margin-top: 20px;
}

th, td {
	border: 1px solid #dddddd;
	padding: 8px;
	text-align: left;
}

th {
	background-color: #ff007f;
	color: #ffffff;
}

img {
	max-width: 100px;
	height: auto;
	display: block;
	margin: 0 auto;
}

@media only screen and (max-width: 600px) {
	table {
		font-size: 12px;
	}
}
</style>
</head>
<body>
	<h1>상품목록</h1>
	<p>쇼핑몰 상품 목록입니다.</p>
		<h2>User : ${userId}</h2>


	<form action="/ex/shop/selectMenu" method="get">
		<input type = "hidden" value ="${userId}" name="userId">
		<input type="submit" value="상품등록" name="Btn"> <input
			type="submit" value="상품편집" name="Btn"> <input type="submit"
			value="장바구니" name="Btn">
	</form>

	<table>
		<thead>
			<tr>
				<th>이미지</th>
				<th>상품 이름</th>
				<th>가격</th>
				<th></th>
			</tr>
		</thead>

		<c:forEach items="${list }" var="shopDto">
			<tr>
				<td><img src="${shopDto.product_image}" alt="상품 이미지"></td>
				<td>${shopDto.product_name }</td>
				<td>${shopDto.price }원</td>
				<td>
					<form action="/ex/shop/product" method="get">
						<input type="hidden" name="id" value="${shopDto.product_id} ">
						<input type="submit" value="상세정보" name="Btn">
					</form>
				</td>
			</tr>
		</c:forEach>

	</table>

</body>
</html>