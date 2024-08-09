<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
  body {
    font-family: Arial, sans-serif;
    background-color: #f0f0f0;
    margin: 0;
    padding: 20px;
    box-sizing: border-box;
    color: #333333;
  }

  .container {
    width: 100%;
    max-width: 600px;
    background-color: #dddddd;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    margin: 0 auto;
  }

  h1 {
    color: #000000;
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
  }

  input[type="submit"] {
    background-color: #000000;
    color: #ffffff;
    border: none;
    padding: 12px 20px;
    font-size: 16px;
    cursor: pointer;
    border-radius: 4px;
  }

  input[type="submit"]:hover {
    background-color: #333333;
  }

  @media only screen and (max-width: 600px) {
    .container {
      padding: 10px;
    }
  }
</style>
</head>
<body>
<div class="container">
  
  <h1>회원가입 완료 처리 페이지</h1>
  <p>${id}님 환영합니다!</p>
  
  <form action="/ex/user/goComplete" method="get">
  	<input type="hidden" value="${id}" name="id">
    <input type="submit" value="확인">
  </form>
  
</div>

</body>
</html>
</html>