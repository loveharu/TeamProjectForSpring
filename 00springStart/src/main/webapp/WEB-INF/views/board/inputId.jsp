<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action ="/confirmId" method ="get">
	아이디 <input type="text" name="id"><br>
	비밀번호 <input type="password" name="pw"><br>
	<input type="submit" value="전송">
</form>
</body>
</html>