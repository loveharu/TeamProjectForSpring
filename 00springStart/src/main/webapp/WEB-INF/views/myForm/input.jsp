<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>로그인</h1>
	<P>
	<form action="/ex/myForm/result" method="get">
		로그인 :<input type="text" name="id"> <input type="submit"
			value="전송">
	</form>
	</P>
	<p>Post
	<p>
</body>
</html>