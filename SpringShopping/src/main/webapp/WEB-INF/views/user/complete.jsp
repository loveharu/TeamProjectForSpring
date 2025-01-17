<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Complete Page</title>
<style>
  body {
    font-family: Arial, sans-serif;
    background-color: #f0f0f0;
    margin: 0;
    padding: 20px;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
  }

  .container {
    max-width: 600px;
    background-color: #ffffff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    text-align: center;
  }

  .container h1 {
    color: #333333;
    margin-bottom: 20px;
  }

  .container p {
    margin-bottom: 20px;
  }

  .container form {
    margin-top: 20px;
  }

  .container form input[type="submit"] {
    background-color: #4CAF50;
    color: white;
    border: none;
    padding: 10px 20px;
    font-size: 16px;
    cursor: pointer;
    border-radius: 4px;
  }

  .container form input[type="submit"]:hover {
    background-color: #45a049;
  }

  @media only screen and (max-width: 600px) {
    .container {
      width: 90%;
    }
  }
</style>
</head>
<body>
<div class="container">
  <h1>Complete Page</h1>
  
  <% 
    String msgValue = request.getParameter("msg");
    if ("0".equals(msgValue)) { %>
      <p>로그인 완료!</p>
      <form action="/jdbc04/user/index.user" method="get">
        <input type="submit" value="마이페이지로 이동">
      </form>
  <% } else if ("1".equals(msgValue)) { %>
      <p>회원가입 완료</p>
  <% } else if ("2".equals(msgValue)) { %>
      <p>회원정보 수정 완료!</p>
  <% } else { %>
      <p>컴플리트 페이지 입니다</p>
  <% } %>
  
  <form action="/jdbc04/user/main.user" method="get">
    <input type="submit" value="메인 페이지로 이동">
  </form>
</div>
</body>
</html>