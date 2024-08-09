<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.human.dto.ShopDto"%>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 수정</title>
<style>
  body {
    font-family: Arial, sans-serif;
    background-color: #303030; /* 검정 배경 */
    color: #ffffff; /* 흰색 텍스트 */
    padding: 20px;
  }

  h1 {
    text-align: center;
    color: #ffffff; /* 흰색 텍스트 */
    margin-bottom: 20px;
  }

  .product-box {
    background-color: #454545; /* 회색 배경 */
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    text-align: center;
    width: 300px;
    margin: 0 auto; /* 가운데 정렬 */
  }

  .product-box img {
    width: 100%; /* 이미지를 부모 요소에 맞게 100%로 설정 */
    max-width: 200px; /* 최대 너비 설정 */
    height: auto; /* 비율 유지 */
    display: block;
    margin: 0 auto 20px; /* 이미지 중앙 정렬 */
    border-radius: 5px;
  }

  form {
    text-align: center;
  }

  form input[type="text"] {
    padding: 10px;
    margin-bottom: 10px;
    width: 80%;
    border: 1px solid #ccc; /* 회색 테두리 */
    border-radius: 5px;
    font-size: 16px;
  }

  form input[type="submit"] {
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s ease; /* 배경색 변화 애니메이션 */
    background-color: #007bff; /* 파란색 배경 */
    color: #ffffff; /* 흰색 텍스트 */
    text-decoration: none; /* 링크 밑줄 제거 */
    font-size: 16px;
    margin-right: 10px; /* 버튼 간격 조정 */
  }

  form input[type="submit"]:hover {
    opacity: 0.8; /* 마우스 호버 시 투명도 조절 */
  }
</style>
</head>
<body>

<h1>상품 수정</h1>

<div class="product-box">
    <p>
        <img src="${dto.getImg()}" alt="제품 이미지">
    </p>
    <form action="/jdbc04/shop/updateDB.shop" method="post">
        <label for="id">상품 코드</label><br><br>
        <input type="text" id="id" name="id"><br><br>
        <label for="name">상품명</label><br><br>
        <input type="text" id="name" name="name"><br><br>
        <label for="price">가격</label><br><br>
        <input type="text" id="price" name="price"><br><br>
        <label for="des">상세 정보</label><br><br>
        <input type="text" id="des" name="des"><br><br>
        <label for="category">카테고리 번호</label><br><br>
        <input type="text" id="category" name="category"><br><br><br><br>
        <input type="submit" value="목록" name="goList">
        <input type="submit" value="수정" name="update">
    </form>
</div>

</body>
</html>
