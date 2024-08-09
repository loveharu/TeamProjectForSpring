<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="com.human.dto.ShopDto"%>
<%@ page session="false" %>
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

	<form action="/jdbc04/shop/productsBtn.shop" method="get">
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
		<tbody>
			<%
				ArrayList<ShopDto> dtos = (ArrayList<ShopDto>) request.getAttribute("dtos");
				if (dtos != null && !dtos.isEmpty()) {
					for (ShopDto dto : dtos) {
			%>
			<tr>
				<td><img src="<%=dto.getImg()%>" alt="상품 이미지"></td>
				<td><%=dto.getProductName()%></td>
				<td><%=dto.getPrice()%>원</td>
				<td>
					<form action="/jdbc04/shop/detail.shop" method="get">
						<input type="hidden" name="productId"
							value="<%=dto.getProductId()%>"> <input type="submit"
							value="상세정보" name="Btn">
					</form>
				</td>
			</tr>
			<%
				}
				}
			%>
		</tbody>
	</table>

</body>
</html>